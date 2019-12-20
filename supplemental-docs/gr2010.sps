*** Created: October 4, 2011                                 ***.
*** Modify the path below to point to your data file         ***.

*** The specified subdirectory was not created on your       ***.
*** computer. You will need to do this.                      ***.

*** The stat program must be run against the specified       ***.
*** data file. This file is specified in the program and     ***.
*** must be saved separately                                 ***.

*** This program does not provide frequencies or             ***.
*** descriptives for all variables                           ***.

*** This program does not include reserved values in its     ***.
*** calculations for missing values                          ***.

*** There may be missing data for some institutions due to   ***.
*** the merge used to create this file                       ***.

get data  /type = txt
/file = 'U:\Data\EX\z_external_data\IPEDS_GRS\2010\gr2010.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
grtype f4
chrtstat f2
section f1
cohort f1
xgrnralm a1
grnralm f6
xgrnralw a1
grnralw f6
xgrrac03 a1
grrace03 f6
xgrrac04 a1
grrace04 f6
xgrrac05 a1
grrace05 f6
xgrrac06 a1
grrace06 f6
xgrrac07 a1
grrace07 f6
xgrrac08 a1
grrace08 f6
xgrrac09 a1
grrace09 f6
xgrrac10 a1
grrace10 f6
xgrrac11 a1
grrace11 f6
xgrrac12 a1
grrace12 f6
xgrunknm a1
grunknm f6
xgrunknw a1
grunknw f6
xgrtotlm a1
grtotlm f6
xgrtotlw a1
grtotlw f6
xgrnralt a1
grnralt f6
xgrrac18 a1
grrace18 f6
xgrrac19 a1
grrace19 f6
xgrrac20 a1
grrace20 f6
xgrrac21 a1
grrace21 f6
xgrrac22 a1
grrace22 f6
xgrunknt a1
grunknt f6
xgrtotlt a1
grtotlt f6
xgrhispm a1
grhispm f6
xgrhispw a1
grhispw f6
xgraianm a1
graianm f6
xgraianw a1
graianw f6
xgrasiam a1
grasiam f6
xgrasiaw a1
grasiaw f6
xgrbkaam a1
grbkaam f6
xgrbkaaw a1
grbkaaw f6
xgrnhpim a1
grnhpim f6
xgrnhpiw a1
grnhpiw f6
xgrwhitm a1
grwhitm f6
xgrwhitw a1
grwhitw f6
xgr2morm a1
gr2morm f6
xgr2morw a1
gr2morw f6
xgrhispt a1
grhispt f6
xgraiant a1
graiant f6
xgrasiat a1
grasiat f6
xgrbkaat a1
grbkaat f6
xgrnhpit a1
grnhpit f6
xgrwhitt a1
grwhitt f6
xgr2mort a1
gr2mort f6
xdvgrait a1
dvgrait f6
xdvgraim a1
dvgraim f6
xdvgraiw a1
dvgraiw f6
xdvgrapt a1
dvgrapt f6
xdvgrapm a1
dvgrapm f6
xdvgrapw a1
dvgrapw f6
xdvgrbkt a1
dvgrbkt f6
xdvgrbkm a1
dvgrbkm f6
xdvgrbkw a1
dvgrbkw f6
xdvgrhst a1
dvgrhst f6
xdvgrhsm a1
dvgrhsm f6
xdvgrhsw a1
dvgrhsw f6
xdvgrwht a1
dvgrwht f6
xdvgrwhm a1
dvgrwhm f6
xdvgrwhw a1
dvgrwhw f6.

