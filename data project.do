* NOTE: You need to set the Stata working directory to the path
* where the data file is located.
clear all
cd "K:\Documents\PhD\Epi Methods III\Data project"

* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     year             1-4      ///
  long    sample           5-10     ///
  double  serial           11-18    ///
  double  hhwt             19-28    ///
  double  cluster          29-41    ///
  byte    metro            42-42    ///
  int     metarea          43-45    ///
  int     metaread         46-49    ///
  double  strata           50-61    ///
  byte    gq               62-62    ///
  str     us2000a_state    63-64    ///
  str     us2000a_region   65-65    ///
  int     pernum           66-69    ///
  double  perwt            70-79    ///
  byte    migtyp00         80-81    ///
  byte    disabwrk         82-82    ///
  byte    diffrem          83-83    ///
  byte    diffphys         84-84    ///
  byte    diffmob          85-85    ///
  byte    diffcare         86-86    ///
  byte    diffsens         87-87    ///
  byte    pwtype           88-88    ///
  str     us2000a_pweight  89-92    ///
  str     us2000a_relate   93-94    ///
  str     us2000a_sex      95-95    ///
  str     us2000a_ageorig  96-97    ///
  str     us2000a_hispan   98-99    ///
  str     us2000a_numrace  100-100  ///
  str     us2000a_white    101-101  ///
  str     us2000a_black    102-102  ///
  str     us2000a_aian     103-103  ///
  str     us2000a_asian    104-104  ///
  str     us2000a_nhpi     105-105  ///
  str     us2000a_other    106-106  ///
  str     us2000a_marstat  107-107  ///
  str     us2000a_msp      108-108  ///
  str     us2000a_sfn      109-109  ///
  str     us2000a_educ     110-111  ///
  str     us2000a_mob      112-112  ///
  str     us2000a_sensry   113-113  ///
  str     us2000a_physcl   114-114  ///
  str     us2000a_mental   115-115  ///
  str     us2000a_slfcare  116-116  ///
  str     us2000a_abgo     117-117  ///
  str     us2000a_abwork   118-118  ///
  str     us2000a_disable  119-119  ///
  str     us2000a_esr      120-120  ///
  str     us2000a_incws    121-126  ///
  str     us2000a_incse    127-132  ///
  str     us2000a_povrty   133-135  ///
  str     us2000a_age      136-137  ///
  using `"usa_00003.dat"'

replace hhwt            = hhwt            / 100
replace perwt           = perwt           / 100

format serial          %8.0f
format hhwt            %10.2f
format cluster         %13.0f
format strata          %12.0f
format perwt           %10.2f

label var year            `"Census year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var hhwt            `"Household weight"'
label var cluster         `"Household cluster for variance estimation"'
label var metro           `"Metropolitan status"'
label var metarea         `"Metropolitan area [general version]"'
label var metaread        `"Metropolitan area [detailed version]"'
label var strata          `"Household strata for variance estimation"'
label var gq              `"Group quarters status"'
label var us2000a_state   `"State Code"'
label var us2000a_region  `"Region Code"'
label var pernum          `"Person number in sample unit"'
label var perwt           `"Person weight"'
label var migtyp00        `"Metropolitan status 5 years ago, 2000"'
label var disabwrk        `"Work disability"'
label var diffrem         `"Cognitive difficulty"'
label var diffphys        `"Ambulatory difficulty"'
label var diffmob         `"Independent living difficulty"'
label var diffcare        `"Self-care difficulty"'
label var diffsens        `"Vision or hearing difficulty"'
label var pwtype          `"Place of work: metropolitan status"'
label var us2000a_pweight `"Person Weight"'
label var us2000a_relate  `"Relationship"'
label var us2000a_sex     `"Sex"'
label var us2000a_ageorig `"Age (uncorrected)"'
label var us2000a_hispan  `"Hispanic or Latino Origin"'
label var us2000a_numrace `"Number of Major Race Groups Marked"'
label var us2000a_white   `"White recode"'
label var us2000a_black   `"Black or African American recode"'
label var us2000a_aian    `"American Indian and Alaska Native recode"'
label var us2000a_asian   `"Asian recode"'
label var us2000a_nhpi    `"Native Hawaiian and Other Pacific Islander recode"'
label var us2000a_other   `"Some other race recode"'
label var us2000a_marstat `"Marital Status"'
label var us2000a_msp     `"Married, Spouse Present Recode"'
label var us2000a_sfn     `"Subfamily Number for this person"'
label var us2000a_educ    `"Educational Attainment"'
label var us2000a_mob     `"Residence 5 Years Ago"'
label var us2000a_sensry  `"Sensory Disability"'
label var us2000a_physcl  `"Physical Disability"'
label var us2000a_mental  `"Mental Disability"'
label var us2000a_slfcare `"Self-Care Disability"'
label var us2000a_abgo    `"Able to Go Out Disability"'
label var us2000a_abwork  `"Employment Disability"'
label var us2000a_disable `"Disability Recode"'
label var us2000a_esr     `"Employment Status Recode"'
label var us2000a_incws   `"Wage/Salary Income in 1999"'
label var us2000a_incse   `"Self-Employment Income in 1999"'
label var us2000a_povrty  `"Person's Poverty Status"'
label var us2000a_age     `"Age (corrected)"'

label define year_lbl 1850 `"1850"'
label define year_lbl 1860 `"1860"', add
label define year_lbl 1870 `"1870"', add
label define year_lbl 1880 `"1880"', add
label define year_lbl 1900 `"1900"', add
label define year_lbl 1910 `"1910"', add
label define year_lbl 1920 `"1920"', add
label define year_lbl 1930 `"1930"', add
label define year_lbl 1940 `"1940"', add
label define year_lbl 1950 `"1950"', add
label define year_lbl 1960 `"1960"', add
label define year_lbl 1970 `"1970"', add
label define year_lbl 1980 `"1980"', add
label define year_lbl 1990 `"1990"', add
label define year_lbl 2000 `"2000"', add
label define year_lbl 2001 `"2001"', add
label define year_lbl 2002 `"2002"', add
label define year_lbl 2003 `"2003"', add
label define year_lbl 2004 `"2004"', add
label define year_lbl 2005 `"2005"', add
label define year_lbl 2006 `"2006"', add
label define year_lbl 2007 `"2007"', add
label define year_lbl 2008 `"2008"', add
label define year_lbl 2009 `"2009"', add
label define year_lbl 2010 `"2010"', add
label define year_lbl 2011 `"2011"', add
label define year_lbl 2012 `"2012"', add
label define year_lbl 2013 `"2013"', add
label define year_lbl 2014 `"2014"', add
label define year_lbl 2015 `"2015"', add
label define year_lbl 2016 `"2016"', add
label define year_lbl 2017 `"2017"', add
label define year_lbl 2018 `"2018"', add
label define year_lbl 2019 `"2019"', add
label values year year_lbl

label define sample_lbl 201904 `"2015-2019, PRCS 5-year"'
label define sample_lbl 201903 `"2015-2019, ACS 5-year"', add
label define sample_lbl 201902 `"2019 PRCS"', add
label define sample_lbl 201901 `"2019 ACS"', add
label define sample_lbl 201804 `"2014-2018, PRCS 5-year"', add
label define sample_lbl 201803 `"2014-2018, ACS 5-year"', add
label define sample_lbl 201802 `"2018 PRCS"', add
label define sample_lbl 201801 `"2018 ACS"', add
label define sample_lbl 201704 `"2013-2017, PRCS 5-year"', add
label define sample_lbl 201703 `"2013-2017, ACS 5-year"', add
label define sample_lbl 201702 `"2017 PRCS"', add
label define sample_lbl 201701 `"2017 ACS"', add
label define sample_lbl 201604 `"2012-2016, PRCS 5-year"', add
label define sample_lbl 201603 `"2012-2016, ACS 5-year"', add
label define sample_lbl 201602 `"2016 PRCS"', add
label define sample_lbl 201601 `"2016 ACS"', add
label define sample_lbl 201504 `"2011-2015, PRCS 5-year"', add
label define sample_lbl 201503 `"2011-2015, ACS 5-year"', add
label define sample_lbl 201502 `"2015 PRCS"', add
label define sample_lbl 201501 `"2015 ACS"', add
label define sample_lbl 201404 `"2010-2014, PRCS 5-year"', add
label define sample_lbl 201403 `"2010-2014, ACS 5-year"', add
label define sample_lbl 201402 `"2014 PRCS"', add
label define sample_lbl 201401 `"2014 ACS"', add
label define sample_lbl 201306 `"2009-2013, PRCS 5-year"', add
label define sample_lbl 201305 `"2009-2013, ACS 5-year"', add
label define sample_lbl 201304 `"2011-2013, PRCS 3-year"', add
label define sample_lbl 201303 `"2011-2013, ACS 3-year"', add
label define sample_lbl 201302 `"2013 PRCS"', add
label define sample_lbl 201301 `"2013 ACS"', add
label define sample_lbl 201206 `"2008-2012, PRCS 5-year"', add
label define sample_lbl 201205 `"2008-2012, ACS 5-year"', add
label define sample_lbl 201204 `"2010-2012, PRCS 3-year"', add
label define sample_lbl 201203 `"2010-2012, ACS 3-year"', add
label define sample_lbl 201202 `"2012 PRCS"', add
label define sample_lbl 201201 `"2012 ACS"', add
label define sample_lbl 201106 `"2007-2011, PRCS 5-year"', add
label define sample_lbl 201105 `"2007-2011, ACS 5-year"', add
label define sample_lbl 201104 `"2009-2011, PRCS 3-year"', add
label define sample_lbl 201103 `"2009-2011, ACS 3-year"', add
label define sample_lbl 201102 `"2011 PRCS"', add
label define sample_lbl 201101 `"2011 ACS"', add
label define sample_lbl 201008 `"2010 Puerto Rico 10%"', add
label define sample_lbl 201007 `"2010 10%"', add
label define sample_lbl 201006 `"2006-2010, PRCS 5-year"', add
label define sample_lbl 201005 `"2006-2010, ACS 5-year"', add
label define sample_lbl 201004 `"2008-2010, PRCS 3-year"', add
label define sample_lbl 201003 `"2008-2010, ACS 3-year"', add
label define sample_lbl 201002 `"2010 PRCS"', add
label define sample_lbl 201001 `"2010 ACS"', add
label define sample_lbl 200906 `"2005-2009, PRCS 5-year"', add
label define sample_lbl 200905 `"2005-2009, ACS 5-year"', add
label define sample_lbl 200904 `"2007-2009, PRCS 3-year"', add
label define sample_lbl 200903 `"2007-2009, ACS 3-year"', add
label define sample_lbl 200902 `"2009 PRCS"', add
label define sample_lbl 200901 `"2009 ACS"', add
label define sample_lbl 200804 `"2006-2008, PRCS 3-year"', add
label define sample_lbl 200803 `"2006-2008, ACS 3-year"', add
label define sample_lbl 200802 `"2008 PRCS"', add
label define sample_lbl 200801 `"2008 ACS"', add
label define sample_lbl 200704 `"2005-2007, PRCS 3-year"', add
label define sample_lbl 200703 `"2005-2007, ACS 3-year"', add
label define sample_lbl 200702 `"2007 PRCS"', add
label define sample_lbl 200701 `"2007 ACS"', add
label define sample_lbl 200602 `"2006 PRCS"', add
label define sample_lbl 200601 `"2006 ACS"', add
label define sample_lbl 200502 `"2005 PRCS"', add
label define sample_lbl 200501 `"2005 ACS"', add
label define sample_lbl 200401 `"2004 ACS"', add
label define sample_lbl 200301 `"2003 ACS"', add
label define sample_lbl 200201 `"2002 ACS"', add
label define sample_lbl 200101 `"2001 ACS"', add
label define sample_lbl 200008 `"2000 Puerto Rico 1%"', add
label define sample_lbl 200007 `"2000 1%"', add
label define sample_lbl 200006 `"2000 Puerto Rico 1% sample (old version)"', add
label define sample_lbl 200005 `"2000 Puerto Rico 5%"', add
label define sample_lbl 200004 `"2000 ACS"', add
label define sample_lbl 200003 `"2000 Unweighted 1%"', add
label define sample_lbl 200002 `"2000 1% sample (old version)"', add
label define sample_lbl 200001 `"2000 5%"', add
label define sample_lbl 199007 `"1990 Puerto Rico 1%"', add
label define sample_lbl 199006 `"1990 Puerto Rico 5%"', add
label define sample_lbl 199005 `"1990 Labor Market Area"', add
label define sample_lbl 199004 `"1990 Elderly"', add
label define sample_lbl 199003 `"1990 Unweighted 1%"', add
label define sample_lbl 199002 `"1990 1%"', add
label define sample_lbl 199001 `"1990 5%"', add
label define sample_lbl 198007 `"1980 Puerto Rico 1%"', add
label define sample_lbl 198006 `"1980 Puerto Rico 5%"', add
label define sample_lbl 198005 `"1980 Detailed metro/non-metro"', add
label define sample_lbl 198004 `"1980 Labor Market Area"', add
label define sample_lbl 198003 `"1980 Urban/Rural"', add
label define sample_lbl 198002 `"1980 1%"', add
label define sample_lbl 198001 `"1980 5%"', add
label define sample_lbl 197009 `"1970 Puerto Rico Neighborhood"', add
label define sample_lbl 197008 `"1970 Puerto Rico Municipio"', add
label define sample_lbl 197007 `"1970 Puerto Rico State"', add
label define sample_lbl 197006 `"1970 Form 2 Neighborhood"', add
label define sample_lbl 197005 `"1970 Form 1 Neighborhood"', add
label define sample_lbl 197004 `"1970 Form 2 Metro"', add
label define sample_lbl 197003 `"1970 Form 1 Metro"', add
label define sample_lbl 197002 `"1970 Form 2 State"', add
label define sample_lbl 197001 `"1970 Form 1 State"', add
label define sample_lbl 196002 `"1960 5%"', add
label define sample_lbl 196001 `"1960 1%"', add
label define sample_lbl 195001 `"1950 1%"', add
label define sample_lbl 194002 `"1940 100% database"', add
label define sample_lbl 194001 `"1940 1%"', add
label define sample_lbl 193004 `"1930 100% database"', add
label define sample_lbl 193003 `"1930 Puerto Rico"', add
label define sample_lbl 193002 `"1930 5%"', add
label define sample_lbl 193001 `"1930 1%"', add
label define sample_lbl 192003 `"1920 100% database"', add
label define sample_lbl 192002 `"1920 Puerto Rico sample"', add
label define sample_lbl 192001 `"1920 1%"', add
label define sample_lbl 191004 `"1910 100% database"', add
label define sample_lbl 191003 `"1910 1.4% sample with oversamples"', add
label define sample_lbl 191002 `"1910 1%"', add
label define sample_lbl 191001 `"1910 Puerto Rico"', add
label define sample_lbl 190004 `"1900 100% database"', add
label define sample_lbl 190003 `"1900 1% sample with oversamples"', add
label define sample_lbl 190002 `"1900 1%"', add
label define sample_lbl 190001 `"1900 5%"', add
label define sample_lbl 188003 `"1880 100% database"', add
label define sample_lbl 188002 `"1880 10%"', add
label define sample_lbl 188001 `"1880 1%"', add
label define sample_lbl 187003 `"1870 100% database"', add
label define sample_lbl 187002 `"1870 1% sample with black oversample"', add
label define sample_lbl 187001 `"1870 1%"', add
label define sample_lbl 186003 `"1860 100% database"', add
label define sample_lbl 186002 `"1860 1% sample with black oversample"', add
label define sample_lbl 186001 `"1860 1%"', add
label define sample_lbl 185002 `"1850 100% database"', add
label define sample_lbl 185001 `"1850 1%"', add
label values sample sample_lbl

label define metro_lbl 0 `"Metropolitan status indeterminable (mixed)"'
label define metro_lbl 1 `"Not in metropolitan area"', add
label define metro_lbl 2 `"In metropolitan area: In central/principal city"', add
label define metro_lbl 3 `"In metropolitan area: Not in central/principal city"', add
label define metro_lbl 4 `"In metropolitan area: Central/principal city status indeterminable (mixed)"', add
label values metro metro_lbl

