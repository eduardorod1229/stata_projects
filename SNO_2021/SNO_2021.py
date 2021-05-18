
## Load the necessary libraries

#!pip install pandas
#!pip install seaborn
#!pip install PyCap
from io import StringIO
from urllib.request import urlretrieve
import urllib
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import json
import redcap
from redcap import Project
from collections import Counter
import statistics
import numpy as np
from statistics import mode
import requests
%load_ext rpy2

## Setting up the main data pull process

api_url = 'https://redcap.ucsf.edu/api/'

#Remember to Include the API key
api_key = ''
project = Project(api_url,api_key, verify_ssl=True)
project.export_records(filter_logic='[3_mo_arm_1][eortcquality_of_life_complete]=2')
pd.options.display.max_columns=999
pd.options.display.max_rows=100

#set up the fields of interest for baseline

fields_bl = ['record_id','tod','age', 'sex','cbduse','currentuse','last_cdb','lenght','freqcbd','reascbd','other_use','cbdmedical',
             'oth_sym','desc1','overallsym_scorebe','overallsym_scoreaf','moduse','cbd_oth','know_strain','strain','cbd_thc','cbd_ratio','recommcbd',
             'recom_oth','obtain','eq5d_mb_5l_usa_eng','eq5d_sc_5l_usa_eng', 'eq5d_ua_5l_usa_eng','eq5d_pd_5l_usa_eng', 
             'eq5d_ad_5l_usa_eng','eq5d5l_vas2_usa_eng', 'in_pt','dob_qol','tod','c30_1','c30_2','c30_3','c30_4','c30_5','c30_6','c30_7','c30_8','c30_9','c30_10',
             'c30_11','c30_12','c30_13','c30_14','c30_15','c30_16','c30_17','c30_18','c30_19','c30_20','c30_21','c30_22','c30_23','c30_24','c30_25',
             'c30_26','c30_27','c30_28','c30_29','c30_30','bn20_31','bn20_32','bn20_33','bn20_34','bn20_35','bn20_36','bn20_37','bn20_38','bn20_39',
             'bn20_40','bn20_41','bn20_42','bn20_43','bn20_44','bn20_45','bn20_46','bn20_47','bn20_48','bn20_49','bn20_50','ethnicity','education','employment','economic','ethn','race','maritalsts',
             'vitalsts','last_alive','dod','sex','inital_dx','ini_surgery','ini_surgery_type','ini_tum_lateral','ini_tum_location','ini_path_dx','ini_tumor_grade']
#subset = project.export_records(fields=fields_oi)

## Import baseline data
bl_event=['baseline_arm_1']
baseline_df = project.export_records(format='df', raw_or_label='raw', export_checkbox_labels=True,events=bl_event, fields=fields_bl)
len(baseline_df.index)

#Reset index and create a 'visit' field to be processed for the QLQC30 in STATA
baseline_df = baseline_df.reset_index()
baseline_df = baseline_df.set_index('record_id')
baseline_df['visit'] = 0

print(project.field_names)

## Imports the data for the 3 month follow up
fields_fu1 = ['record_id','tod','age', 'sex','cbduse','currentuse','last_cdb','lenght','freqcbd','reascbd','other_use','cbdmedical',
             'oth_sym','desc1','overallsym_scorebe','overallsym_scoreaf','moduse','cbd_oth','know_strain','strain','cbd_thc','cbd_ratio','recommcbd',
             'recom_oth','obtain','obtain_oth','cbdchange','howchng','stop_use','stop_useex','start_use','start_useex','cbd_change','whatchange','whenchange','changefrequency','percent_crease',
              'change_decrease','sympt_change','anynew','newsympt','newsympt_oth','symp_stop_bin','symp_stp','cbd_comment','eq5d_mb_5l_usa_eng','eq5d_sc_5l_usa_eng', 'eq5d_ua_5l_usa_eng',
              'eq5d_pd_5l_usa_eng','eq5d_ad_5l_usa_eng','eq5d5l_vas2_usa_eng', 'in_pt','dob_qol','tod','c30_1','c30_2','c30_3','c30_4','c30_5','c30_6','c30_7','c30_8','c30_9','c30_10',
             'c30_11','c30_12','c30_13','c30_14','c30_15','c30_16','c30_17','c30_18','c30_19','c30_20','c30_21','c30_22','c30_23','c30_24','c30_25',
             'c30_26','c30_27','c30_28','c30_29','c30_30','bn20_31','bn20_32','bn20_33','bn20_34','bn20_35','bn20_36','bn20_37','bn20_38','bn20_39',
             'bn20_40','bn20_41','bn20_42','bn20_43','bn20_44','bn20_45','bn20_46','bn20_47','bn20_48','bn20_49','bn20_50']
fu1_event=['3_mo_arm_1']
fu1_df = project.export_records(format='df', raw_or_label='raw', export_checkbox_labels=True,events=fu1_event, fields=fields_fu1, filter_logic="[eortcquality_of_life_complete]=2")
len(fu1_df)
fu1_df = fu1_df.reset_index()
fu1_df= fu1_df.set_index('record_id')

len(fu1_df.index)
fu1_df['visit'] = 1

ids = list(fu1_df.index)
boolean_series = baseline_df.index.isin(ids)
filtered_df = baseline_df[boolean_series]

#Checking that we have the same number of IDs in both dataframes
print(len(filtered_df.index))


## Creates a Wide dataframe
wide_df = filtered_df.merge(fu1_df, left_index=True, right_index=True, suffixes=('_bl','_3m'))

##Creates a tall dataframe
tall_df = pd.concat([filtered_df,fu1_df])
tall_df.sort_index()

## Exports the tall_df to pass it onto STATA for the QLQ-C30 processing

tall_df.to_csv('SNO 2021.csv')
