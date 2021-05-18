
version 13
clear

cd "K:\Documents\SNO\SNO 2021"
import delimited "K:\Documents\SNO\SNO 2021\SNO 2021.csv"

label data "SNO 2021.csv"


label define subject_complete_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 
label define cbduse_ 1 "Yes" 0 "No" 
label define currentuse_ 1 "Yes" 0 "No" 
label define last_cdb_ 1 "This week" 2 "Within the last week" 3 "Within the last month" 4 "Within the last 3 months" 5 "Within the last 6 months" 6 "Within the last year" 7 "More than a year ago" 99 "N/A" 
label define lenght_ 1 "Less than a month" 2 "1-3 months" 3 "3-6 months" 4 "6-12 months" 5 "More than 12 months" 99 "N/A" 
label define freqcbd_ 1 "Only while on treatment (Chemotherapy/radiotherapy)" 2 "Monthly" 3 "1 or less times a week" 4 "2-4 times a week" 5 "more than 4 times a week" 6 "Daily" 99 "N/A" 
label define reascbd_ 1 "Recreational" 2 "Tumor treatment" 3 "Relief of symptoms" 4 "Other (specify)" 99 "N/A" 
label define cbdmedical___1_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___2_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___3_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___4_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___5_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___6_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___7_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___8_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___9_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___10_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___11_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___12_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___13_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___14_ 0 "Unchecked" 1 "Checked" 
label define cbdmedical___99_ 0 "Unchecked" 1 "Checked" 
label define overallsym_scorebe_ 6 "6. Severe" 5 "5." 4 "4." 3 "3." 2 "2." 1 "1. Mild" 99 "N/A" 
label define overallsym_scoreaf_ 6 "6. Severe" 5 "5." 4 "4." 3 "3." 2 "2." 1 "1. Mild" 99 "N/A" 
label define moduse_ 1 "Inhalation/Smoke (include vapor or steam)" 2 "Oral (Edibles, tincture, capsules)" 3 "Concentrates (oil, keif, hash)" 4 "Topical" 5 "Fresh juice" 6 "Other" 99 "N/A" 
label define know_strain_ 1 "Yes" 0 "No" 
label define cbd_thc_ 1 "Yes" 0 "No" 
label define recommcbd_ 1 "Friend" 2 "Family" 3 "Health professional" 4 "Other" 99 "N/A" 
label define obtain_ 1 "Fill prescription" 2 "Established dispensary" 3 "Informal dispensary" 4 "From friends or family" 5 "Other" 99 "N/A" 
label define cbd_use_complete_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 
label define eq5d_mb_5l_usa_eng_ 1 "I have no problems walking" 2 "I have slight problems walking" 3 "I have moderate problems walking" 4 "I have severe problems walking" 5 "I am unable to walk" 
label define eq5d_sc_5l_usa_eng_ 1 "I have no problems washing or dressing myself" 2 "I have slight problems washing or dressing myself" 3 "I have moderate problems washing or dressing myself" 4 "I have severe problems washing or dressing myself" 5 "I am unable to wash or dress myself" 
label define eq5d_ua_5l_usa_eng_ 1 "I have no problems doing my usual activities" 2 "I have slight problems doing my usual activities" 3 "I have moderate problems doing my usual activities" 4 "I have severe problems doing my usual activities" 5 "I am unable to do my usual activities" 
label define eq5d_pd_5l_usa_eng_ 1 "I have no pain or discomfort" 2 "I have slight pain or discomfort" 3 "I have moderate pain or discomfort" 4 "I have severe pain or discomfort" 5 "I have extreme pain or discomfort" 
label define eq5d_ad_5l_usa_eng_ 1 "I am not anxious or depressed" 2 "I am slightly anxious or depressed" 3 "I am moderately anxious or depressed" 4 "I am severely anxious or depressed" 5 "I am extremely anxious or depressed" 
label define usa_english_eq5d5l_r_v_1_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 
label define c30_1_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_2_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_3_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_4_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_5_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_6_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_7_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_8_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_9_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_10_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_11_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_12_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_13_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_14_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_15_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_16_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_17_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_18_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_19_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_20_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_21_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_22_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_23_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_24_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_25_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_26_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_27_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_28_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define c30_29_ 7 "7 Excellent" 6 "6" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1 Very poor" 
label define c30_30_ 7 "7 Excellent" 6 "6" 5 "5" 4 "4" 3 "3" 2 "2" 1 "1 Very poor" 
label define bn20_31_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_32_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_33_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_34_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_35_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_36_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_37_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_38_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_39_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_40_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_41_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_42_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_43_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_44_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_45_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_46_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_47_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_48_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_49_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define bn20_50_ 1 "1. Not at all" 2 "2. A little bit" 3 "3. Quite a bit" 4 "4. Very much" 
label define eortcquality_of_life_complete_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 
label define ethnicity___1_ 0 "Unchecked" 1 "Checked" 
label define ethnicity___2_ 0 "Unchecked" 1 "Checked" 
label define ethnicity___3_ 0 "Unchecked" 1 "Checked" 
label define ethnicity___4_ 0 "Unchecked" 1 "Checked" 
label define ethnicity___5_ 0 "Unchecked" 1 "Checked" 
label define ethnicity___6_ 0 "Unchecked" 1 "Checked" 
label define ethnicity___7_ 0 "Unchecked" 1 "Checked" 
label define education_ 1 "No schooling completed" 2 "Nursery school to 8th grade" 3 "Some high school, no diploma" 4 "High school graduate, diploma or the equivalent (for example: GED)" 5 "Some college credit, no degree" 6 "Trade/technical/vocational training" 7 "Associate degree" 8 "Bachelors degree" 9 "Masters degree" 10 "Professional degree" 11 "Doctorate degree" 12 "Prefer not to answer" 
label define employment_ 1 "Employed for wages" 2 "Self-employed" 3 "Out of work and looking for work" 4 "Out of work but not currently looking for work" 5 "A homemaker" 6 "A student" 7 "Military" 8 "Retired" 9 "Unable to work" 10 "Prefer not to answer" 
label define economic_ 1 "$20,000" 2 "$20-40,000" 3 "$40-60,000" 4 "$60-80,000" 5 "$80-100,000" 6 "$100-150,000" 7 ">$150,000" 8 "Prefer not to answer" 
label define socioeconomic_complete_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 
label define ethn_ 0 "Hispanic or latino" 1 "Non-hispanic or latino" 2 "Unknown" 
label define race_ 0 "American Indian or Alaska Native" 1 "Asian" 2 "Black or African American" 3 "Native Hawaiian or Pacific Islander" 4 "White" 5 "Other" 
label define maritalsts_ 0 "Married" 1 "Single" 2 "Divorced" 4 "Widow/er" 5 "Other" 
label define vitalsts_ 0 "Alive" 1 "Deceased" 
label define sex_ 0 "Male" 1 "Female" 
label define demographics_complete_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 
label define ini_method_ 0 "CT" 1 "MRI" 2 "Resection/Biopsy" 3 "Clinical" 
label define ini_surgery_ 1 "Yes" 0 "No" 
label define ini_surgery_type_ 0 "Biopsy" 1 "Sub-total resection" 2 "Total resection" 
label define ini_tum_lateral_ 0 "Bilateral" 1 "Right" 2 "Left" 3 "Midline" 
label define ini_tum_location_ 0 "Thalamus" 1 "Parietal" 2 "Temporal" 3 "Occipital" 4 "Frontal" 5 "Corpus Callosum" 6 "Brain Stem" 7 "Cerebellum" 8 "Spine" 9 "Multifocal" 
label define ini_spine_seg_ 0 "Cervical" 1 "Thoracic" 2 "Lumbar" 3 "Sacral" 4 "Multiple" 
label define ini_tumor_grade_ 0 "I" 1 "II" 3 "III" 4 "IV" 
label define tumor_history_complete_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 
label define type_of_surgery_ 0 "Biopsy" 1 "Sub-total Resection" 2 "Total resection" 
label define reason_surgery_ 0 "Initial diagnosis" 1 "Tumor Progression" 2 "Confirm diagnosis" 3 "Research" 
label define tum_lateral_ 0 "Bilateral" 1 "Right" 2 "Left" 3 "Midline" 
label define tum_location_ 0 "Thalamus" 1 "Parietal" 2 "Temporal" 3 "Occipital" 4 "Frontal" 5 "Corpus Callosum" 6 "Brain Stem" 7 "Cerebellum" 8 "Spine" 9 "Multifocal" 
label define spine_seg_ 0 "Cervical" 1 "Thoracic" 2 "Lumbar" 3 "Sacral" 4 "Multiple" 
label define surgery_complete_ 0 "Incomplete" 1 "Unverified" 2 "Complete" 