label define metarea_lbl 000 `"Not identifiable or not in an MSA"'
label define metarea_lbl 004 `"Abilene, TX"', add
label define metarea_lbl 006 `"Aguadilla, PR"', add
label define metarea_lbl 008 `"Akron, OH"', add
label define metarea_lbl 012 `"Albany, GA"', add
label define metarea_lbl 016 `"Albany-Schenectady-Troy, NY"', add
label define metarea_lbl 020 `"Albuquerque, NM"', add
label define metarea_lbl 022 `"Alexandria, LA"', add
label define metarea_lbl 024 `"Allentown-Bethlehem-Easton, PA/NJ"', add
label define metarea_lbl 028 `"Altoona, PA"', add
label define metarea_lbl 032 `"Amarillo, TX"', add
label define metarea_lbl 038 `"Anchorage, AK"', add
label define metarea_lbl 040 `"Anderson, IN"', add
label define metarea_lbl 044 `"Ann Arbor, MI"', add
label define metarea_lbl 045 `"Anniston, AL"', add
label define metarea_lbl 046 `"Appleton-Oshkosh-Neenah, WI"', add
label define metarea_lbl 047 `"Arecibo, PR"', add
label define metarea_lbl 048 `"Asheville, NC"', add
label define metarea_lbl 050 `"Athens, GA"', add
label define metarea_lbl 052 `"Atlanta, GA"', add
label define metarea_lbl 056 `"Atlantic City, NJ"', add
label define metarea_lbl 058 `"Auburn-Opekika, AL"', add
label define metarea_lbl 060 `"Augusta-Aiken, GA/SC"', add
label define metarea_lbl 064 `"Austin, TX"', add
label define metarea_lbl 068 `"Bakersfield, CA"', add
label define metarea_lbl 072 `"Baltimore, MD"', add
label define metarea_lbl 073 `"Bangor, ME"', add
label define metarea_lbl 074 `"Barnstable-Yarmouth, MA"', add
label define metarea_lbl 076 `"Baton Rouge, LA"', add
label define metarea_lbl 078 `"Battle Creek, MI"', add
label define metarea_lbl 084 `"Beaumont-Port Arthur-Orange, TX"', add
label define metarea_lbl 086 `"Bellingham, WA"', add
label define metarea_lbl 087 `"Benton Harbor, MI"', add
label define metarea_lbl 088 `"Billings, MT"', add
label define metarea_lbl 092 `"Biloxi-Gulfport, MS"', add
label define metarea_lbl 096 `"Binghamton, NY"', add
label define metarea_lbl 100 `"Birmingham, AL"', add
label define metarea_lbl 102 `"Bloomington, IN"', add
label define metarea_lbl 104 `"Bloomington-Normal, IL"', add
label define metarea_lbl 108 `"Boise City, ID"', add
label define metarea_lbl 112 `"Boston, MA/NH"', add
label define metarea_lbl 114 `"Bradenton, FL"', add
label define metarea_lbl 115 `"Bremerton, WA"', add
label define metarea_lbl 116 `"Bridgeport, CT"', add
label define metarea_lbl 120 `"Brockton, MA"', add
label define metarea_lbl 124 `"Brownsville-Harlingen-San Benito, TX"', add
label define metarea_lbl 126 `"Bryan-College Station, TX"', add
label define metarea_lbl 128 `"Buffalo-Niagara Falls, NY"', add
label define metarea_lbl 130 `"Burlington, NC"', add
label define metarea_lbl 131 `"Burlington, VT"', add
label define metarea_lbl 132 `"Canton, OH"', add
label define metarea_lbl 133 `"Caguas, PR"', add
label define metarea_lbl 135 `"Casper, WY"', add
label define metarea_lbl 136 `"Cedar Rapids, IA"', add
label define metarea_lbl 140 `"Champaign-Urbana-Rantoul, IL"', add
label define metarea_lbl 144 `"Charleston-N. Charleston, SC"', add
label define metarea_lbl 148 `"Charleston, WV"', add
label define metarea_lbl 152 `"Charlotte-Gastonia-Rock Hill, NC/SC"', add
label define metarea_lbl 154 `"Charlottesville, VA"', add
label define metarea_lbl 156 `"Chattanooga, TN/GA"', add
label define metarea_lbl 158 `"Cheyenne, WY"', add
label define metarea_lbl 160 `"Chicago, IL"', add
label define metarea_lbl 162 `"Chico, CA"', add
label define metarea_lbl 164 `"Cincinnati-Hamilton, OH/KY/IN"', add
label define metarea_lbl 166 `"Clarksville- Hopkinsville, TN/KY"', add
label define metarea_lbl 168 `"Cleveland, OH"', add
label define metarea_lbl 172 `"Colorado Springs, CO"', add
label define metarea_lbl 174 `"Columbia, MO"', add
label define metarea_lbl 176 `"Columbia, SC"', add
label define metarea_lbl 180 `"Columbus, GA/AL"', add
label define metarea_lbl 184 `"Columbus, OH"', add
label define metarea_lbl 188 `"Corpus Christi, TX"', add
label define metarea_lbl 190 `"Cumberland, MD/WV"', add
label define metarea_lbl 192 `"Dallas-Fort Worth, TX"', add
label define metarea_lbl 193 `"Danbury, CT"', add
label define metarea_lbl 195 `"Danville, VA"', add
label define metarea_lbl 196 `"Davenport, IA - Rock Island-Moline, IL"', add
label define metarea_lbl 200 `"Dayton-Springfield, OH"', add
label define metarea_lbl 202 `"Daytona Beach, FL"', add
label define metarea_lbl 203 `"Decatur, AL"', add
label define metarea_lbl 204 `"Decatur, IL"', add
label define metarea_lbl 208 `"Denver-Boulder, CO"', add
label define metarea_lbl 212 `"Des Moines, IA"', add
label define metarea_lbl 216 `"Detroit, MI"', add
label define metarea_lbl 218 `"Dothan, AL"', add
label define metarea_lbl 219 `"Dover, DE"', add
label define metarea_lbl 220 `"Dubuque, IA"', add
label define metarea_lbl 224 `"Duluth-Superior, MN/WI"', add
label define metarea_lbl 228 `"Dutchess Co., NY"', add
label define metarea_lbl 229 `"Eau Claire, WI"', add
label define metarea_lbl 231 `"El Paso, TX"', add
label define metarea_lbl 232 `"Elkhart-Goshen, IN"', add
label define metarea_lbl 233 `"Elmira, NY"', add
label define metarea_lbl 234 `"Enid, OK"', add
label define metarea_lbl 236 `"Erie, PA"', add
label define metarea_lbl 240 `"Eugene-Springfield, OR"', add
label define metarea_lbl 244 `"Evansville, IN/KY"', add
label define metarea_lbl 252 `"Fargo-Morehead, ND/MN"', add
label define metarea_lbl 256 `"Fayetteville, NC"', add
label define metarea_lbl 258 `"Fayetteville-Springdale, AR"', add
label define metarea_lbl 260 `"Fitchburg-Leominster, MA"', add
label define metarea_lbl 262 `"Flagstaff, AZ/UT"', add
label define metarea_lbl 264 `"Flint, MI"', add
label define metarea_lbl 265 `"Florence, AL"', add
label define metarea_lbl 266 `"Florence, SC"', add
label define metarea_lbl 267 `"Fort Collins-Loveland, CO"', add
label define metarea_lbl 268 `"Fort Lauderdale-Hollywood-Pompano Beach, FL"', add
label define metarea_lbl 270 `"Fort Myers-Cape Coral, FL"', add
label define metarea_lbl 271 `"Fort Pierce, FL"', add
label define metarea_lbl 272 `"Fort Smith, AR/OK"', add
label define metarea_lbl 275 `"Fort Walton Beach, FL"', add
label define metarea_lbl 276 `"Fort Wayne, IN"', add
label define metarea_lbl 284 `"Fresno, CA"', add
label define metarea_lbl 288 `"Gadsden, AL"', add
label define metarea_lbl 290 `"Gainesville, FL"', add
label define metarea_lbl 292 `"Galveston-Texas City, TX"', add
label define metarea_lbl 297 `"Glens Falls, NY"', add
label define metarea_lbl 298 `"Goldsboro, NC"', add
label define metarea_lbl 299 `"Grand Forks, ND"', add
label define metarea_lbl 300 `"Grand Rapids, MI"', add
label define metarea_lbl 301 `"Grand Junction, CO"', add
label define metarea_lbl 304 `"Great Falls, MT"', add
label define metarea_lbl 306 `"Greeley, CO"', add
label define metarea_lbl 308 `"Green Bay, WI"', add
label define metarea_lbl 312 `"Greensboro-Winston Salem-High Point, NC"', add
label define metarea_lbl 315 `"Greenville, NC"', add
label define metarea_lbl 316 `"Greenville-Spartenburg-Anderson, SC"', add
label define metarea_lbl 318 `"Hagerstown, MD"', add
label define metarea_lbl 320 `"Hamilton-Middleton, OH"', add
label define metarea_lbl 324 `"Harrisburg-Lebanon--Carlisle, PA"', add
label define metarea_lbl 328 `"Hartford-Bristol-Middleton- New Britain, CT"', add
label define metarea_lbl 329 `"Hickory-Morganton, NC"', add
label define metarea_lbl 330 `"Hattiesburg, MS"', add
label define metarea_lbl 332 `"Honolulu, HI"', add
label define metarea_lbl 335 `"Houma-Thibodoux, LA"', add
label define metarea_lbl 336 `"Houston-Brazoria, TX"', add
label define metarea_lbl 340 `"Huntington-Ashland, WV/KY/OH"', add
label define metarea_lbl 344 `"Huntsville, AL"', add
label define metarea_lbl 348 `"Indianapolis, IN"', add
label define metarea_lbl 350 `"Iowa City, IA"', add
label define metarea_lbl 352 `"Jackson, MI"', add
label define metarea_lbl 356 `"Jackson, MS"', add
label define metarea_lbl 358 `"Jackson, TN"', add
label define metarea_lbl 359 `"Jacksonville, FL"', add
label define metarea_lbl 360 `"Jacksonville, NC"', add
label define metarea_lbl 361 `"Jamestown-Dunkirk, NY"', add
label define metarea_lbl 362 `"Janesville-Beloit, WI"', add
label define metarea_lbl 366 `"Johnson City-Kingsport--Bristol, TN/VA"', add
label define metarea_lbl 368 `"Johnstown, PA"', add
label define metarea_lbl 371 `"Joplin, MO"', add
label define metarea_lbl 372 `"Kalamazoo-Portage, MI"', add
label define metarea_lbl 374 `"Kankakee, IL"', add
label define metarea_lbl 376 `"Kansas City, MO/KS"', add
label define metarea_lbl 380 `"Kenosha, WI"', add
label define metarea_lbl 381 `"Kileen-Temple, TX"', add
label define metarea_lbl 384 `"Knoxville, TN"', add
label define metarea_lbl 385 `"Kokomo, IN"', add
label define metarea_lbl 387 `"LaCrosse, WI"', add
label define metarea_lbl 388 `"Lafayette, LA"', add
label define metarea_lbl 392 `"Lafayette-W. Lafayette, IN"', add
label define metarea_lbl 396 `"Lake Charles, LA"', add
label define metarea_lbl 398 `"Lakeland-Winterhaven, FL"', add
label define metarea_lbl 400 `"Lancaster, PA"', add
label define metarea_lbl 404 `"Lansing-E. Lansing, MI"', add
label define metarea_lbl 408 `"Laredo, TX"', add
label define metarea_lbl 410 `"Las Cruces, NM"', add
label define metarea_lbl 412 `"Las Vegas, NV"', add
label define metarea_lbl 415 `"Lawrence, KS"', add
label define metarea_lbl 420 `"Lawton, OK"', add
label define metarea_lbl 424 `"Lewiston-Auburn, ME"', add
label define metarea_lbl 428 `"Lexington-Fayette, KY"', add
label define metarea_lbl 432 `"Lima, OH"', add
label define metarea_lbl 436 `"Lincoln, NE"', add
label define metarea_lbl 440 `"Little Rock-N. Little Rock, AR"', add
label define metarea_lbl 441 `"Long Branch-Asbury Park, NJ"', add
label define metarea_lbl 442 `"Longview-Marshall, TX"', add
label define metarea_lbl 444 `"Lorain-Elyria, OH"', add
label define metarea_lbl 448 `"Los Angeles-Long Beach, CA"', add
label define metarea_lbl 452 `"Louisville, KY/IN"', add
label define metarea_lbl 460 `"Lubbock, TX"', add
label define metarea_lbl 464 `"Lynchburg, VA"', add
label define metarea_lbl 468 `"Macon-Warner Robins, GA"', add
label define metarea_lbl 472 `"Madison, WI"', add
label define metarea_lbl 476 `"Manchester, NH"', add
label define metarea_lbl 480 `"Mansfield, OH"', add
label define metarea_lbl 484 `"Mayaguez, PR"', add
label define metarea_lbl 488 `"McAllen-Edinburg-Pharr-Mission, TX"', add
label define metarea_lbl 489 `"Medford, OR"', add
label define metarea_lbl 490 `"Melbourne-Titusville-Cocoa-Palm Bay, FL"', add
label define metarea_lbl 492 `"Memphis, TN/AR/MS"', add
label define metarea_lbl 494 `"Merced, CA"', add
label define metarea_lbl 500 `"Miami-Hialeah, FL"', add
label define metarea_lbl 504 `"Midland, TX"', add
label define metarea_lbl 508 `"Milwaukee, WI"', add
label define metarea_lbl 512 `"Minneapolis-St. Paul, MN"', add
label define metarea_lbl 514 `"Missoula, MT"', add
label define metarea_lbl 516 `"Mobile, AL"', add
label define metarea_lbl 517 `"Modesto, CA"', add
label define metarea_lbl 519 `"Monmouth-Ocean, NJ"', add
label define metarea_lbl 520 `"Monroe, LA"', add
label define metarea_lbl 524 `"Montgomery, AL"', add
label define metarea_lbl 528 `"Muncie, IN"', add
label define metarea_lbl 532 `"Muskegon-Norton Shores-Muskegon Heights, MI"', add
label define metarea_lbl 533 `"Myrtle Beach, SC"', add
label define metarea_lbl 534 `"Naples, FL"', add
label define metarea_lbl 535 `"Nashua, NH"', add
label define metarea_lbl 536 `"Nashville, TN"', add
label define metarea_lbl 540 `"New Bedford, MA"', add
label define metarea_lbl 546 `"New Brunswick-Perth Amboy-Sayreville, NJ"', add
label define metarea_lbl 548 `"New Haven-Meriden, CT"', add
label define metarea_lbl 552 `"New London-Norwich, CT/RI"', add
label define metarea_lbl 556 `"New Orleans, LA"', add
label define metarea_lbl 560 `"New York, NY-Northeastern NJ"', add
label define metarea_lbl 564 `"Newark, OH"', add
label define metarea_lbl 566 `"Newburgh-Middletown, NY"', add
label define metarea_lbl 572 `"Norfolk-VA Beach--Newport News, VA"', add
label define metarea_lbl 576 `"Norwalk, CT"', add
label define metarea_lbl 579 `"Ocala, FL"', add
label define metarea_lbl 580 `"Odessa, TX"', add
label define metarea_lbl 588 `"Oklahoma City, OK"', add
label define metarea_lbl 591 `"Olympia, WA"', add
label define metarea_lbl 592 `"Omaha, NE/IA"', add
label define metarea_lbl 595 `"Orange, NY"', add
label define metarea_lbl 596 `"Orlando, FL"', add
label define metarea_lbl 599 `"Owensboro, KY"', add
label define metarea_lbl 601 `"Panama City, FL"', add
label define metarea_lbl 602 `"Parkersburg-Marietta,WV/OH"', add
label define metarea_lbl 603 `"Pascagoula-Moss Point, MS"', add
label define metarea_lbl 608 `"Pensacola, FL"', add
label define metarea_lbl 612 `"Peoria, IL"', add
label define metarea_lbl 616 `"Philadelphia, PA/NJ"', add
label define metarea_lbl 620 `"Phoenix, AZ"', add
label define metarea_lbl 628 `"Pittsburgh, PA"', add
label define metarea_lbl 632 `"Pittsfield, MA"', add
label define metarea_lbl 636 `"Ponce, PR"', add
label define metarea_lbl 640 `"Portland, ME"', add
label define metarea_lbl 644 `"Portland, OR/WA"', add
label define metarea_lbl 645 `"Portsmouth-Dover--Rochester, NH/ME"', add
label define metarea_lbl 646 `"Poughkeepsie, NY"', add
label define metarea_lbl 648 `"Providence-Fall River-Pawtucket, MA/RI"', add
label define metarea_lbl 652 `"Provo-Orem, UT"', add
label define metarea_lbl 656 `"Pueblo, CO"', add
label define metarea_lbl 658 `"Punta Gorda, FL"', add
label define metarea_lbl 660 `"Racine, WI"', add
label define metarea_lbl 664 `"Raleigh-Durham, NC"', add
label define metarea_lbl 666 `"Rapid City, SD"', add
label define metarea_lbl 668 `"Reading, PA"', add
label define metarea_lbl 669 `"Redding, CA"', add
label define metarea_lbl 672 `"Reno, NV"', add
label define metarea_lbl 674 `"Richland-Kennewick-Pasco, WA"', add
label define metarea_lbl 676 `"Richmond-Petersburg, VA"', add
label define metarea_lbl 678 `"Riverside-San Bernardino, CA"', add
label define metarea_lbl 680 `"Roanoke, VA"', add
label define metarea_lbl 682 `"Rochester, MN"', add
label define metarea_lbl 684 `"Rochester, NY"', add
label define metarea_lbl 688 `"Rockford, IL"', add
label define metarea_lbl 689 `"Rocky Mount, NC"', add
label define metarea_lbl 692 `"Sacramento, CA"', add
label define metarea_lbl 696 `"Saginaw-Bay City-Midland, MI"', add
label define metarea_lbl 698 `"St. Cloud, MN"', add
label define metarea_lbl 700 `"St. Joseph, MO"', add
label define metarea_lbl 704 `"St. Louis, MO/IL"', add
label define metarea_lbl 708 `"Salem, OR"', add
label define metarea_lbl 712 `"Salinas-Sea Side-Monterey, CA"', add
label define metarea_lbl 714 `"Salisbury-Concord, NC"', add
label define metarea_lbl 716 `"Salt Lake City-Ogden, UT"', add
label define metarea_lbl 720 `"San Angelo, TX"', add
label define metarea_lbl 724 `"San Antonio, TX"', add
label define metarea_lbl 732 `"San Diego, CA"', add
label define metarea_lbl 736 `"San Francisco-Oakland-Vallejo, CA"', add
label define metarea_lbl 740 `"San Jose, CA"', add
label define metarea_lbl 744 `"San Juan-Bayamon, PR"', add
label define metarea_lbl 746 `"San Luis Obispo-Atascad-P Robles, CA"', add
label define metarea_lbl 747 `"Santa Barbara-Santa Maria-Lompoc, CA"', add
label define metarea_lbl 748 `"Santa Cruz, CA"', add
label define metarea_lbl 749 `"Santa Fe, NM"', add
label define metarea_lbl 750 `"Santa Rosa-Petaluma, CA"', add
label define metarea_lbl 751 `"Sarasota, FL"', add
label define metarea_lbl 752 `"Savannah, GA"', add
label define metarea_lbl 756 `"Scranton-Wilkes-Barre, PA"', add
label define metarea_lbl 760 `"Seattle-Everett, WA"', add
label define metarea_lbl 761 `"Sharon, PA"', add
label define metarea_lbl 762 `"Sheboygan, WI"', add
label define metarea_lbl 764 `"Sherman-Davidson, TX"', add
label define metarea_lbl 768 `"Shreveport, LA"', add
label define metarea_lbl 772 `"Sioux City, IA/NE"', add
label define metarea_lbl 776 `"Sioux Falls, SD"', add
label define metarea_lbl 780 `"South Bend-Mishawaka, IN"', add
label define metarea_lbl 784 `"Spokane, WA"', add
label define metarea_lbl 788 `"Springfield, IL"', add
label define metarea_lbl 792 `"Springfield, MO"', add
label define metarea_lbl 800 `"Springfield-Holyoke-Chicopee, MA"', add
label define metarea_lbl 804 `"Stamford, CT"', add
label define metarea_lbl 805 `"State College, PA"', add
label define metarea_lbl 808 `"Steubenville-Weirton,OH/WV"', add
label define metarea_lbl 812 `"Stockton, CA"', add
label define metarea_lbl 814 `"Sumter, SC"', add
label define metarea_lbl 816 `"Syracuse, NY"', add
label define metarea_lbl 820 `"Tacoma, WA"', add
label define metarea_lbl 824 `"Tallahassee, FL"', add
label define metarea_lbl 828 `"Tampa-St. Petersburg-Clearwater, FL"', add
label define metarea_lbl 832 `"Terre Haute, IN"', add
label define metarea_lbl 836 `"Texarkana, TX/AR"', add
label define metarea_lbl 840 `"Toledo, OH/MI"', add
label define metarea_lbl 844 `"Topeka, KS"', add
label define metarea_lbl 848 `"Trenton, NJ"', add
label define metarea_lbl 852 `"Tucson, AZ"', add
label define metarea_lbl 856 `"Tulsa, OK"', add
label define metarea_lbl 860 `"Tuscaloosa, AL"', add
label define metarea_lbl 864 `"Tyler, TX"', add
label define metarea_lbl 868 `"Utica-Rome, NY"', add
label define metarea_lbl 873 `"Ventura-Oxnard-Simi Valley, CA"', add
label define metarea_lbl 875 `"Victoria, TX"', add
label define metarea_lbl 876 `"Vineland-Milville-Bridgetown, NJ"', add
label define metarea_lbl 878 `"Visalia-Tulare-Porterville, CA"', add
label define metarea_lbl 880 `"Waco, TX"', add
label define metarea_lbl 884 `"Washington, DC/MD/VA"', add
label define metarea_lbl 888 `"Waterbury, CT"', add
label define metarea_lbl 892 `"Waterloo-Cedar Falls, IA"', add
label define metarea_lbl 894 `"Wausau, WI"', add
label define metarea_lbl 896 `"West Palm Beach-Boca Raton-Delray Beach, FL"', add
label define metarea_lbl 900 `"Wheeling, WV/OH"', add
label define metarea_lbl 904 `"Wichita, KS"', add
label define metarea_lbl 908 `"Wichita Falls, TX"', add
label define metarea_lbl 914 `"Williamsport, PA"', add
label define metarea_lbl 916 `"Wilmington, DE/NJ/MD"', add
label define metarea_lbl 920 `"Wilmington, NC"', add
label define metarea_lbl 924 `"Worcester, MA"', add
label define metarea_lbl 926 `"Yakima, WA"', add
label define metarea_lbl 927 `"Yolo, CA"', add
label define metarea_lbl 928 `"York, PA"', add
label define metarea_lbl 932 `"Youngstown-Warren, OH/PA"', add
label define metarea_lbl 934 `"Yuba City, CA"', add
label define metarea_lbl 936 `"Yuma, AZ"', add
label values metarea metarea_lbl