variable labels
unitid 'Unique identification number for an institution'
grtype 'Cohort data'
chrtstat 'Graduation rate status in cohort'
section 'Section of survey form'
cohort 'Cohort'
xgrnralm 'Imputation field for GRNRALM - Nonresident alien men'
grnralm 'Nonresident alien men'
xgrnralw 'Imputation field for GRNRALW - Nonresident alien women'
grnralw 'Nonresident alien women'
xgrrac03 'Imputation field for GRRACE03 - Black non-Hispanic men - old'
grrace03 'Black non-Hispanic men - old'
xgrrac04 'Imputation field for GRRACE04 - Black non-Hispanic women - old'
grrace04 'Black non-Hispanic women - old'
xgrrac05 'Imputation field for GRRACE05 - American Indian or Alaska Native men - old'
grrace05 'American Indian or Alaska Native men - old'
xgrrac06 'Imputation field for GRRACE06 - American Indian or Alaska Native women - old'
grrace06 'American Indian or Alaska Native women - old'
xgrrac07 'Imputation field for GRRACE07 - Asian or Pacific Islander men - old'
grrace07 'Asian or Pacific Islander men - old'
xgrrac08 'Imputation field for GRRACE08 - Asian or Pacific Islander women - old'
grrace08 'Asian or Pacific Islander women - old'
xgrrac09 'Imputation field for GRRACE09 - Hispanic men - old'
grrace09 'Hispanic men - old'
xgrrac10 'Imputation field for GRRACE10 - Hispanic women - old'
grrace10 'Hispanic women - old'
xgrrac11 'Imputation field for GRRACE11 - White non-Hispanic men - old'
grrace11 'White non-Hispanic men - old'
xgrrac12 'Imputation field for GRRACE12 - White non-Hispanic women - old'
grrace12 'White non-Hispanic women - old'
xgrunknm 'Imputation field for GRUNKNM - Race/ethnicity unknown men'
grunknm 'Race/ethnicity unknown men'
xgrunknw 'Imputation field for GRUNKNW - Race/ethnicity unknown women'
grunknw 'Race/ethnicity unknown women'
xgrtotlm 'Imputation field for GRTOTLM - Total men'
grtotlm 'Total men'
xgrtotlw 'Imputation field for GRTOTLW - Total women'
grtotlw 'Total women'
xgrnralt 'Imputation field for GRNRALT - Nonresident alien total'
grnralt 'Nonresident alien total'
xgrrac18 'Imputation field for GRRACE18 - Black non-Hispanic total - old'
grrace18 'Black non-Hispanic total - old'
xgrrac19 'Imputation field for GRRACE19 - American Indian or Alaska Native total - old'
grrace19 'American Indian or Alaska Native total - old'
xgrrac20 'Imputation field for GRRACE20 - Asian or Pacific Islander total - old'
grrace20 'Asian or Pacific Islander total - old'
xgrrac21 'Imputation field for GRRACE21 - Hispanic total - old'
grrace21 'Hispanic total - old'
xgrrac22 'Imputation field for GRRACE22 - White non-Hispanic total - old'
grrace22 'White non-Hispanic total - old'
xgrunknt 'Imputation field for GRUNKNT - Race/ethnicity unknown total'
grunknt 'Race/ethnicity unknown total'
xgrtotlt 'Imputation field for GRTOTLT - Grand total'
grtotlt 'Grand total'
xgrhispm 'Imputation field for GRHISPM - Hispanic men - new'
grhispm 'Hispanic men - new'
xgrhispw 'Imputation field for GRHISPW - Hispanic women - new'
grhispw 'Hispanic women - new'
xgraianm 'Imputation field for GRAIANM - American Indian or Alaska Native men - new'
graianm 'American Indian or Alaska Native men - new'
xgraianw 'Imputation field for GRAIANW - American Indian or Alaska Native women - new'
graianw 'American Indian or Alaska Native women - new'
xgrasiam 'Imputation field for GRASIAM - Asian men - new'
grasiam 'Asian men - new'
xgrasiaw 'Imputation field for GRASIAW - Asian women - new'
grasiaw 'Asian women - new'
xgrbkaam 'Imputation field for GRBKAAM - Black or African American men - new'
grbkaam 'Black or African American men - new'
xgrbkaaw 'Imputation field for GRBKAAW - Black or African American women - new'
grbkaaw 'Black or African American women - new'
xgrnhpim 'Imputation field for GRNHPIM - Native Hawaiian or Other Pacific Islander men - new'
grnhpim 'Native Hawaiian or Other Pacific Islander men - new'
xgrnhpiw 'Imputation field for GRNHPIW - Native Hawaiian or Other Pacific Islander women - new'
grnhpiw 'Native Hawaiian or Other Pacific Islander women - new'
xgrwhitm 'Imputation field for GRWHITM - White men - new'
grwhitm 'White men - new'
xgrwhitw 'Imputation field for GRWHITW - White women - new'
grwhitw 'White women - new'
xgr2morm 'Imputation field for GR2MORM - Two or more races men - new'
gr2morm 'Two or more races men - new'
xgr2morw 'Imputation field for GR2MORW - Two or more races women - new'
gr2morw 'Two or more races women - new'
xgrhispt 'Imputation field for GRHISPT - Hispanic total - new'
grhispt 'Hispanic total - new'
xgraiant 'Imputation field for GRAIANT - American Indian or Alaska Native total - new'
graiant 'American Indian or Alaska Native total - new'
xgrasiat 'Imputation field for GRASIAT - Asian total - new'
grasiat 'Asian total - new'
xgrbkaat 'Imputation field for GRBKAAT - Black or African American total - new'
grbkaat 'Black or African American total - new'
xgrnhpit 'Imputation field for GRNHPIT - Native Hawaiian or Other Pacific Islander total - new'
grnhpit 'Native Hawaiian or Other Pacific Islander total - new'
xgrwhitt 'Imputation field for GRWHITT - White total - new'
grwhitt 'White total - new'
xgr2mort 'Imputation field for GR2MORT - Two or more races total - new'
gr2mort 'Two or more races total - new'
xdvgrait 'Imputation field for DVGRAIT - American Indian or Alaska Native total - derived'
dvgrait 'American Indian or Alaska Native total - derived'
xdvgraim 'Imputation field for DVGRAIM - American Indian or Alaska Native men - derived'
dvgraim 'American Indian or Alaska Native men - derived'
xdvgraiw 'Imputation field for DVGRAIW - American Indian or Alaska Native women - derived'
dvgraiw 'American Indian or Alaska Native women - derived'
xdvgrapt 'Imputation field for DVGRAPT - Asian/Native Hawaiian/Other Pacific Islander total - derived'
dvgrapt 'Asian/Native Hawaiian/Other Pacific Islander total - derived'
xdvgrapm 'Imputation field for DVGRAPM - Asian/Native Hawaiian/Other Pacific Islander men - derived'
dvgrapm 'Asian/Native Hawaiian/Other Pacific Islander men - derived'
xdvgrapw 'Imputation field for DVGRAPW - Asian/Native Hawaiian/Other Pacific Islander women - derived'
dvgrapw 'Asian/Native Hawaiian/Other Pacific Islander women - derived'
xdvgrbkt 'Imputation field for DVGRBKT - Black or African American/Black non-Hispanic total - derived'
dvgrbkt 'Black or African American/Black non-Hispanic total - derived'
xdvgrbkm 'Imputation field for DVGRBKM - Black or African American/Black non-Hispanic men - derived'
dvgrbkm 'Black or African American/Black non-Hispanic men - derived'
xdvgrbkw 'Imputation field for DVGRBKW - Black or African American/Black non-Hispanic women - derived'
dvgrbkw 'Black or African American/Black non-Hispanic women - derived'
xdvgrhst 'Imputation field for DVGRHST - Hispanic or Latino/Hispanic  total - derived'
dvgrhst 'Hispanic or Latino/Hispanic  total - derived'
xdvgrhsm 'Imputation field for DVGRHSM - Hispanic or Latino/Hispanic men - derived'
dvgrhsm 'Hispanic or Latino/Hispanic men - derived'
xdvgrhsw 'Imputation field for DVGRHSW - Hispanic or Latino/Hispanic  women - derived'
dvgrhsw 'Hispanic or Latino/Hispanic  women - derived'
xdvgrwht 'Imputation field for DVGRWHT - White/White non-Hispanic total - derived'
dvgrwht 'White/White non-Hispanic total - derived'
xdvgrwhm 'Imputation field for DVGRWHM - White/White non-Hispanic men - derived'
dvgrwhm 'White/White non-Hispanic men - derived'
xdvgrwhw 'Imputation field for DVGRWHW - White/White non-Hispanic women - derived'
dvgrwhw 'White/White non-Hispanic women - derived'.