label values cbduse cbduse_
label values currentuse currentuse_
label values last_cdb last_cdb_
label values lenght lenght_
label values freqcbd freqcbd_
label values reascbd reascbd_
label values cbdmedical___1 cbdmedical___1_
label values cbdmedical___2 cbdmedical___2_
label values cbdmedical___3 cbdmedical___3_
label values cbdmedical___4 cbdmedical___4_
label values cbdmedical___5 cbdmedical___5_
label values cbdmedical___6 cbdmedical___6_
label values cbdmedical___7 cbdmedical___7_
label values cbdmedical___8 cbdmedical___8_
label values cbdmedical___9 cbdmedical___9_
label values cbdmedical___10 cbdmedical___10_
label values cbdmedical___11 cbdmedical___11_
label values cbdmedical___12 cbdmedical___12_
label values cbdmedical___13 cbdmedical___13_
label values cbdmedical___14 cbdmedical___14_
label values cbdmedical___99 cbdmedical___99_
label values overallsym_scorebe overallsym_scorebe_
label values overallsym_scoreaf overallsym_scoreaf_
label values moduse moduse_
label values know_strain know_strain_
label values cbd_thc cbd_thc_
label values recommcbd recommcbd_
label values obtain obtain_

label values eq5d_mb_5l_usa_eng eq5d_mb_5l_usa_eng_
label values eq5d_sc_5l_usa_eng eq5d_sc_5l_usa_eng_
label values eq5d_ua_5l_usa_eng eq5d_ua_5l_usa_eng_
label values eq5d_pd_5l_usa_eng eq5d_pd_5l_usa_eng_
label values eq5d_ad_5l_usa_eng eq5d_ad_5l_usa_eng_