label define metaread_lbl 0000 `"Not identifiable or not in an MSA"'
label define metaread_lbl 0040 `"Abilene, TX"', add
label define metaread_lbl 0060 `"Aguadilla, PR"', add
label define metaread_lbl 0080 `"Akron, OH"', add
label define metaread_lbl 0120 `"Albany, GA"', add
label define metaread_lbl 0160 `"Albany-Schenectady-Troy, NY"', add
label define metaread_lbl 0200 `"Albuquerque, NM"', add
label define metaread_lbl 0220 `"Alexandria, LA"', add
label define metaread_lbl 0240 `"Allentown-Bethlehem-Easton, PA/NJ"', add
label define metaread_lbl 0280 `"Altoona, PA"', add
label define metaread_lbl 0320 `"Amarillo, TX"', add
label define metaread_lbl 0380 `"Anchorage, AK"', add
label define metaread_lbl 0400 `"Anderson, IN"', add
label define metaread_lbl 0440 `"Ann Arbor, MI"', add
label define metaread_lbl 0450 `"Anniston, AL"', add
label define metaread_lbl 0460 `"Appleton-Oshkosh-Neenah, WI"', add
label define metaread_lbl 0470 `"Arecibo, PR"', add
label define metaread_lbl 0480 `"Asheville, NC"', add
label define metaread_lbl 0500 `"Athens, GA"', add
label define metaread_lbl 0520 `"Atlanta, GA"', add
label define metaread_lbl 0560 `"Atlantic City, NJ"', add
label define metaread_lbl 0580 `"Auburn-Opelika, AL"', add
label define metaread_lbl 0600 `"Augusta-Aiken, GA/SC"', add
label define metaread_lbl 0640 `"Austin, TX"', add
label define metaread_lbl 0680 `"Bakersfield, CA"', add
label define metaread_lbl 0720 `"Baltimore, MD"', add
label define metaread_lbl 0730 `"Bangor, ME"', add
label define metaread_lbl 0740 `"Barnstable-Yarmouth, MA"', add
label define metaread_lbl 0760 `"Baton Rouge, LA"', add
label define metaread_lbl 0780 `"Battle Creek, MI"', add
label define metaread_lbl 0840 `"Beaumont-Port Arthur-Orange, TX"', add
label define metaread_lbl 0860 `"Bellingham, WA"', add
label define metaread_lbl 0870 `"Benton Harbor, MI"', add
label define metaread_lbl 0880 `"Billings, MT"', add
label define metaread_lbl 0920 `"Biloxi-Gulfport, MS"', add
label define metaread_lbl 0960 `"Binghamton, NY"', add
label define metaread_lbl 1000 `"Birmingham, AL"', add
label define metaread_lbl 1010 `"Bismarck, ND"', add
label define metaread_lbl 1020 `"Bloomington, IN"', add
label define metaread_lbl 1040 `"Bloomington-Normal, IL"', add
label define metaread_lbl 1080 `"Boise City, ID"', add
label define metaread_lbl 1120 `"Boston, MA"', add
label define metaread_lbl 1121 `"Lawrence-Haverhill, MA/NH"', add
label define metaread_lbl 1122 `"Lowell, MA/NH"', add
label define metaread_lbl 1123 `"Salem-Gloucester, MA"', add
label define metaread_lbl 1140 `"Bradenton, FL"', add
label define metaread_lbl 1150 `"Bremerton, WA"', add
label define metaread_lbl 1160 `"Bridgeport, CT"', add
label define metaread_lbl 1200 `"Brockton, MA"', add
label define metaread_lbl 1240 `"Brownsville-Harlingen-San Benito, TX"', add
label define metaread_lbl 1260 `"Bryan-College Station, TX"', add
label define metaread_lbl 1280 `"Buffalo-Niagara Falls, NY"', add
label define metaread_lbl 1281 `"Niagara Falls, NY"', add
label define metaread_lbl 1300 `"Burlington, NC"', add
label define metaread_lbl 1310 `"Burlington, VT"', add
label define metaread_lbl 1320 `"Canton, OH"', add
label define metaread_lbl 1330 `"Caguas, PR"', add
label define metaread_lbl 1350 `"Casper, WY"', add
label define metaread_lbl 1360 `"Cedar Rapids, IA"', add
label define metaread_lbl 1400 `"Champaign-Urbana-Rantoul, IL"', add
label define metaread_lbl 1440 `"Charleston-N. Charleston, SC"', add
label define metaread_lbl 1480 `"Charleston, WV"', add
label define metaread_lbl 1520 `"Charlotte-Gastonia-Rock Hill, SC"', add
label define metaread_lbl 1521 `"Rock Hill, SC"', add
label define metaread_lbl 1540 `"Charlottesville, VA"', add
label define metaread_lbl 1560 `"Chattanooga, TN/GA"', add
label define metaread_lbl 1580 `"Cheyenne, WY"', add
label define metaread_lbl 1600 `"Chicago-Gary-Lake, IL"', add
label define metaread_lbl 1601 `"Aurora-Elgin, IL"', add
label define metaread_lbl 1602 `"Gary-Hammond-East Chicago, IN"', add
label define metaread_lbl 1603 `"Joliet, IL"', add
label define metaread_lbl 1604 `"Lake County, IL"', add
label define metaread_lbl 1620 `"Chico, CA"', add
label define metaread_lbl 1640 `"Cincinnati, OH/KY/IN"', add
label define metaread_lbl 1660 `"Clarksville-Hopkinsville, TN/KY"', add
label define metaread_lbl 1680 `"Cleveland, OH"', add
label define metaread_lbl 1720 `"Colorado Springs, CO"', add
label define metaread_lbl 1740 `"Columbia, MO"', add
label define metaread_lbl 1760 `"Columbia, SC"', add
label define metaread_lbl 1800 `"Columbus, GA/AL"', add
label define metaread_lbl 1840 `"Columbus, OH"', add
label define metaread_lbl 1880 `"Corpus Christi, TX"', add
label define metaread_lbl 1900 `"Cumberland, MD/WV"', add
label define metaread_lbl 1920 `"Dallas-Fort Worth, TX"', add
label define metaread_lbl 1921 `"Fort Worth-Arlington, TX"', add
label define metaread_lbl 1930 `"Danbury, CT"', add
label define metaread_lbl 1950 `"Danville, VA"', add
label define metaread_lbl 1960 `"Davenport, IA - Rock Island-Moline, IL"', add
label define metaread_lbl 2000 `"Dayton-Springfield, OH"', add
label define metaread_lbl 2001 `"Springfield, OH"', add
label define metaread_lbl 2020 `"Daytona Beach, FL"', add
label define metaread_lbl 2030 `"Decatur, AL"', add
label define metaread_lbl 2040 `"Decatur, IL"', add
label define metaread_lbl 2080 `"Denver-Boulder-Longmont, CO"', add
label define metaread_lbl 2081 `"Boulder-Longmont, CO"', add
label define metaread_lbl 2120 `"Des Moines, IA"', add
label define metaread_lbl 2121 `"Polk, IA"', add
label define metaread_lbl 2160 `"Detroit, MI"', add
label define metaread_lbl 2180 `"Dothan, AL"', add
label define metaread_lbl 2190 `"Dover, DE"', add
label define metaread_lbl 2200 `"Dubuque, IA"', add
label define metaread_lbl 2240 `"Duluth-Superior, MN/WI"', add
label define metaread_lbl 2281 `"Dutchess Co., NY"', add
label define metaread_lbl 2290 `"Eau Claire, WI"', add
label define metaread_lbl 2310 `"El Paso, TX"', add
label define metaread_lbl 2320 `"Elkhart-Goshen, IN"', add
label define metaread_lbl 2330 `"Elmira, NY"', add
label define metaread_lbl 2340 `"Enid, OK"', add
label define metaread_lbl 2360 `"Erie, PA"', add
label define metaread_lbl 2400 `"Eugene-Springfield, OR"', add
label define metaread_lbl 2440 `"Evansville, IN/KY"', add
label define metaread_lbl 2520 `"Fargo-Morehead, ND/MN"', add
label define metaread_lbl 2560 `"Fayetteville, NC"', add
label define metaread_lbl 2580 `"Fayetteville-Springdale, AR"', add
label define metaread_lbl 2600 `"Fitchburg-Leominster, MA"', add
label define metaread_lbl 2620 `"Flagstaff, AZ/UT"', add
label define metaread_lbl 2640 `"Flint, MI"', add
label define metaread_lbl 2650 `"Florence, AL"', add
label define metaread_lbl 2660 `"Florence, SC"', add
label define metaread_lbl 2670 `"Fort Collins-Loveland, CO"', add
label define metaread_lbl 2680 `"Fort Lauderdale-Hollywood-Pompano Beach, FL"', add
label define metaread_lbl 2700 `"Fort Myers-Cape Coral, FL"', add
label define metaread_lbl 2710 `"Fort Pierce, FL"', add
label define metaread_lbl 2720 `"Fort Smith, AR/OK"', add
label define metaread_lbl 2750 `"Fort Walton Beach, FL"', add
label define metaread_lbl 2760 `"Fort Wayne, IN"', add
label define metaread_lbl 2840 `"Fresno, CA"', add
label define metaread_lbl 2880 `"Gadsden, AL"', add
label define metaread_lbl 2900 `"Gainesville, FL"', add
label define metaread_lbl 2920 `"Galveston-Texas City, TX"', add
label define metaread_lbl 2970 `"Glens Falls, NY"', add
label define metaread_lbl 2980 `"Goldsboro, NC"', add
label define metaread_lbl 2990 `"Grand Forks, ND/MN"', add
label define metaread_lbl 3000 `"Grand Rapids, MI"', add
label define metaread_lbl 3010 `"Grand Junction, CO"', add
label define metaread_lbl 3040 `"Great Falls, MT"', add
label define metaread_lbl 3060 `"Greeley, CO"', add
label define metaread_lbl 3080 `"Green Bay, WI"', add
label define metaread_lbl 3120 `"Greensboro-Winston Salem-High Point, NC"', add
label define metaread_lbl 3121 `"Winston-Salem, NC"', add
label define metaread_lbl 3150 `"Greenville, NC"', add
label define metaread_lbl 3160 `"Greenville-Spartenburg-Anderson, SC"', add
label define metaread_lbl 3161 `"Anderson, SC"', add
label define metaread_lbl 3180 `"Hagerstown, MD"', add
label define metaread_lbl 3200 `"Hamilton-Middleton, OH"', add
label define metaread_lbl 3240 `"Harrisburg-Lebanon-Carlisle, PA"', add
label define metaread_lbl 3280 `"Hartford-Bristol-Middleton-New Britain, CT"', add
label define metaread_lbl 3281 `"Bristol, CT"', add
label define metaread_lbl 3282 `"Middletown, CT"', add
label define metaread_lbl 3283 `"New Britain, CT"', add
label define metaread_lbl 3290 `"Hickory-Morganton, NC"', add
label define metaread_lbl 3300 `"Hattiesburg, MS"', add
label define metaread_lbl 3320 `"Honolulu, HI"', add
label define metaread_lbl 3350 `"Houma-Thibodoux, LA"', add
label define metaread_lbl 3360 `"Houston-Brazoria, TX"', add
label define metaread_lbl 3361 `"Brazoria, TX"', add
label define metaread_lbl 3400 `"Huntington-Ashland, WV/KY/OH"', add
label define metaread_lbl 3440 `"Huntsville, AL"', add
label define metaread_lbl 3480 `"Indianapolis, IN"', add
label define metaread_lbl 3500 `"Iowa City, IA"', add
label define metaread_lbl 3520 `"Jackson, MI"', add
label define metaread_lbl 3560 `"Jackson, MS"', add
label define metaread_lbl 3580 `"Jackson, TN"', add
label define metaread_lbl 3590 `"Jacksonville, FL"', add
label define metaread_lbl 3600 `"Jacksonville, NC"', add
label define metaread_lbl 3610 `"Jamestown-Dunkirk, NY"', add
label define metaread_lbl 3620 `"Janesville-Beloit, WI"', add
label define metaread_lbl 3660 `"Johnson City-Kingsport-Bristol, TN/VA"', add
label define metaread_lbl 3680 `"Johnstown, PA"', add
label define metaread_lbl 3710 `"Joplin, MO"', add
label define metaread_lbl 3720 `"Kalamazoo-Portage, MI"', add
label define metaread_lbl 3740 `"Kankakee, IL"', add
label define metaread_lbl 3760 `"Kansas City, MO/KS"', add
label define metaread_lbl 3800 `"Kenosha, WI"', add
label define metaread_lbl 3810 `"Kileen-Temple, TX"', add
label define metaread_lbl 3840 `"Knoxville, TN"', add
label define metaread_lbl 3850 `"Kokomo, IN"', add
label define metaread_lbl 3870 `"LaCrosse, WI"', add
label define metaread_lbl 3880 `"Lafayette, LA"', add
label define metaread_lbl 3920 `"Lafayette-W. Lafayette, IN"', add
label define metaread_lbl 3960 `"Lake Charles, LA"', add
label define metaread_lbl 3980 `"Lakeland-Winterhaven, FL"', add
label define metaread_lbl 4000 `"Lancaster, PA"', add
label define metaread_lbl 4040 `"Lansing-E. Lansing, MI"', add
label define metaread_lbl 4080 `"Laredo, TX"', add
label define metaread_lbl 4100 `"Las Cruces, NM"', add
label define metaread_lbl 4120 `"Las Vegas, NV"', add
label define metaread_lbl 4150 `"Lawrence, KS"', add
label define metaread_lbl 4200 `"Lawton, OK"', add
label define metaread_lbl 4240 `"Lewiston-Auburn, ME"', add
label define metaread_lbl 4280 `"Lexington-Fayette, KY"', add
label define metaread_lbl 4320 `"Lima, OH"', add
label define metaread_lbl 4360 `"Lincoln, NE"', add
label define metaread_lbl 4400 `"Little Rock-N. Little Rock, AR"', add
label define metaread_lbl 4410 `"Long Branch-Asbury Park, NJ"', add
label define metaread_lbl 4420 `"Longview-Marshall, TX"', add
label define metaread_lbl 4440 `"Lorain-Elyria, OH"', add
label define metaread_lbl 4480 `"Los Angeles-Long Beach, CA"', add
label define metaread_lbl 4481 `"Anaheim-Santa Ana-Garden Grove, CA"', add
label define metaread_lbl 4482 `"Orange County, CA"', add
label define metaread_lbl 4520 `"Louisville, KY/IN"', add
label define metaread_lbl 4600 `"Lubbock, TX"', add
label define metaread_lbl 4640 `"Lynchburg, VA"', add
label define metaread_lbl 4680 `"Macon-Warner Robins, GA"', add
label define metaread_lbl 4720 `"Madison, WI"', add
label define metaread_lbl 4760 `"Manchester, NH"', add
label define metaread_lbl 4800 `"Mansfield, OH"', add
label define metaread_lbl 4840 `"Mayaguez, PR"', add
label define metaread_lbl 4880 `"McAllen-Edinburg-Pharr-Mission, TX"', add
label define metaread_lbl 4890 `"Medford, OR"', add
label define metaread_lbl 4900 `"Melbourne-Titusville-Cocoa-Palm Bay, FL"', add
label define metaread_lbl 4920 `"Memphis, TN/AR/MS"', add
label define metaread_lbl 4940 `"Merced, CA"', add
label define metaread_lbl 5000 `"Miami-Hialeah, FL"', add
label define metaread_lbl 5040 `"Midland, TX"', add
label define metaread_lbl 5080 `"Milwaukee, WI"', add
label define metaread_lbl 5120 `"Minneapolis-St. Paul, MN"', add
label define metaread_lbl 5140 `"Missoula, MT"', add
label define metaread_lbl 5160 `"Mobile, AL"', add
label define metaread_lbl 5170 `"Modesto, CA"', add
label define metaread_lbl 5190 `"Monmouth-Ocean, NJ"', add
label define metaread_lbl 5200 `"Monroe, LA"', add
label define metaread_lbl 5240 `"Montgomery, AL"', add
label define metaread_lbl 5280 `"Muncie, IN"', add
label define metaread_lbl 5320 `"Muskegon-Norton Shores-Muskegon Heights, MI"', add
label define metaread_lbl 5330 `"Myrtle Beach, SC"', add
label define metaread_lbl 5340 `"Naples, FL"', add
label define metaread_lbl 5350 `"Nashua, NH"', add
label define metaread_lbl 5360 `"Nashville, TN"', add
label define metaread_lbl 5400 `"New Bedford, MA"', add
label define metaread_lbl 5460 `"New Brunswick-Perth Amboy-Sayreville, NJ"', add
label define metaread_lbl 5480 `"New Haven-Meriden, CT"', add
label define metaread_lbl 5481 `"Meriden"', add
label define metaread_lbl 5482 `"New Haven, CT"', add
label define metaread_lbl 5520 `"New London-Norwich, CT/RI"', add
label define metaread_lbl 5560 `"New Orleans, LA"', add
label define metaread_lbl 5600 `"New York, NY-Northeastern NJ"', add
label define metaread_lbl 5601 `"Nassau Co, NY"', add
label define metaread_lbl 5602 `"Bergen-Passaic, NJ"', add
label define metaread_lbl 5603 `"Jersey City, NJ"', add
label define metaread_lbl 5604 `"Middlesex-Somerset-Hunterdon, NJ"', add
label define metaread_lbl 5605 `"Newark, NJ"', add
label define metaread_lbl 5640 `"Newark, OH"', add
label define metaread_lbl 5660 `"Newburgh-Middletown, NY"', add
label define metaread_lbl 5720 `"Norfolk-VA Beach-Newport News, VA"', add
label define metaread_lbl 5721 `"Newport News-Hampton"', add
label define metaread_lbl 5722 `"Norfolk- VA Beach-Portsmouth"', add
label define metaread_lbl 5760 `"Norwalk, CT"', add
label define metaread_lbl 5790 `"Ocala, FL"', add
label define metaread_lbl 5800 `"Odessa, TX"', add
label define metaread_lbl 5880 `"Oklahoma City, OK"', add
label define metaread_lbl 5910 `"Olympia, WA"', add
label define metaread_lbl 5920 `"Omaha, NE/IA"', add
label define metaread_lbl 5950 `"Orange, NY"', add
label define metaread_lbl 5960 `"Orlando, FL"', add
label define metaread_lbl 5990 `"Owensboro, KY"', add
label define metaread_lbl 6010 `"Panama City, FL"', add
label define metaread_lbl 6020 `"Parkersburg-Marietta,WV/OH"', add
label define metaread_lbl 6030 `"Pascagoula-Moss Point, MS"', add
label define metaread_lbl 6080 `"Pensacola, FL"', add
label define metaread_lbl 6120 `"Peoria, IL"', add
label define metaread_lbl 6160 `"Philadelphia, PA/NJ"', add
label define metaread_lbl 6200 `"Phoenix, AZ"', add
label define metaread_lbl 6240 `"Pine Bluff, AR"', add
label define metaread_lbl 6280 `"Pittsburgh-Beaver Valley, PA"', add
label define metaread_lbl 6281 `"Beaver County, PA"', add
label define metaread_lbl 6320 `"Pittsfield, MA"', add
label define metaread_lbl 6360 `"Ponce, PR"', add
label define metaread_lbl 6400 `"Portland, ME"', add
label define metaread_lbl 6440 `"Portland-Vancouver, OR"', add
label define metaread_lbl 6441 `"Vancouver, WA"', add
label define metaread_lbl 6450 `"Portsmouth-Dover-Rochester, NH/ME"', add
label define metaread_lbl 6460 `"Poughkeepsie, NY"', add
label define metaread_lbl 6480 `"Providence-Fall River-Pawtucket, MA/RI"', add
label define metaread_lbl 6481 `"Fall River, MA/RI"', add
label define metaread_lbl 6482 `"Pawtuckett-Woonsocket-Attleboro, RI/MA"', add
label define metaread_lbl 6520 `"Provo-Orem, UT"', add
label define metaread_lbl 6560 `"Pueblo, CO"', add
label define metaread_lbl 6580 `"Punta Gorda, FL"', add
label define metaread_lbl 6600 `"Racine, WI"', add
label define metaread_lbl 6640 `"Raleigh-Durham, NC"', add
label define metaread_lbl 6641 `"Durham, NC"', add
label define metaread_lbl 6660 `"Rapid City, SD"', add
label define metaread_lbl 6680 `"Reading, PA"', add
label define metaread_lbl 6690 `"Redding, CA"', add
label define metaread_lbl 6720 `"Reno, NV"', add
label define metaread_lbl 6740 `"Richland-Kennewick-Pasco, WA"', add
label define metaread_lbl 6760 `"Richmond-Petersburg, VA"', add
label define metaread_lbl 6761 `"Petersburg-Colonial Heights, VA"', add
label define metaread_lbl 6780 `"Riverside-San Bernardino, CA"', add
label define metaread_lbl 6781 `"San Bernardino, CA"', add
label define metaread_lbl 6800 `"Roanoke, VA"', add
label define metaread_lbl 6820 `"Rochester, MN"', add
label define metaread_lbl 6840 `"Rochester, NY"', add
label define metaread_lbl 6880 `"Rockford, IL"', add
label define metaread_lbl 6895 `"Rocky Mount, NC"', add
label define metaread_lbl 6920 `"Sacramento, CA"', add
label define metaread_lbl 6960 `"Saginaw-Bay City-Midland, MI"', add
label define metaread_lbl 6961 `"Bay City, MI"', add
label define metaread_lbl 6980 `"St. Cloud, MN"', add
label define metaread_lbl 7000 `"St. Joseph, MO"', add
label define metaread_lbl 7040 `"St. Louis, MO/IL"', add
label define metaread_lbl 7080 `"Salem, OR"', add
label define metaread_lbl 7120 `"Salinas-Sea Side-Monterey, CA"', add
label define metaread_lbl 7140 `"Salisbury-Concord, NC"', add
label define metaread_lbl 7160 `"Salt Lake City-Ogden, UT"', add
label define metaread_lbl 7161 `"Ogden"', add
label define metaread_lbl 7200 `"San Angelo, TX"', add
label define metaread_lbl 7240 `"San Antonio, TX"', add
label define metaread_lbl 7320 `"San Diego, CA"', add
label define metaread_lbl 7360 `"San Francisco-Oakland-Vallejo, CA"', add
label define metaread_lbl 7361 `"Oakland, CA"', add
label define metaread_lbl 7362 `"Vallejo-Fairfield-Napa, CA"', add
label define metaread_lbl 7400 `"San Jose, CA"', add
label define metaread_lbl 7440 `"San Juan-Bayamon, PR"', add
label define metaread_lbl 7460 `"San Luis Obispo-Atascad-P Robles, CA"', add
label define metaread_lbl 7470 `"Santa Barbara-Santa Maria-Lompoc, CA"', add
label define metaread_lbl 7480 `"Santa Cruz, CA"', add
label define metaread_lbl 7490 `"Santa Fe, NM"', add
label define metaread_lbl 7500 `"Santa Rosa-Petaluma, CA"', add
label define metaread_lbl 7510 `"Sarasota, FL"', add
label define metaread_lbl 7520 `"Savannah, GA"', add
label define metaread_lbl 7560 `"Scranton-Wilkes-Barre, PA"', add
label define metaread_lbl 7561 `"Wilkes-Barre-Hazelton, PA"', add
label define metaread_lbl 7600 `"Seattle-Everett, WA"', add
label define metaread_lbl 7610 `"Sharon, PA"', add
label define metaread_lbl 7620 `"Sheboygan, WI"', add
label define metaread_lbl 7640 `"Sherman-Denison, TX"', add
label define metaread_lbl 7680 `"Shreveport, LA"', add
label define metaread_lbl 7720 `"Sioux City, IA/NE"', add
label define metaread_lbl 7760 `"Sioux Falls, SD"', add
label define metaread_lbl 7800 `"South Bend-Mishawaka, IN"', add
label define metaread_lbl 7840 `"Spokane, WA"', add
label define metaread_lbl 7880 `"Springfield, IL"', add
label define metaread_lbl 7920 `"Springfield, MO"', add
label define metaread_lbl 8000 `"Springfield-Holyoke-Chicopee, MA"', add
label define metaread_lbl 8040 `"Stamford, CT"', add
label define metaread_lbl 8050 `"State College, PA"', add
label define metaread_lbl 8080 `"Steubenville-Weirton,OH/WV"', add
label define metaread_lbl 8120 `"Stockton, CA"', add
label define metaread_lbl 8140 `"Sumter, SC"', add
label define metaread_lbl 8160 `"Syracuse, NY"', add
label define metaread_lbl 8200 `"Tacoma, WA"', add
label define metaread_lbl 8240 `"Tallahassee, FL"', add
label define metaread_lbl 8280 `"Tampa-St. Petersburg-Clearwater, FL"', add
label define metaread_lbl 8320 `"Terre Haute, IN"', add
label define metaread_lbl 8360 `"Texarkana, TX/AR"', add
label define metaread_lbl 8400 `"Toledo, OH/MI"', add
label define metaread_lbl 8440 `"Topeka, KS"', add
label define metaread_lbl 8480 `"Trenton, NJ"', add
label define metaread_lbl 8520 `"Tucson, AZ"', add
label define metaread_lbl 8560 `"Tulsa, OK"', add
label define metaread_lbl 8600 `"Tuscaloosa, AL"', add
label define metaread_lbl 8640 `"Tyler, TX"', add
label define metaread_lbl 8680 `"Utica-Rome, NY"', add
label define metaread_lbl 8730 `"Ventura-Oxnard-Simi Valley, CA"', add
label define metaread_lbl 8750 `"Victoria, TX"', add
label define metaread_lbl 8760 `"Vineland-Milville-Bridgetown, NJ"', add
label define metaread_lbl 8780 `"Visalia-Tulare-Porterville, CA"', add
label define metaread_lbl 8800 `"Waco, TX"', add
label define metaread_lbl 8840 `"Washington, DC/MD/VA"', add
label define metaread_lbl 8880 `"Waterbury, CT"', add
label define metaread_lbl 8920 `"Waterloo-Cedar Falls, IA"', add
label define metaread_lbl 8940 `"Wausau, WI"', add
label define metaread_lbl 8960 `"West Palm Beach-Boca Raton-Delray Beach, FL"', add
label define metaread_lbl 9000 `"Wheeling, WV/OH"', add
label define metaread_lbl 9040 `"Wichita, KS"', add
label define metaread_lbl 9080 `"Wichita Falls, TX"', add
label define metaread_lbl 9140 `"Williamsport, PA"', add
label define metaread_lbl 9160 `"Wilmington, DE/NJ/MD"', add
label define metaread_lbl 9200 `"Wilmington, NC"', add
label define metaread_lbl 9240 `"Worcester, MA"', add
label define metaread_lbl 9260 `"Yakima, WA"', add
label define metaread_lbl 9270 `"Yolo, CA"', add
label define metaread_lbl 9280 `"York, PA"', add
label define metaread_lbl 9320 `"Youngstown-Warren, OH/PA"', add
label define metaread_lbl 9340 `"Yuba City, CA"', add
label define metaread_lbl 9360 `"Yuma, AZ"', add
label values metaread metaread_lbl

