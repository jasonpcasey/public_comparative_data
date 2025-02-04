USE [ched-dev]
GO
/****** Object:  View [dbo].[federal_program_field_dimension]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [dbo].[federal_program_field_dimension]
WITH SCHEMABINDING
AS
SELECT [cip2_desc] AS [general_family]
      ,[cip4_desc] AS [intermediate_family]
	  ,[cip6] AS [cipcode]
      ,CAST([cip6] AS decimal(6,4)) AS [cip_number]
      ,[cip6_desc] AS [title]
  FROM [dbo].[cip_hierarchy]

GO
/****** Object:  View [dbo].[ipeds_admissions_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_admissions_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[demographic_key]
      ,[applications]
      ,[admissions]
      ,[enrolled]
  FROM [dbo].[ipeds_admissions]

GO
/****** Object:  View [dbo].[ipeds_admissions_test_scores_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_admissions_test_scores_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[test_type]
      ,[subject]
      ,[count]
      ,[percentage]
      ,[percentile_25]
      ,[percentile_75]
  FROM [dbo].[ipeds_test_scores]

GO
/****** Object:  View [dbo].[ipeds_average_tuition_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ipeds_average_tuition_fact]
AS
SELECT [unitid]
      ,[date_key]
      ,[student_career]
      ,[student_residency]
      ,[average_tuition]
      ,[per_credit_hour_charge]
      ,[required_fees]
  FROM [ched-dev].[dbo].[ipeds_average_tuition]

GO
/****** Object:  View [dbo].[ipeds_charges_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ipeds_charges_fact]
AS
SELECT [unitid]
      ,[date_key]
      ,[student_residency]
      ,[charge_type]
      ,[charge]
  FROM [ched-dev].[dbo].[ipeds_charges]

GO
/****** Object:  View [dbo].[ipeds_degree_completions_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[ipeds_degree_completions_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[degree_key]
      ,[cipcode]
      ,[demographic_key]
      ,[awards]
  FROM [dbo].[ipeds_degree_completions]


GO
/****** Object:  View [dbo].[ipeds_degree_dimension]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[ipeds_degree_dimension]
WITH SCHEMABINDING
AS
SELECT [degree_key]
      ,[award_level]
      ,[major_number]
  FROM [dbo].[ipeds_degree_types]

GO
/****** Object:  View [dbo].[ipeds_fall_enrollment_by_age_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[ipeds_fall_enrollment_by_age_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
	  ,[age_range]
      ,[time_status]
      ,[career_level]
      ,[demographic_key]
      ,[headcount]
  FROM [dbo].[ipeds_fall_enrollment_by_age]

GO
/****** Object:  View [dbo].[ipeds_fall_enrollment_by_residency_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[ipeds_fall_enrollment_by_residency_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
	  ,[state]
      ,[student_population]
      ,[headcount]
  FROM [dbo].[ipeds_fall_enrollment_by_residency]

GO
/****** Object:  View [dbo].[ipeds_fall_enrollment_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ipeds_fall_enrollment_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[time_status]
      ,[career_level]
      ,[degree_seeking]
      ,[continuation_type]
      ,[demographic_key]
      ,[headcount]
  FROM [dbo].[ipeds_fall_enrollment]

GO
/****** Object:  View [dbo].[ipeds_fall_staff_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[ipeds_fall_staff_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[employee_key]
      ,[demographic_key]
      ,[headcount]
  FROM [dbo].[ipeds_fall_staff]

GO
/****** Object:  View [dbo].[ipeds_graduation_rates_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ipeds_graduation_rates_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[cohort_date_key]
      ,[demographic_key]
      ,[entering_cohort]
      ,[exclusions]
      ,[adjusted_cohort]
      ,[completers_4_years]
      ,[completers_5_years]
      ,[completers_6_years]
      ,[enrolled]
      ,[transfers]
      ,[no_longer_enrolled]
  FROM [dbo].[ipeds_grad_rates]

GO
/****** Object:  View [dbo].[ipeds_institution_dimension]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[ipeds_institution_dimension]
WITH SCHEMABINDING
AS
WITH x AS
(
   SELECT [unitid], MAX([date_key]) AS [date_key] FROM [dbo].[ipeds_institutions] GROUP BY [unitid]
)
SELECT i.[unitid]
      ,n.[institution_name]
	  ,x.[date_key] AS [last_reported_date_key]
      ,[address]
      ,[city]
      ,s.[state_abbreviation]
      ,s.[state]
      ,[zip]
      ,[web_address]
      ,i.[fips]
      ,i.[county_fips]
	  ,ct.[county_name]
      ,s.[region]
      ,[service_academy]
      ,[institution_level]
      ,i.[control]
      ,[highest_level_offering]
      ,[highest_degree_offering]
      ,[undergraduate_offering]
      ,[graduate_offering]
      ,[degree_granting]
      ,[locale]
      ,[parent_id]
      ,[year_closed]
      ,[close_date]
      ,i.[cbsa_id]
	  ,cbsa.[cbsa_name]
      ,[cbsa_type]
      ,i.[csa_id]
	  ,csa.[csa_name]
      ,[longitude]
      ,[latitude]
      ,[system_member]
      ,[system_name]
      ,[open_to_public]
      ,[landgrant]
      ,[hbcu]
      ,[hospital]
      ,[medical]
	  ,[nsf_medical_school]
      ,[tribal]
      ,[rotc]
	  ,[regents_peer]
	  ,[is_un]
	  ,CASE i.[unitid]
	    WHEN 181464 THEN 1
		ELSE 0 END AS [is_unl]
	  ,CASE 
	    WHEN m.unitid > 0 THEN 1
		ELSE 0 END AS [aau_member]
      ,a1.[conference_name] AS [athletic_conference_1]
      ,a2.[conference_name] AS [athletic_conference_2]
      ,a3.[conference_name] AS [athletic_conference_3]
      ,a4.[conference_name] AS [athletic_conference_4]
	  ,CASE
	    WHEN a1.[conf_id] IN (102, 107, 108, 127, 130) THEN 1
	    WHEN a2.[conf_id] IN (102, 107, 108, 127, 130) THEN 1
		ELSE 0 END AS [power_five_member]
      ,c.[cc2000] AS [carnegie_id_2000]
      ,c.[carnegie_2000]
      ,c.[basic2005] AS [carnegie_id_2005]
      ,c.[carnegie_2005]
      ,c.[basic2010] AS [carnegie_id_2010]
      ,c.[carnegie_2010]
      ,c.[basic2015] AS [carnegie_id_2015]
      ,c.[carnegie_2015]
  FROM x 
  INNER JOIN
  [dbo].[ipeds_institutions] i
  ON x.[unitid] = i.[unitid] AND x.[date_key] = i.[date_key] 
  LEFT JOIN
  dbo.[carnegie_classes] c ON x.unitid = c.unitid 
  LEFT JOIN
  dbo.[athletic_conferences] a1 ON i.confno1 = a1.conf_id
  LEFT JOIN
  dbo.[athletic_conferences] a2 ON i.confno2 = a2.conf_id
  LEFT JOIN
  dbo.[athletic_conferences] a3 ON i.confno3 = a3.conf_id
  LEFT JOIN
  dbo.[athletic_conferences] a4 ON i.confno4 = a4.conf_id
  LEFT JOIN
  dbo.[states] s ON i.fips = s.fips LEFT JOIN
  dbo.[counties] ct ON i.county_fips = ct.county_fips LEFT JOIN
  dbo.[cbsa] cbsa ON i.cbsa_id = cbsa.cbsa_id LEFT JOIN
  dbo.[csa] csa ON i.csa_id = csa.csa_id LEFT JOIN
  dbo.[aau_membership] m ON i.unitid = m.unitid INNER JOIN
  dbo.[institution_names] n ON i.[unitid] = n.[unitid]
GO
/****** Object:  View [dbo].[ipeds_overall_student_aid_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_overall_student_aid_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[total_undergraduates]
      ,[full_time_freshman_cohort]
      ,[total_number]
      ,[total_on_campus]
      ,[total_off_campus_with_family]
      ,[total_off_campus_not_with_family]
      ,[total_living_arrangement_unknown]
      ,[cohort_paying_indistrict]
      ,[cohort_paying_instate]
      ,[cohort_paying_outstate]
      ,[cohort_paying_unknown]
      ,[awarded_grant_aid]
      ,[total_grant_aid]
      ,[awarded_federal_grants]
      ,[total_federal_grants]
      ,[awarded_state_local_grants]
      ,[total_state_local_grants]
      ,[awarded_institutional_grants]
      ,[total_institutional_grants]
      ,[awarded_federal_student_loans]
      ,[total_federal_student_loans]
      ,[awarded_other_student_loans]
      ,[total_other_student_loans]
  FROM [dbo].[ipeds_student_aid]

GO
/****** Object:  View [dbo].[ipeds_pell_graduation_rates_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_pell_graduation_rates_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[cohort_date_key]
      ,[cohort_type]
      ,[aid_type]
      ,[adjusted_cohort]
      ,[completers_6_years]
  FROM [dbo].[ipeds_pell_grad_rates]


GO
/****** Object:  View [dbo].[ipeds_retention_rates_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ipeds_retention_rates_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[cohort_date_key]
      ,[time_status]
      ,[adjusted_cohort]
      ,[enrolled]
  FROM [dbo].[ipeds_retention]


GO
/****** Object:  View [dbo].[ipeds_student_aid_by_income_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_student_aid_by_income_fact]
WITH SCHEMABINDING
AS
SELECT [unitid]
      ,[date_key]
      ,[income_band]
      ,[count]
      ,[grant_recipients]
      ,[total_amount]
      ,[average_amount]
      ,[average_net_price]
  FROM [dbo].[ipeds_student_aid_by_income]

GO
/****** Object:  View [dbo].[nsf_academic_fields_dimension]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[nsf_academic_fields_dimension]
WITH SCHEMABINDING
AS
SELECT [academic_field_key]
      ,[academic_field]
      ,[academic_broad_field]
      ,[nu_division]
  FROM [dbo].[nsf_herd_academic_fields]

GO
/****** Object:  View [dbo].[nsf_federal_agency_dimension]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[nsf_federal_agency_dimension]
WITH SCHEMABINDING
AS
SELECT [agency_key]
      ,[agency_name]
      ,[agency_short_name]
	  ,[agency_type]
  FROM [dbo].[nsf_herd_federal_agencies]

GO
/****** Object:  View [dbo].[nsf_herd_expenditures_by_field_and_source_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [dbo].[nsf_herd_expenditures_by_field_and_source_fact]
WITH SCHEMABINDING
AS
SELECT [inst_id]
      ,[date_key]
      ,[ncses_inst_id]
      ,[unitid]
      ,[agency_key]
      ,[academic_field_key]
      ,[expenditure]
  FROM [dbo].[nsf_herd_detail_data]

GO
/****** Object:  View [dbo].[nsf_herd_institutional_data_fact]    Script Date: 10/14/2019 3:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[nsf_herd_institutional_data_fact]
WITH SCHEMABINDING
AS
SELECT [inst_id]
      ,[date_key]
      ,[ncses_inst_id]
      ,[unitid]
      ,[federal_government]
      ,[state_and_local_government]
      ,[business]
      ,[nonprofit_organizations]
      ,[institutional_funds]
      ,[other_sources]
      ,[total_rd_expenses]
      ,[medical_school_expenses]
      ,[non_medical_rd]
  FROM [dbo].[nsf_herd_institution_data]

GO