label values c30_1 c30_1_
label values c30_2 c30_2_
label values c30_3 c30_3_
label values c30_4 c30_4_
label values c30_5 c30_5_
label values c30_6 c30_6_
label values c30_7 c30_7_
label values c30_8 c30_8_
label values c30_9 c30_9_
label values c30_10 c30_10_
label values c30_11 c30_11_
label values c30_12 c30_12_
label values c30_13 c30_13_
label values c30_14 c30_14_
label values c30_15 c30_15_
label values c30_16 c30_16_
label values c30_17 c30_17_
label values c30_18 c30_18_
label values c30_19 c30_19_
label values c30_20 c30_20_
label values c30_21 c30_21_
label values c30_22 c30_22_
label values c30_23 c30_23_
label values c30_24 c30_24_
label values c30_25 c30_25_
label values c30_26 c30_26_
label values c30_27 c30_27_
label values c30_28 c30_28_
label values c30_29 c30_29_
label values c30_30 c30_30_
label values bn20_31 bn20_31_
label values bn20_32 bn20_32_
label values bn20_33 bn20_33_
label values bn20_34 bn20_34_
label values bn20_35 bn20_35_
label values bn20_36 bn20_36_
label values bn20_37 bn20_37_
label values bn20_38 bn20_38_
label values bn20_39 bn20_39_
label values bn20_40 bn20_40_
label values bn20_41 bn20_41_
label values bn20_42 bn20_42_
label values bn20_43 bn20_43_
label values bn20_44 bn20_44_
label values bn20_45 bn20_45_
label values bn20_46 bn20_46_
label values bn20_47 bn20_47_
label values bn20_48 bn20_48_
label values bn20_49 bn20_49_
label values bn20_50 bn20_50_

label values ethnicity___1 ethnicity___1_
label values ethnicity___2 ethnicity___2_
label values ethnicity___3 ethnicity___3_
label values ethnicity___4 ethnicity___4_
label values ethnicity___5 ethnicity___5_
label values ethnicity___6 ethnicity___6_
label values ethnicity___7 ethnicity___7_
label values education education_
label values employment employment_
label values economic economic_

label values ethn ethn_
label values race race_
label values maritalsts maritalsts_
label values vitalsts vitalsts_
label values sex sex_

///label values ini_method ini_method_
label values ini_surgery ini_surgery_
label values ini_surgery_type ini_surgery_type_
label values ini_tum_lateral ini_tum_lateral_
label values ini_tum_location ini_tum_location_
label values ini_tumor_grade ini_tumor_grade_