label define gq_lbl 0 `"Vacant unit"'
label define gq_lbl 1 `"Households under 1970 definition"', add
label define gq_lbl 2 `"Additional households under 1990 definition"', add
label define gq_lbl 3 `"Group quarters--Institutions"', add
label define gq_lbl 4 `"Other group quarters"', add
label define gq_lbl 5 `"Additional households under 2000 definition"', add
label define gq_lbl 6 `"Fragment"', add
label values gq gq_lbl

label define migtyp00_lbl 00 `"N/A"'
label define migtyp00_lbl 01 `"Did not live in the US or Puerto Rico in 1995"', add
label define migtyp00_lbl 02 `"Lived in Puerto Rico in 1995 and the US in 2000"', add
label define migtyp00_lbl 11 `"Inside central city, fully-identified MSA"', add
label define migtyp00_lbl 12 `"Outside central city, fully-identified MSA"', add
label define migtyp00_lbl 13 `"Inside and outside central city, fully-identified MSA"', add
label define migtyp00_lbl 14 `"Contains entire MSA only"', add
label define migtyp00_lbl 21 `"Inside central city, partially-identified MSA"', add
label define migtyp00_lbl 22 `"Outside central city, partially-identified MSA"', add
label define migtyp00_lbl 23 `"Inside and outside central city, partially-identified MSA"', add
label define migtyp00_lbl 31 `"Inside central city, fully-identified PMSA and CMSA"', add
label define migtyp00_lbl 32 `"Outside central city, fully-identified PMSA and CMSA"', add
label define migtyp00_lbl 33 `"Inside and outside central city, fully-identified PMSA and CMSA"', add
label define migtyp00_lbl 34 `"Contains entire PMSA only, fully-identified PMSA and CMSA"', add
label define migtyp00_lbl 41 `"Inside central city, fully-identified PMSA, partial CMSA"', add
label define migtyp00_lbl 42 `"Outside central city, fully-identified PMSA, partial CMSA"', add
label define migtyp00_lbl 43 `"Inside and outside central city, fully-identified PMSA, partial CMSA"', add
label define migtyp00_lbl 44 `"Contains an entire PMSA only, fully-identified PMSA, partial CMSA"', add
label define migtyp00_lbl 51 `"Inside central city, partially-identified PMSA and CMSA"', add
label define migtyp00_lbl 52 `"Outside central city, partially-identified PMSA and CMSA"', add
label define migtyp00_lbl 53 `"Both inside and outside central city, partially-identified PMSA and CMSA"', add
label define migtyp00_lbl 70 `"Contains both metro and non-metro territory"', add
label define migtyp00_lbl 80 `"Contains only metro territory in 2 or more metros"', add
label define migtyp00_lbl 90 `"Contains only nonmetro territory"', add
label values migtyp00 migtyp00_lbl

label define disabwrk_lbl 0 `"N/A"'
label define disabwrk_lbl 1 `"No disability that affects work"', add
label define disabwrk_lbl 2 `"Disability limits but does not prevent work"', add
label define disabwrk_lbl 3 `"Disability prevents work"', add
label define disabwrk_lbl 4 `"Difficulty working"', add
label values disabwrk disabwrk_lbl

