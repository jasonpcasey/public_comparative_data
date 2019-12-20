*** Created: 6/12/2004 11:26:25 AM                           ***.
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
/file = 'c:\dct\ef2002a.csv'
/delcase = line
/delimiters = ","
/qualifier = '"'
/arrangement = delimited
/firstcase = 2
/importcase = all
/variables =
unitid f6
efalevel f2
line f2
section f1
lstudy f1
xefrac01 a1
efrace01 f6
xefrac02 a1
efrace02 f6
xefrac03 a1
efrace03 f6
xefrac04 a1
efrace04 f6
xefrac05 a1
efrace05 f6
xefrac06 a1
efrace06 f6
xefrac07 a1
efrace07 f6
xefrac08 a1
efrace08 f6
xefrac09 a1
efrace09 f6
xefrac10 a1
efrace10 f6
xefrac11 a1
efrace11 f6
xefrac12 a1
efrace12 f6
xefrac13 a1
efrace13 f6
xefrac14 a1
efrace14 f6
xefrac15 a1
efrace15 f6
xefrac16 a1
efrace16 f6
xefrac17 a1
efrace17 f6
xefrac18 a1
efrace18 f6
xefrac19 a1
efrace19 f6
xefrac20 a1
efrace20 f6
xefrac21 a1
efrace21 f6
xefrac22 a1
efrace22 f6
xefrac23 a1
efrace23 f6
xefrac24 a1
efrace24 f6.

variable labels
unitid 'Unique identification number for an institution'
efalevel 'Level of student'
line 'Level of student (original line number on survey form)'
section 'Attendance status of student'
lstudy 'Level of student'
xefrac01 'Imputation field for EFRACE01 - Nonresident alien men'
efrace01 'Nonresident alien men'
xefrac02 'Imputation field for EFRACE02 - Nonresident alien women'
efrace02 'Nonresident alien women'
xefrac03 'Imputation field for EFRACE03 - Black non-Hispanic men'
efrace03 'Black non-Hispanic men'
xefrac04 'Imputation field for EFRACE04 - Black non-Hispanic women'
efrace04 'Black non-Hispanic women'
xefrac05 'Imputation field for EFRACE05 - American Indian/Alaska Native men'
efrace05 'American Indian/Alaska Native men'
xefrac06 'Imputation field for EFRACE06 - American Indian/Alaska Native women'
efrace06 'American Indian/Alaska Native women'
xefrac07 'Imputation field for EFRACE07 - Asian or Pacific Islander men'
efrace07 'Asian or Pacific Islander men'
xefrac08 'Imputation field for EFRACE08 - Asian or Pacific Islander women'
efrace08 'Asian or Pacific Islander women'
xefrac09 'Imputation field for EFRACE09 - Hispanic men'
efrace09 'Hispanic men'
xefrac10 'Imputation field for EFRACE10 - Hispanic women'
efrace10 'Hispanic women'
xefrac11 'Imputation field for EFRACE11 - White non-Hispanic men'
efrace11 'White non-Hispanic men'
xefrac12 'Imputation field for EFRACE12 - White non-Hispanic women'
efrace12 'White non-Hispanic women'
xefrac13 'Imputation field for EFRACE13 - Race/ethnicity unknown men'
efrace13 'Race/ethnicity unknown men'
xefrac14 'Imputation field for EFRACE14 - Race/ethnicity unknown women'
efrace14 'Race/ethnicity unknown women'
xefrac15 'Imputation field for EFRACE15 - Total men'
efrace15 'Total men'
xefrac16 'Imputation field for EFRACE16 - Total women'
efrace16 'Total women'
xefrac17 'Imputation field for EFRACE17 - Nonresident alien total'
efrace17 'Nonresident alien total'
xefrac18 'Imputation field for EFRACE18 - Black non-Hispanic  total'
efrace18 'Black non-Hispanic  total'
xefrac19 'Imputation field for EFRACE19 - American Indian/Alaska Native total'
efrace19 'American Indian/Alaska Native total'
xefrac20 'Imputation field for EFRACE20 - Asian or Pacific Islander total'
efrace20 'Asian or Pacific Islander total'
xefrac21 'Imputation field for EFRACE21 - Hispanic total'
efrace21 'Hispanic total'
xefrac22 'Imputation field for EFRACE22 - White non-Hispanic total'
efrace22 'White non-Hispanic total'
xefrac23 'Imputation field for EFRACE23 - Race/ethnicity unknown total'
efrace23 'Race/ethnicity unknown total'
xefrac24 'Imputation field for EFRACE24 - Grand total'
efrace24 'Grand total'.