value labels
/grtype 
10 'Bachelors or equiv subcohort (4-yr institution) Completers of programs of < 2 yrs (150% of normal time)'
11 'Bachelors or equiv subcohort (4-yr institution) Completers of programs of 2 but <4 yrs (150% of normal time)'
12 'Bachelors or equiv subcohort (4-yr institution) Completers of bachelors or equiv degrees total (150% of normal time)'
13 'Bachelors or equiv subcohort (4-yr institution) Completers of bachelors or equiv degrees in 4 years or less'
14 'Bachelors or equiv subcohort (4-yr institution) Completers of bachelors or equiv degrees in 5 years'
15 'Bachelors or equiv subcohort (4-yr institution) Completers of bachelors or equiv degrees in 6 years'
16 'Bachelors or equiv subcohort (4-yr institution) Transfer-out students'
17 'Bachelors or equiv subcohort (4-yr institution) Still enrolled in long programs'
18 'Other degree/certif-seeking subcohort (4-yr institution)'
19 'Other degree/certificate-seeking subcohort(4-yr institution) exclusions'
2 '4-year institutions, Adjusted cohort (revised cohort minus exclusions)'
20 'Other degree/certif-seeking subcohort (4-yr institution) Adjusted cohort (revised cohort minus exclusions)'
21 'Other degree/certif-seeking subcohort (4-yr institution) Completers within 150% of normal time total'
22 'Other degree/certif-seeking subcohort (4-yr institution) Completers of programs < 2 yrs (150% of normal time)'
23 'Other degree/certif-seeking subcohort (4-yr institution) Completers of programs of 2 but < 4 yrs (150% of normal time)'
24 'Other degree/certif-seeking subcohort (4-yr institution) Completers of bachelors or equiv degrees (150% of normal time)'
25 'Other degree/certif-seeking subcohort (4-yr institution) Transfer-out students'
26 'Other degree/certif-seeking subcohort (4-yr institution) Still enrolled in long programs'
27 'Degree/certif-seeking students ( 2-yr institution)'
28 'Degree/certificate-seeking subcohort(2-yr institution) exclusions'
29 'Degree/certif-seeking students ( 2-yr institution) Adjusted cohort (revised cohort minus exclusions)'
3 '4-year institutions, Completers within 150% of normal time'
30 'Degree/certif-seeking students ( 2-yr institution) Completers within 150% of normal time total'
31 'Degree/certif-seeking students ( 2-yr institution) Completers of programs of < 2 yrs (150% of normal time)'
32 'Degree/certificate-seeking students ( 2-yr institution) Completers of programs of 2 but < 4 yrs (150% of normal time)'
33 'Degree/certif-seeking students ( 2-yr institution) Transfer-out students'
34 'Degree/certif-seeking students ( 2-yr institution) Still enrolled in long programs'
35 'Degree/certif-seeking students ( 2-yr institution) Completers within 100% of normal time total'
36 'Degree/certif-seeking students ( 2-yr institution) Completers of programs of < 2 yrs (100% of normal time)'
37 'Degree/certificate-seeking students ( 2-yr institution) Completers of programs of 2 but < 4 yrs (100% of normal time)'
4 '4-year institutions, Transfer-out students'
40 'Total exclusions 4-year schools'
5 '4-year institutions, Still enrolled in long programs'
6 'Bachelors or equiv subcohort (4-yr institution)'
7 'Bachelors or equiv subcohort (4-yr institution) exclusions'
8 'Bachelors or equiv subcohort (4-yr institution) adjusted cohort (revised cohort minus exclusions)'
9 'Bachelors or equiv subcohort (4-yr institution) Completers within 150% of normal time total'
/chrtstat 
10 'Revised cohort'
11 'Exclusions'
12 'Adjusted cohort (revised cohort minus exclusions)'
13 'Completers within 150% of normal time'
14 'Completers of programs of less than 2 years (150% of normal time)'
15 'Completers of programs of 2 but less than 4 years (150% of normal time)'
16 'Completers of bachelors or equivalent degrees (150% of normal time)'
17 'Completers of bachelors or equivalent degrees in 4 years or less'
18 'Completers of bachelors or equivalent degrees in 5 years'
19 'Completers of bachelors or equivalent degrees in 6 years'
20 'Transfer-out students'
21 'Still enrolled in long programs'
22 'Completers of programs within 100% of normal time total'
23 'Completers of programs of < 2 yrs within 100% of normal time (not available by race or gender)'
24 'Completers of programs of 2 but < 4 yrs within 100% of normal time (not available by race or gender)'
/section 
1 'Bachelors/ equiv +  other degree/certif-seeking 2004 subcohort (4-yr institution)'
2 'Bachelors or equiv 2004 subcohort (4-yr institution)'
3 'Other degree/certif-seeking 2004 subcohort (4-yr institution)'
4 'Degree/certif-seeking students 2007 cohort (2-yr institution)'
/cohort
1 'Bachelors/ equiv +  other degree/certif-seeking 2004 subcohorts (4-yr institution)'
2 'Bachelors or equiv 2004 subcohort (4-yr institution)'
3 'Other degree/certif-seeking 2004 subcohort (4-yr institution)'
4 'Degree/certif-seeking students 2007 cohort (2-yr institution)'.