label define diffrem_lbl 0 `"N/A"'
label define diffrem_lbl 1 `"No cognitive difficulty"', add
label define diffrem_lbl 2 `"Has cognitive difficulty"', add
label values diffrem diffrem_lbl

label define diffphys_lbl 0 `"N/A"'
label define diffphys_lbl 1 `"No ambulatory difficulty"', add
label define diffphys_lbl 2 `"Has ambulatory difficulty"', add
label values diffphys diffphys_lbl

label define diffmob_lbl 0 `"N/A"'
label define diffmob_lbl 1 `"No independent living difficulty"', add
label define diffmob_lbl 2 `"Has independent living difficulty"', add
label values diffmob diffmob_lbl

label define diffcare_lbl 0 `"N/A"'
label define diffcare_lbl 1 `"No"', add
label define diffcare_lbl 2 `"Yes"', add
label values diffcare diffcare_lbl

label define diffsens_lbl 0 `"N/A"'
label define diffsens_lbl 1 `"No vision or hearing difficulty"', add
label define diffsens_lbl 2 `"Has vision or hearing difficulty"', add
label values diffsens diffsens_lbl

label define pwtype_lbl 0 `"N/A or abroad"'
label define pwtype_lbl 1 `"In metropolitan area: In central/principal city"', add
label define pwtype_lbl 2 `"In metropolitan area: In central city: In CBD"', add
label define pwtype_lbl 3 `"In metropolitan area: In central city: Not in CBD"', add
label define pwtype_lbl 4 `"In metropolitan area: Not in central/principal city"', add
label define pwtype_lbl 5 `"In metropolitan area: Central/principal city status indeterminable (mixed)"', add
label define pwtype_lbl 6 `"Not in metropolitan area; abroad; or not reported"', add
label define pwtype_lbl 7 `"Not in metropolitan area"', add
label define pwtype_lbl 8 `"Not in metropolitan area; or abroad"', add
label define pwtype_lbl 9 `"Metropolitan status indeterminable (mixed)"', add
label values pwtype pwtype_lbl





//cleaning up data

/// Recode age and keep only adults (+18) 
encode us2000a_age,  gen(age)
//keep if age >=18


/// Step 3:sampling
set seed 44 
sample 10

///Step 4 new weighting variable

gen sampl_weight = perwt * 10

//Education has multiple levels, lets collapse it

encode us2000a_educ, gen(educ)
encode us2000a_slfcare, gen(slfcare)

recode educ(0/2 = 0 "Primary school or less") (3/5 = 1 "Secondary school") ///
(6/8 = 3 "12th grade, no diploma") (9=4 "High school graduate") (10/11 =5 "Some college, no degree") (12 = 6 "Associate degree")(13 = 7 "Bachelor's degree") (14 = 8 "Master's degree") (15 =9 "Professional degree") (16/max = 10 "Doctorate degree"),gen(educat)

///Collapsing metropolitan status

recode metro (1=0 "Not in metropolitan area")(2/4=1 "In metropolitan area")(0=2 "Indeterminable (mix)"), gen(metro_sts)

svyset cluster [pweight=sampl_weight], strata(strata)

foreach x in us2000a_sex us2000a_white us2000a_black us2000a_asian us2000a_aian us2000a_nhpi us2000a_other educat metro_sts us2000a_marstat disabwrk diffrem diffphys diffmob us2000a_slfcare diffsens {
 	tab `x' if age >=18
	svy, subpop(if age>=18): tab `x'
	svy, subpop(if age>=18): tab `x', count
 	}

	