value labels
/efalevel 1 'All students total'
11 'All students, Undergraduate, Non-degree/certificate-seeking'
12 'All students, Graduate'
16 'All students, First professional'
2 'All students, Undergraduate total'
21 'Full-time students total'
22 'Full-time students, Undergraduate total'
23 'Full-time students, Undergraduate, Degree/certificate-seeking total'
24 'Full-time students, Undergraduate, Degree/certificate-seeking, First-time'
25 'Full-time students, Undergraduate, Degree/certificate-seeking, Other degree/certificate-seeking'
3 'All students, Undergraduate, Degree/certificate-seeking total'
31 'Full-time students, Undergraduate, Non-degree/certificate-seeking'
32 'Full-time students, Graduate'
36 'Full-time students, First professional'
4 'All students, Undergraduate, Degree/certificate-seeking, First-time'
41 'Part-time students total'
42 'Part-time students, Undergraduate total'
43 'Part-time students, Undergraduate, Degree/certificate-seeking total'
44 'Part-time students, Undergraduate, Degree/certificate-seeking, First-time'
45 'Part-time students, Undergraduate, Degree/certificate-seeking, Other degree/certificate-seeking'
5 'All students, Undergraduate, Degree/certificate-seeking, Other degree/certificate-seeking'
51 'Part-time students, Undergraduate, Non-degree/certificate-seeking'
52 'Part-time students, Graduate'
56 'Part-time students, First professional'
/line 1 'Full-time, first-time, first-year, degree-seeking undergraduates'
11 'Full-time graduates'
14 'Total full-time students'
15 'Part-time, first-time, first-year, degree-seeking undergraduates'
17 'Other part-time degree-seeking undergraduates'
20 'Total part-time degree-seeking undergraduates'
21 'Part-time nondegree-seeking undergraduates'
22 'Total part-time undergraduates'
23 'Part-time first-professional'
25 'Part-time graduates'
28 'Total part-time '
29 'Total enrollment'
3 'Other full-time degree-seeking undergraduates '
6 'Total full-time degree-seeking undergraduates'
7 'Full-time nondegree-seeking undergraduates'
8 'Total  full-time undergraduates'
9 'Full-time first-professional'
99 'Generated record not on original survey'
/section 1 'Full-time'
2 'Part-time'
3 'All students'
/lstudy 1 'Undergraduate'
2 'First-professional'
3 'Graduate'
4 'All students'
/xefrac01 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac02 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac03 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac04 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac05 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac06 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac07 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac08 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac09 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac10 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac11 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac12 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac13 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac14 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac15 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac16 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac17 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac18 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac19 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac20 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac21 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac22 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac23 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'
/xefrac24 'A' 'Not applicable'
'B' 'Institution left item blank'
'C' 'Analyst corrected reported value'
'D' 'Do not know'
'G' 'Data generated from other data values'
'H' 'Suppressed to protect confidentiality'
'L' 'Imputed using the Group Median procedure'
'N' 'Imputed using Nearest Neighbor procedure'
'P' 'Imputed using Carry Forward procedure'
'Q' 'Partial imputation'
'R' 'Reported'
'Y' 'Particular 1st prof field not applicable'
'Z' 'Implied zero'.

frequencies variables=
 efalevel line section lstudy xefrac01 xefrac02 xefrac03 xefrac04 xefrac05 xefrac06 xefrac07 xefrac08 xefrac09 xefrac10 xefrac11 xefrac12 xefrac13 xefrac14 xefrac15 xefrac16 xefrac17 xefrac18 xefrac19 xefrac20 xefrac21 xefrac22 xefrac23 xefrac24.

descriptives variables=
 efrace01 efrace02 efrace03 efrace04 efrace05 efrace06 efrace07 efrace08 efrace09 efrace10 efrace11 efrace12 efrace13 efrace14 efrace15 efrace16 efrace17 efrace18 efrace19 efrace20 efrace21 efrace22 efrace23 efrace24
/stats=def.

save outfile='ef2002a.sav' /compressed.