*The following are the possible values for the item imputation field variables
*'A' 'Not applicable'
*'B' 'Institution left item blank'
*'C' 'Analyst corrected reported value'
*'D' 'Do not know'
*'G' 'Data generated from other data values'
*'H' 'Value not derived - data not usable'
*'J' 'Logical imputation'
*'K' 'Ratio adjustment '
*'L' 'Imputed using the Group Median procedure'
*'N' 'Imputed using Nearest Neighbor procedure'
*'P' 'Imputed using Carry Forward procedure'
*'R' 'Reported'
*'Z' 'Implied zero'.


frequencies variables=
 grtype chrtstat section cohort xgrnralm xgrnralw xgrrac03 xgrrac04 xgrrac05 xgrrac06 xgrrac07 xgrrac08 xgrrac09 xgrrac10 xgrrac11 xgrrac12 xgrunknm xgrunknw xgrtotlm xgrtotlw xgrnralt xgrrac18 xgrrac19 xgrrac20 xgrrac21 xgrrac22 xgrunknt xgrtotlt xgrhispm xgrhispw xgraianm xgraianw xgrasiam xgrasiaw xgrbkaam xgrbkaaw xgrnhpim xgrnhpiw xgrwhitm xgrwhitw xgr2morm xgr2morw xgrhispt xgraiant xgrasiat xgrbkaat xgrnhpit xgrwhitt xgr2mort xdvgrait xdvgraim xdvgraiw xdvgrapt xdvgrapm xdvgrapw xdvgrbkt xdvgrbkm xdvgrbkw xdvgrhst xdvgrhsm xdvgrhsw xdvgrwht xdvgrwhm xdvgrwhw.

descriptives variables=
 grnralm grnralw grrace03 grrace04 grrace05 grrace06 grrace07 grrace08 grrace09 grrace10 grrace11 grrace12 grunknm grunknw grtotlm grtotlw grnralt grrace18 grrace19 grrace20 grrace21 grrace22 grunknt grtotlt grhispm grhispw graianm graianw grasiam grasiaw grbkaam grbkaaw grnhpim grnhpiw grwhitm grwhitw gr2morm gr2morw grhispt graiant grasiat grbkaat grnhpit grwhitt gr2mort dvgrait dvgraim dvgraiw dvgrapt dvgrapm dvgrapw dvgrbkt dvgrbkm dvgrbkw dvgrhst dvgrhsm dvgrhsw dvgrwht dvgrwhm dvgrwhw
/stats=def.

save outfile='U:\Data\EX\z_external_data\IPEDS_GRS\2010\gr2010.sav' /compressed.