foreach x in dob tod dod{
    gen _date_ = date(`x', "YMD")
	drop `x'
	rename _date_ `x'
	format `x' %dM_d,_CY
}
/***
tostring dob, replace
gen _date_ = date(dob,"YMD")
drop dob
rename _date_ dob
format dob %dM_d,_CY

tostring tod, replace
gen _date_ = date(tod,"YMD")
drop tod
rename _date_ tod
format tod %dM_d,_CY

tostring dod, replace
gen _date_ = date(dod,"YMD")
drop dod
rename _date_ dod
format dod %dM_d,_CY
***/

label variable record_id "Record ID"
label variable redcap_event_name "Event Name"
label variable redcap_repeat_instrument "Repeat Instrument"
label variable redcap_repeat_instance "Repeat Instance"



label variable cbduse "Have you ever used cannabis?"
label variable currentuse "Do you currently use cannabis?"
label variable last_cdb "When was the last time that you used cannabis?"
label variable lenght "For how long did you use or have you been using cannabis?"
label variable freqcbd "How frequently do you use or did you use cannabis?"
label variable reascbd "What is the main reason why you use cannabis?"
label variable other_use "Other"
label variable cbdmedical___1 "(choice=Sleep)"
label variable cbdmedical___2 "(choice=Nausea)"
label variable cbdmedical___3 "(choice=Vomiting)"
label variable cbdmedical___4 "(choice=Pain)"
label variable cbdmedical___5 "(choice=Anxiety)"
label variable cbdmedical___6 "(choice=Depression)"
label variable cbdmedical___7 "(choice=Seizures)"
label variable cbdmedical___8 "(choice=Headache/migraine)"
label variable cbdmedical___9 "(choice=Muscle spasticity)"
label variable cbdmedical___10 "(choice=Digestive issues)"
label variable cbdmedical___11 "(choice=Lack of appetite)"
label variable cbdmedical___12 "(choice=Tics)"
label variable cbdmedical___13 "(choice=Tremor)"
label variable cbdmedical___14 "(choice=Other (specify))"
label variable cbdmedical___99 "(choice=N/A)"
label variable oth_sym "Other"

label variable overallsym_scorebe "Symptoms overall  BEFORE  you use cannabis? "
label variable overallsym_scoreaf "Symptoms overall  AFTER  you use cannabis?"
label variable moduse "What is the method that you most commonly use?"
label variable cbd_oth "Other"
label variable know_strain "Strain name"
label variable strain "Plant Name"
label variable cbd_thc "CBD:THC_known"
label variable cbd_ratio "CBD:THC ratio"
label variable recommcbd "Who recommended"
label variable recom_oth "Other"
label variable obtain "How obtain cannabis?"
label variable obtain_oth "Other"
label variable eq5d_mb_5l_usa_eng "MOBILITY"
label variable eq5d_sc_5l_usa_eng "SELF-CARE"
label variable eq5d_ua_5l_usa_eng "USUAL ACTIVITIES (e.g. work, study, housework, family or leisure activities)"


label variable eq5d_pd_5l_usa_eng "PAIN / DISCOMFORT"
label variable eq5d_ad_5l_usa_eng "ANXIETY / DEPRESSION"

label variable in_pt "Initials"

label variable tod "Todays date "
label variable age "Age"
label variable c30_1 "Trouble doing strenuous activities"
label variable c30_2 "Trouble taking a long walk?"
label variable c30_3 "Taking a  short walk?"
label variable c30_4 "Do you need to stay in bed?"
label variable c30_5 "Do you need help with eating, dressing, washing?"
label variable c30_6 "Were you limited in doing your daily activities?"
label variable c30_7 "Were you limited in pursuing hobbies?"
label variable c30_8 "Were you short of breath?"
label variable c30_9 "Have you had pain?"
label variable c30_10 "Did you need to rest?"
label variable c30_11 "Have you had trouble sleeping?"
label variable c30_12 "Have you felt weak?"
label variable c30_13 "Have you lacked appetite?"
label variable c30_14 "Have you felt nauseated?"
label variable c30_15 "Have you vomited?"
label variable c30_16 "Have you been constipated?"
label variable c30_17 "Have you had diarrhea?"
label variable c30_18 "Were you tired?"
label variable c30_19 "Did pain interfere daily activities?"
label variable c30_20 "Have you had difficulty in concentrating?"
label variable c30_21 "Did you feel tense?"
label variable c30_22 "Did you worry?"
label variable c30_23 "Did you feel irritable?"
label variable c30_24 "Did you feel depressed?"
label variable c30_25 "Have you had difficulty remembering things?"
label variable c30_26 "Has your medical treatment interfered withfamily life?"
label variable c30_27 "Has your medical treatment interfered with social activities?"
label variable c30_28 "Has medical treatment caused financial difficulties?"
label variable c30_29 "Overall health?"
label variable c30_30 "Overall quality of life during the past week?"
label variable bn20_31 "Uncertain about the future?"
label variable bn20_32 "Setbacks"
label variable bn20_33 "Disruption of family life?"
label variable bn20_34 "Headaches?"
label variable bn20_35 "Outlook on the future worsen?"
label variable bn20_36 "Double vision?"
label variable bn20_37 "Vision blurred?"
label variable bn20_38 "Difficulty reading because of your vision?"
label variable bn20_39 "Seizures?"
label variable bn20_40 "Weakness on one side of your body?"
label variable bn20_41 "Trouble to express yourself?"
label variable bn20_42 "Difficulty speaking?"
label variable bn20_43 "Trouble communicating your thoughts?"
label variable bn20_44 "Drowsy during the daytime?"
label variable bn20_45 "Trouble with your coordination?"
label variable bn20_46 "Hair loss?"
label variable bn20_47 "Itching?"
label variable bn20_48 "Weakness of both legs?"
label variable bn20_49 "Unsteady?"
label variable bn20_50 "Trouble controlling your bladder?"
label variable ethnicity___1 "Caucasian"
label variable ethnicity___2 "Hispanic or Latino"
label variable ethnicity___3 "Black or African American"
label variable ethnicity___4 "Native American or American Indian"
label variable ethnicity___5 "Asian / Pacific Islander"
label variable ethnicity___6 "Other"
label variable ethnicity___7 "Ethnicity Other:"
label variable education "Education"
label variable employment "Employment Status:"
label variable economic "Income in the past 12 months"
label variable ethn "Ethnicity"
label variable race "Race"
label variable maritalsts "Marital Status"
label variable vitalsts "Vital Status"
label variable last_alive "Last day known alive"
label variable dod "Date of death"
label variable sex "Gender"

label variable inital_dx "Date of initial diagnosis"

label variable ini_surgery "Was  tumor resection surgery performed?"
label variable ini_surgery_type "Type of initial surgery"

label variable ini_tum_lateral "Laterality"
label variable ini_tum_location "Location"

label variable ini_path_dx "Initial Pathology Diagnosis"
label variable ini_tumor_grade "Initial Tumor grade"


/***
order record_id redcap_event_name redcap_repeat_instrument redcap_repeat_instance redcap_survey_identifier subject_timestamp idno first_in lastn email dob age_tod subject_complete cbd_use_timestamp cbduse currentuse last_cdb lenght freqcbd reascbd other_use cbdmedical___1 cbdmedical___2 cbdmedical___3 cbdmedical___4 cbdmedical___5 cbdmedical___6 cbdmedical___7 cbdmedical___8 cbdmedical___9 cbdmedical___10 cbdmedical___11 cbdmedical___12 cbdmedical___13 cbdmedical___14 cbdmedical___99 oth_sym overallsym_scorebe overallsym_scoreaf moduse cbd_oth know_strain strain cbd_thc cbd_ratio recommcbd recom_oth obtain obtain_oth cbd_use_complete usa_english_eq5d5l_r_v_0 eq5d_mb_5l_usa_eng eq5d_sc_5l_usa_eng eq5d_ua_5l_usa_eng eq5d_pd_5l_usa_eng eq5d_ad_5l_usa_eng eq5d5l_vas2_usa_eng usa_english_eq5d5l_r_v_1 eortcquality_of_life_timestamp in_pt dob_qol tod age c30_1 c30_2 c30_3 c30_4 c30_5 c30_6 c30_7 c30_8 c30_9 c30_10 c30_11 c30_12 c30_13 c30_14 c30_15 c30_16 c30_17 c30_18 c30_19 c30_20 c30_21 c30_22 c30_23 c30_24 c30_25 c30_26 c30_27 c30_28 c30_29 c30_30 bn20_31 bn20_32 bn20_33 bn20_34 bn20_35 bn20_36 bn20_37 bn20_38 bn20_39 bn20_40 bn20_41 bn20_42 bn20_43 bn20_44 bn20_45 bn20_46 bn20_47 bn20_48 bn20_49 bn20_50 eortcquality_of_life_complete socioeconomic_timestamp ethnicity___1 ethnicity___2 ethnicity___3 ethnicity___4 ethnicity___5 ethnicity___6 ethnicity___7 education employment economic socioeconomic_complete demographics_timestamp mrn ethn race maritalsts vitalsts last_alive dod sex demographics_complete inital_dx ini_method ini_surgery ini_surgery_type d_initial_surgery ini_tum_lateral ini_tum_location ini_spine_seg ini_path_date ini_path_dx ini_tumor_grade ini_path_coment ini_path_report tumor_history_complete date_of_surgery type_of_surgery reason_surgery tum_lateral tum_location spine_seg surgery_comments surgery_complete 
****/

set more off

describe

drop redcap_event_name redcap_repeat_instrument redcap_repeat_instance

rename last_cdb lastcbd
rename eq5d5l_vas2_usa_eng eq5dl_score
rename eq5d_mb_5l_usa_eng eq5d_mb
rename eq5d_sc_5l_usa_eng eq5d_sc
rename eq5d_ua_5l_usa_eng eq5d_ua
rename eq5d_pd_5l_usa_eng eq5d_pd
rename eq5d_ad_5l_usa_eng eq5d_ad

//Index taken from the calculator using my data
generate eq5d_index = .

// Copy and paste the items from eq5 to the excel calculator to obtain indexes

replace currentuse=0 if currentuse==.
replace overallsym_scorebe=. if overallsym_scorebe==99
replace overallsym_scoreaf=. if overallsym_scoreaf==99

*****************************************

// The data was cleaned and explored using the QOL questionnaires, demographics and CBD status instruments


******************************************

//Preparing data for QLQ-C30 Analysis
rename ( c30_1 c30_2 c30_3 c30_4 c30_5 c30_6 c30_7 c30_8 c30_9 c30_10 c30_11 c30_12 c30_13 c30_14 c30_15 c30_16 c30_17 c30_18 c30_19 c30_20 c30_21 c30_22 c30_23 c30_24 c30_25 c30_26 c30_27 c30_28 c30_29 c30_30) (q1 q2 q3 q4 q5 q6 q7 q8 q9 q10 q11 q12 q13 q14 q15 q16 q17 q18 q19 q20 q21 q22 q23 q24 q25 q26 q27 q28 q29 q30)
rename (bn20_31 bn20_32 bn20_33 bn20_34 bn20_35 bn20_36 bn20_37 bn20_38 bn20_39 bn20_40 bn20_41 bn20_42 bn20_43 bn20_44 bn20_45 bn20_46 bn20_47 bn20_48 bn20_49 bn20_50)  (bn31 bn32 bn33 bn34 bn35 bn36 bn37 bn38 bn39 bn40 bn41 bn42 bn43 bn44 bn45 bn46 bn47 bn48 bn49 bn50)
replace currentuse=0 if currentuse==.
generate arm = 1
replace arm = 2 if currentuse==1
rename record_id npat //(Npat stands for number of patient)


//Creating Age categorical

recode age (min/49 = 1 "18-49") (49.0000001/58.32157 = 2 "49-58")(58.32158/64.65304 = 3 "58-64")(64.65305/max = 4 ">64"), generate(age_cat)

save "sno_2021.dta",replace

//Analysis for QLQc-30
use sno_2021.dta, clear
qlqc30, filename("sno_2021.dta") version(3) grp(2) table(yes) graph(yes)

//Generating scores for BN20
generate rawscore_BNFU= (bn31+bn32+bn33+bn35)/4
generate BNFU=((rawscore-1)/3)*100
drop rawscore_BNFU

generate rawscore_BNVD= (bn36+bn37+bn38)/3
generate BNVD=((rawscore_BNVD-1)/3)*100
drop rawscore_BNVD

generate rawscore_BNMD= (bn40+bn45+bn49)/3
generate BNMD=((rawscore_BNMD-1)/3)*100
drop rawscore_BNMD

generate rawscore_BNCD= (bn41+bn42+bn43)/3
generate BNCD=((rawscore_BNCD-1)/3)*100
drop rawscore_BNCD

generate BNHA=((bn34-1)/3)*100


generate BNSE=((bn39-1)/3)*100

generate BNDR=((bn44-1)/3)*100

generate BNIS=((bn47-1)/3)*100

generate BNHL=((bn46-1)/3)*100

generate BNWL=((bn48-1)/3)*100

generate BNBC=((bn50-1)/3)*100


/**************************************************************************
Before generating plots go to the walkthrough calculator to get the index fo the EQ5D-5L

copy the index and past them in the database. Multiply by 100 and save the dataset

***************************************************************************/

replace eq5d_index = eq5d_index*100



/// Baseline boxplots
graph box eq5d_index  eq5dl_score if visit==0, over(currentuse, relabel(1" Non-Users" 2 "Cannabis users")) ///
cw title("EQ-5D-5L Global health score (baseline)", position(12) margin(medsmall)) ///
legend(on order(1 "EQ-5D-5L index" 2 "Self-reported QOL")) scheme(sj)


/// 3Months follow up
graph box eq5d_index  eq5dl_score if visit==1, over(currentuse, relabel(1" Non-Users" 2 "Cannabis users")) ///
cw title("EQ-5D-5L Global health score (3 months)", position(12) margin(medsmall)) ///
legend(on order(1 "EQ-5D-5L index" 2 "Self-reported QOL")) scheme(sj)


/// Change over time users
graph box eq5d_index if currentuse==1 , over(visit, relabel(1"Baseline" 2"At 3 months"))  ///
cw title("EQ-5D-5L Global health score (CBD users)", position(12) margin(medsmall)) 
 
/// Change over time non-users
graph box eq5d_index if currentuse==0 , over(visit, relabel(1"Baseline" 2"At 3 months"))  ///
cw title("EQ-5D-5L Global health score (Nonusers)", position(12) margin(medsmall)) 



/// EQ5d_index Change over time
graph box eq5d_index, over(visit, relabel(1"Baseline" 2"At 3 months")) over(currentuse, relabel(1 "Non-users" 2 "CBD-users")) ///
cw title("EQ-5D-5L Global health score by visit", position(12) margin(medsmall)) ///
scheme(color1)


graph bar (percent) currentuse if currentuse==1 & visit==0, over(education, label(angle(forty_five) labsize(medsmall))) ytitle(Cannabis users(%)) ///
scheme(sj)

recode education (1/3=1)(4/5=2)(6=3)(7=4) (8=5) (9=6) (10=7) (11=8) (12=9), gen(education1)

label define education1 1 "<Highschool" 2 "Highschool" 3 "Technical/Vocational training" 4 "Associate degree" 5 "Bachelor's degree" 6 "Master's degree" 7 "Professional degree" 8 "Doctoral degree" 9 "Prefer not to answer"
label values education1 education1

recode employment (1/2=2 "Employed") (3/6=1 "Unemployed") (7=2) (8=3 "Retired") (9=4 "Unable to work") (10=5 "Prefer not to answer"), gen(employ)

graph bar (percent) currentuse if currentuse==1 & visit==0, over(education1, label(angle(forty_five) labsize(medsmall))) ytitle(Cannabis users(%)) ///
scheme(sj)


graph bar (percent) currentuse if currentuse==1 & visit==0, over(employ, label(angle(forty_five) labsize(medsmall))) ytitle(Cannabis users(%)) ///
scheme(sj)

save "cbd_qol_2021.dta",replace

/********************************
Frequencies
********************************/

tab cbdmedical___1 if main_use==2
tab cbdmedical___2 if main_use==2
tab cbdmedical___3 if main_use==2
tab cbdmedical___4 if main_use==2
tab cbdmedical___5 if main_use==2
tab cbdmedical___6 if main_use==2
tab cbdmedical___7 if main_use==2
tab cbdmedical___8 if main_use==2
tab cbdmedical___9 if main_use==2
tab cbdmedical___10 if main_use==2
tab cbdmedical___11 if main_use==2
tab cbdmedical___12 if main_use==2
tab cbdmedical___13 if main_use==2
tab cbdmedical___14 if main_use==2
tab cbdmedical___99 if main_use==2