/****

Data project Part 2 	

****/
	
keep if age >=18
save dataset_part2.dta, replace

gen low_educ=1 if educ <=9
replace low_educ=0 if low_educ==.

encode us2000a_state, gen(state_code)
label define state 01 "Alabama" ///
02"Alaska" ///
04"Arizona" ///
05"Arkansas" ///
06"California" ///
08"Colorado" ///
09"Connecticut" ///
10"Delaware" ///
11"District of Columbia" ///
12"Florida" ///
13"Georgia" ///
15"Hawaii" ///
16"Idaho" ///
17"Illinois" ///
18"Indiana" ///
19"Iowa" ///
20"Kansas" ///
21"Kentucky" ///
22"Louisiana" ///
23"Maine" ///
24"Maryland" ///
25"Massachusetts" ///
26"Michigan" ///
27"Minnesota" ///	
28"Mississippi" ///	
29"Missouri" ///
30"Montana" ///	
31"Nebraska" ///
32"Nevada" ///	
33"New Hampshire" ///	
34"New Jersey" ///	
35"New Mexico" ///	
36"New York" ///	
37"North Carolina" ///	
38"North Dakota" ///	
39"Ohio" ///	
40"Oklahoma" ///	
41"Oregon" ///	
42"Pennsylvania" ///	
44"Rhode Island" ///	
45"South Carolina" ///	
46"South Dakota" ///	
47"Tennessee" ///
48"Texas" ///	
49"Utah" ///	
50"Vermont" ///	
51"Virginia" ///
53"Washington" ///	
54"West Virginia" ///
55"Wisconsin" ///	 	
56"Wyoming"	
label values state_code state

by state_code, sort: egen state_low_educ= mean(100 * low_educ)
generate c_age = (age - 45)/10

encode us2000a_sex, gen(sex)
recode sex (1=0 "Male")(2=1 "Female"), gen(female)

regress diffmob low_educ age female state_low_educ




