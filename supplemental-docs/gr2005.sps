*** Created: 8/24/2006 9:27:54 AM                            ***.
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
/file = 'Q:\storage\external_data\IPEDS_GRS\2005\gr2005.csv'
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
line a3
xgrrac01 a1
grrace01 f6
xgrrac02 a1
grrace02 f6
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
xgrrac13 a1
grrace13 f6
xgrrac14 a1
grrace14 f6
xgrrac15 a1
grrace15 f6
xgrrac16 a1
grrace16 f6
xgrrac17 a1
grrace17 f6
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
xgrrac23 a1
grrace23 f6
xgrrac24 a1
grrace24 f6.

variable labels
unitid 'Unique identification number for an institution'
grtype 'Cohort data'
chrtstat 'Graduation rate status in cohort'
section 'Section of survey form'
cohort 'Cohort'
line 'Original line number of suvey form'
xgrrac01 'Imputation field for GRRACE01 - Nonresident alien men'
grrace01 'Nonresident alien men'
xgrrac02 'Imputation field for GRRACE02 - Nonresident alien women'
grrace02 'Nonresident alien women'
xgrrac03 'Imputation field for GRRACE03 - Black non-Hispanic men'
grrace03 'Black non-Hispanic men'
xgrrac04 'Imputation field for GRRACE04 - Black non-Hispanic women'
grrace04 'Black non-Hispanic women'
xgrrac05 'Imputation field for GRRACE05 - American Indian or Alaska Native men'
grrace05 'American Indian or Alaska Native men'
xgrrac06 'Imputation field for GRRACE06 - American Indian or Alaska Native women'
grrace06 'American Indian or Alaska Native women'
xgrrac07 'Imputation field for GRRACE07 - Asian or Pacific Islander men'
grrace07 'Asian or Pacific Islander men'
xgrrac08 'Imputation field for GRRACE08 - Asian or Pacific Islander women'
grrace08 'Asian or Pacific Islander women'
xgrrac09 'Imputation field for GRRACE09 - Hispanic men'
grrace09 'Hispanic men'
xgrrac10 'Imputation field for GRRACE10 - Hispanic women'
grrace10 'Hispanic women'
xgrrac11 'Imputation field for GRRACE11 - White non-Hispanic men'
grrace11 'White non-Hispanic men'
xgrrac12 'Imputation field for GRRACE12 - White non-Hispanic women'
grrace12 'White non-Hispanic women'
xgrrac13 'Imputation field for GRRACE13 - Race/ethnicity unknown men'
grrace13 'Race/ethnicity unknown men'
xgrrac14 'Imputation field for GRRACE14 - Race/ethnicity unknown women'
grrace14 'Race/ethnicity unknown women'
xgrrac15 'Imputation field for GRRACE15 - Total men'
grrace15 'Total men'
xgrrac16 'Imputation field for GRRACE16 - Total women'
grrace16 'Total women'
xgrrac17 'Imputation field for GRRACE17 - Nonresident alien total'
grrace17 'Nonresident alien total'
xgrrac18 'Imputation field for GRRACE18 - Black non-Hispanic total'
grrace18 'Black non-Hispanic total'
xgrrac19 'Imputation field for GRRACE19 - American Indian or Alaska Native total'
grrace19 'American Indian or Alaska Native total'
xgrrac20 'Imputation field for GRRACE20 - Asian or Pacific Islander total'
grrace20 'Asian or Pacific Islander total'
xgrrac21 'Imputation field for GRRACE21 - Hispanic total'
grrace21 'Hispanic total'
xgrrac22 'Imputation field for GRRACE22 - White non-Hispanic total'
grrace22 'White non-Hispanic total'
xgrrac23 'Imputation field for GRRACE23 - Race/ethnicity unknown total'
grrace23 'Race/ethnicity unknown total'
xgrrac24 'Imputation field for GRRACE24 - Grand total'
grrace24 'Grand total'.

value labels
/grtype 10 'Bachelors or equiv subcohort (4-yr institution) Completers of programs of < 2 yrs (150% of normal time)'
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
4 '4-year institutions, Transfer-out students'
40 'Total exclusions 4-year schools'
5 '4-year institutions, Still enrolled in long programs'
6 'Bachelors or equiv subcohort (4-yr institution)'
7 'Bachelors or equiv subcohort (4-yr institution) exclusions'
8 'Bachelors or equiv subcohort (4-yr institution) adjusted cohort (revised cohort minus exclusions)'
9 'Bachelors or equiv subcohort (4-yr institution) Completers within 150% of normal time total'
/chrtstat 10 'Revised cohort'
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
/section 1 'Bachelors/ equiv +  other degree/certif-seeking 1999 subcohort (4-yr institution)'
2 'Bachelors or equiv 1999 subcohort (4-yr institution)'
3 'Other degree/certif-seeking 1999 subcohort (4-yr institution)'
4 'Degree/certif-seeking students 2002 cohort ( 2-yr and <2-yr institution)'
/cohort 1 'Bachelors/ equiv +  other degree/certif-seeking 1999 subcohorts (4-yr institution)'
2 'Bachelors or equiv 1999 subcohort (4-yr institution)'
3 'Other degree/certif-seeking 1999 subcohort (4-yr institution)'
4 'Degree/certif-seeking students 2002 cohort ( 2-yr institution)'
/line '10' 'Revised cohort'
'11A' 'Completers of programs of less than 2 years (150% of normal time)'
'12A' 'Completers of programs of 2 but less than 4 years (150% of normal time)'
'18A' 'Completers of bachelors or equivalent degrees (150% of normal time)'
'19' 'Completers of bachelors or equivalent degrees in 4 years or less'
'20' 'Completers of bachelors or equivalent degrees in 5 years'
'21' 'Completers of bachelors or equivalent degrees in 6 years'
'29A' 'Completers within 150% of normal time'
'30' 'Transfer-out students'
'45' 'Exclusions'
'46' 'Still enrolled in long programs (4-year institutions)'
'47' 'Still enrolled in long programs (2-year institutions)'
'50' 'Adjusted cohort (revised cohort minus exclusions)'
'999' 'Generated record not on original survey form'
/xgrrac01 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac02 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac03 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac04 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac05 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac06 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac07 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac08 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac09 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac10 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac11 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac12 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac13 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac14 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac15 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac16 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac17 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac18 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac19 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac20 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac21 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac22 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac23 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xgrrac24 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'J' 'Logical imputation'
'K' 'Ratio adjustment based on enrollment by race/gender in part A'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'R' 'Reported'
'U' 'Outlier value derived from reported data'
'V' 'Outlier value derived from imputed data'
'W' 'Value not derived - parent/child differs across components'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'.

frequencies variables=
 grtype chrtstat section cohort line xgrrac01 xgrrac02 xgrrac03 xgrrac04 xgrrac05 xgrrac06 xgrrac07 xgrrac08 xgrrac09 xgrrac10 xgrrac11 xgrrac12 xgrrac13 xgrrac14 xgrrac15 xgrrac16 xgrrac17 xgrrac18 xgrrac19 xgrrac20 xgrrac21 xgrrac22 xgrrac23 xgrrac24.

descriptives variables=
 grrace01 grrace02 grrace03 grrace04 grrace05 grrace06 grrace07 grrace08 grrace09 grrace10 grrace11 grrace12 grrace13 grrace14 grrace15 grrace16 grrace17 grrace18 grrace19 grrace20 grrace21 grrace22 grrace23 grrace24
/stats=def.

save outfile='Q:\storage\external_data\IPEDS_GRS\2005\gr2005.sav' /compressed.

