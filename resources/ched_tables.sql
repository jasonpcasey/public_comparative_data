USE [ched-staging]
GO
ALTER TABLE [dbo].[ipeds_retention] DROP CONSTRAINT [DF_ipeds_retention_enrolled]
GO
ALTER TABLE [dbo].[ipeds_retention] DROP CONSTRAINT [DF_ipeds_retention_adjusted_cohort]
GO
ALTER TABLE [dbo].[ipeds_pell_grad_rates] DROP CONSTRAINT [DF_ipeds_pell_grad_rates_completers_6_years]
GO
ALTER TABLE [dbo].[ipeds_pell_grad_rates] DROP CONSTRAINT [DF_ipeds_pell_grad_rates_adjusted_cohort]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_no_longer_enrolled]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_transfers]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_enrolled]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_completers_6_years]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_completers_5_years]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_completers_4_years]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_adjusted_cohort]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_exclusions]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] DROP CONSTRAINT [DF_ipeds_grad_rates_entering_cohort]
GO
ALTER TABLE [dbo].[ipeds_fall_staff] DROP CONSTRAINT [DF_ipeds_fall_staff_headcount]
GO
ALTER TABLE [dbo].[ipeds_fall_enrollment_by_residency] DROP CONSTRAINT [DF_ipeds_fall_enrollment_by_residency_headcount]
GO
ALTER TABLE [dbo].[ipeds_fall_enrollment_by_age] DROP CONSTRAINT [DF_ipeds_fall_enrollment_by_age_headcount]
GO
ALTER TABLE [dbo].[ipeds_fall_enrollment] DROP CONSTRAINT [DF_ipeds_fall_enrollment_headcount]
GO
ALTER TABLE [dbo].[ipeds_degree_completions] DROP CONSTRAINT [DF_ipeds_degree_completions_awards]
GO
/****** Object:  Table [dbo].[states]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[states]
GO
/****** Object:  Table [dbo].[program_fields]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[program_fields]
GO
/****** Object:  Table [dbo].[nsf_ipeds_bridge]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[nsf_ipeds_bridge]
GO
/****** Object:  Table [dbo].[nsf_herd_institution_data]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[nsf_herd_institution_data]
GO
/****** Object:  Table [dbo].[nsf_herd_federal_agencies]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[nsf_herd_federal_agencies]
GO
/****** Object:  Table [dbo].[nsf_herd_detail_data]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[nsf_herd_detail_data]
GO
/****** Object:  Table [dbo].[nsf_herd_academic_fields]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[nsf_herd_academic_fields]
GO
/****** Object:  Table [dbo].[ipeds_test_scores]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_test_scores]
GO
/****** Object:  Table [dbo].[ipeds_student_aid_by_income]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_student_aid_by_income]
GO
/****** Object:  Table [dbo].[ipeds_student_aid]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_student_aid]
GO
/****** Object:  Table [dbo].[ipeds_retention]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_retention]
GO
/****** Object:  Table [dbo].[ipeds_pell_grad_rates]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_pell_grad_rates]
GO
/****** Object:  Table [dbo].[ipeds_institutions]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_institutions]
GO
/****** Object:  Table [dbo].[ipeds_grad_rates]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_grad_rates]
GO
/****** Object:  Table [dbo].[ipeds_fall_staff]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_fall_staff]
GO
/****** Object:  Table [dbo].[ipeds_fall_enrollment_by_residency]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_fall_enrollment_by_residency]
GO
/****** Object:  Table [dbo].[ipeds_fall_enrollment_by_age]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_fall_enrollment_by_age]
GO
/****** Object:  Table [dbo].[ipeds_fall_enrollment]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_fall_enrollment]
GO
/****** Object:  Table [dbo].[ipeds_employee_dimension]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_employee_dimension]
GO
/****** Object:  Table [dbo].[ipeds_demographic_dimension]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_demographic_dimension]
GO
/****** Object:  Table [dbo].[ipeds_degree_types]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_degree_types]
GO
/****** Object:  Table [dbo].[ipeds_degree_completions]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_degree_completions]
GO
/****** Object:  Table [dbo].[ipeds_charges]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_charges]
GO
/****** Object:  Table [dbo].[ipeds_average_tuition]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_average_tuition]
GO
/****** Object:  Table [dbo].[ipeds_admissions]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[ipeds_admissions]
GO
/****** Object:  Table [dbo].[institution_names]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[institution_names]
GO
/****** Object:  Table [dbo].[herd_fields_old]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[herd_fields_old]
GO
/****** Object:  Table [dbo].[date_dimension]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[date_dimension]
GO
/****** Object:  Table [dbo].[csa]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[csa]
GO
/****** Object:  Table [dbo].[counties]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[counties]
GO
/****** Object:  Table [dbo].[cip_hierarchy]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[cip_hierarchy]
GO
/****** Object:  Table [dbo].[cbsa]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[cbsa]
GO
/****** Object:  Table [dbo].[carnegie_classes]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[carnegie_classes]
GO
/****** Object:  Table [dbo].[athletic_conferences]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[athletic_conferences]
GO
/****** Object:  Table [dbo].[aau_membership]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[aau_membership]
GO
/****** Object:  Table [dbo].[aamc_faculty]    Script Date: 10/14/2019 1:36:27 PM ******/
DROP TABLE [dbo].[aamc_faculty]
GO
/****** Object:  Table [dbo].[aamc_faculty]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aamc_faculty](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[aamc_faculty_type] [nvarchar](8) NOT NULL,
	[inst_name] [nvarchar](255) NULL,
	[academic_year] [nchar](9) NULL,
	[faculty_count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aau_membership]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aau_membership](
	[unitid] [int] NOT NULL,
	[inst_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_aau_membership] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[athletic_conferences]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[athletic_conferences](
	[conf_id] [int] NOT NULL,
	[conference_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_athletic_conferences] PRIMARY KEY CLUSTERED 
(
	[conf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carnegie_classes]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carnegie_classes](
	[unitid] [int] NOT NULL,
	[cc2000] [int] NOT NULL,
	[basic2005] [int] NOT NULL,
	[basic2010] [int] NOT NULL,
	[basic2015] [int] NOT NULL,
	[carnegie_2000] [nvarchar](255) NULL,
	[carnegie_2005] [nvarchar](255) NULL,
	[carnegie_2010] [nvarchar](255) NULL,
	[carnegie_2015] [nvarchar](255) NULL,
 CONSTRAINT [PK_carnegie_classes] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cbsa]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cbsa](
	[cbsa_id] [int] NOT NULL,
	[cbsa_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cbsa] PRIMARY KEY CLUSTERED 
(
	[cbsa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cip_hierarchy]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cip_hierarchy](
	[cip2] [nchar](2) NOT NULL,
	[cip2_desc] [nvarchar](132) NOT NULL,
	[cip4] [nchar](5) NOT NULL,
	[cip4_desc] [nvarchar](132) NOT NULL,
	[cip6] [nchar](7) NOT NULL,
	[cip6_desc] [nvarchar](132) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[counties]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[counties](
	[county_fips] [int] NOT NULL,
	[county_name] [nvarchar](255) NOT NULL,
	[state] [nchar](2) NOT NULL,
 CONSTRAINT [PK_counties] PRIMARY KEY CLUSTERED 
(
	[county_fips] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[csa]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[csa](
	[csa_id] [int] NOT NULL,
	[csa_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_csa] PRIMARY KEY CLUSTERED 
(
	[csa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[date_dimension]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[date_dimension](
	[date_key] [date] NOT NULL,
	[date] [date] NOT NULL,
	[day] [tinyint] NOT NULL,
	[day_suffix] [nchar](2) NOT NULL,
	[weekday] [tinyint] NOT NULL,
	[weekday_name] [nvarchar](10) NOT NULL,
	[is_weekend] [bit] NOT NULL,
	[is_holiday] [bit] NOT NULL,
	[holiday_name] [nvarchar](64) SPARSE  NULL,
	[days_of_week_in_month] [tinyint] NOT NULL,
	[day_of_year] [smallint] NOT NULL,
	[week_of_month] [tinyint] NOT NULL,
	[week_of_year] [tinyint] NOT NULL,
	[iso_week_of_year] [tinyint] NOT NULL,
	[month] [tinyint] NOT NULL,
	[month_name] [nvarchar](10) NOT NULL,
	[quarter] [tinyint] NOT NULL,
	[quarter_name] [nvarchar](6) NOT NULL,
	[year] [int] NOT NULL,
	[term_code] [nchar](5) NOT NULL,
	[peoplesoft_term_code] [nchar](4) NOT NULL,
	[semester] [nvarchar](6) NOT NULL,
	[fiscal_year] [nchar](9) NOT NULL,
	[academic_year_leading_summer] [nchar](9) NOT NULL,
	[academic_year_trailing_summer] [nchar](9) NOT NULL,
	[mmyyyy] [nchar](6) NOT NULL,
	[month_year] [nchar](7) NOT NULL,
	[first_day_of_month] [date] NOT NULL,
	[last_day_of_month] [date] NOT NULL,
	[first_day_of_quarter] [date] NOT NULL,
	[last_day_of_quarter] [date] NOT NULL,
	[first_day_of_year] [date] NOT NULL,
	[last_day_of_year] [date] NOT NULL,
	[first_day_of_next_month] [date] NOT NULL,
	[first_day_of_next_year] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[date_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[herd_fields_old]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[herd_fields_old](
	[Survey Code] [nvarchar](2) NOT NULL,
	[HERD Detailed Discipline Code] [int] NOT NULL,
	[HERD Broad Discipline Code] [int] NOT NULL,
	[HERD Detailed Discipline] [nvarchar](255) NOT NULL,
	[HERD Broad Discipline] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_HERD Fields] PRIMARY KEY CLUSTERED 
(
	[HERD Detailed Discipline Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[institution_names]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[institution_names](
	[unitid] [int] NULL,
	[full_institution_name] [nvarchar](255) NULL,
	[institution_name] [nvarchar](255) NULL,
	[control] [nvarchar](50) NULL,
	[carnegie_2015] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_admissions]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_admissions](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[demographic_key] [nchar](5) NOT NULL,
	[applications] [int] NULL,
	[admissions] [int] NULL,
	[enrolled] [int] NULL,
 CONSTRAINT [PK_ipeds_admissions] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_average_tuition]    Script Date: 10/14/2019 1:36:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_average_tuition](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[student_career] [nvarchar](16) NOT NULL,
	[student_residency] [nvarchar](16) NOT NULL,
	[average_tuition] [money] NULL,
	[per_credit_hour_charge] [money] NULL,
	[required_fees] [money] NULL,
 CONSTRAINT [PK_ipeds_average_tuition] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[student_career] ASC,
	[student_residency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_charges]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_charges](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[student_residency] [nvarchar](16) NOT NULL,
	[charge_type] [nvarchar](64) NOT NULL,
	[charge] [money] NULL,
 CONSTRAINT [PK_ipeds_charges] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[student_residency] ASC,
	[charge_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_degree_completions]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_degree_completions](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[degree_key] [nchar](3) NOT NULL,
	[cipcode] [nchar](7) NOT NULL,
	[demographic_key] [nchar](5) NOT NULL,
	[awards] [int] NOT NULL,
 CONSTRAINT [PK_ipeds_degree_completions] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[degree_key] ASC,
	[cipcode] ASC,
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_degree_types]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_degree_types](
	[degree_key] [nchar](3) NOT NULL,
	[award_level] [nvarchar](132) NOT NULL,
	[major_number] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_ipeds_degree_dimension] PRIMARY KEY CLUSTERED 
(
	[degree_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_demographic_dimension]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_demographic_dimension](
	[demographic_key] [nchar](5) NOT NULL,
	[sex] [nvarchar](7) NOT NULL,
	[race_ethnicity] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_ipeds_demographic_dimension] PRIMARY KEY CLUSTERED 
(
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_employee_dimension]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_employee_dimension](
	[employee_key] [nchar](5) NOT NULL,
	[occupational_category] [nvarchar](255) NOT NULL,
	[time_status] [nvarchar](9) NOT NULL,
 CONSTRAINT [PK_ipeds_employee_dimension] PRIMARY KEY CLUSTERED 
(
	[employee_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_fall_enrollment]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_fall_enrollment](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[time_status] [nvarchar](16) NOT NULL,
	[career_level] [nvarchar](16) NOT NULL,
	[degree_seeking] [nvarchar](20) NOT NULL,
	[continuation_type] [nvarchar](16) NOT NULL,
	[demographic_key] [nchar](5) NOT NULL,
	[headcount] [int] NOT NULL,
 CONSTRAINT [PK_ipeds_fall_enrollment] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[time_status] ASC,
	[career_level] ASC,
	[degree_seeking] ASC,
	[continuation_type] ASC,
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_fall_enrollment_by_age]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_fall_enrollment_by_age](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[age_range] [nvarchar](20) NOT NULL,
	[career_level] [nvarchar](20) NOT NULL,
	[time_status] [nvarchar](20) NOT NULL,
	[demographic_key] [nchar](5) NOT NULL,
	[headcount] [int] NOT NULL,
 CONSTRAINT [PK_ipeds_fall_enrollment_by_age] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[age_range] ASC,
	[career_level] ASC,
	[time_status] ASC,
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_fall_enrollment_by_residency]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_fall_enrollment_by_residency](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[student_population] [nvarchar](50) NOT NULL,
	[headcount] [int] NOT NULL,
 CONSTRAINT [PK_ipeds_fall_enrollment_by_residency] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[state] ASC,
	[student_population] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_fall_staff]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_fall_staff](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[employee_key] [nchar](5) NOT NULL,
	[demographic_key] [nchar](5) NOT NULL,
	[headcount] [int] NOT NULL,
 CONSTRAINT [PK_ipeds_fall_staff] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[employee_key] ASC,
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_grad_rates]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_grad_rates](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[cohort_date_key] [int] NOT NULL,
	[demographic_key] [nchar](5) NOT NULL,
	[entering_cohort] [int] NOT NULL,
	[exclusions] [int] NOT NULL,
	[adjusted_cohort] [int] NOT NULL,
	[completers_4_years] [int] NOT NULL,
	[completers_5_years] [int] NOT NULL,
	[completers_6_years] [int] NOT NULL,
	[enrolled] [int] NOT NULL,
	[transfers] [int] NOT NULL,
	[no_longer_enrolled] [int] NOT NULL,
 CONSTRAINT [PK_ipeds_grad_rates] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[cohort_date_key] ASC,
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_institutions]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_institutions](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[institution_name] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[zip] [nvarchar](10) NULL,
	[web_address] [nvarchar](255) NULL,
	[fips] [int] NULL,
	[county_fips] [int] NULL,
	[service_academy] [int] NULL,
	[institution_level] [nvarchar](50) NULL,
	[control] [nvarchar](50) NULL,
	[highest_level_offering] [nvarchar](132) NULL,
	[highest_degree_offering] [nvarchar](132) NULL,
	[undergraduate_offering] [int] NULL,
	[graduate_offering] [int] NULL,
	[degree_granting] [int] NULL,
	[regents_peer] [int] NULL,
	[is_un] [int] NULL,
	[locale] [nvarchar](64) NULL,
	[parent_id] [int] NULL,
	[year_closed] [int] NULL,
	[close_date] [date] NULL,
	[cbsa_id] [int] NULL,
	[cbsa_type] [nvarchar](64) NULL,
	[csa_id] [int] NULL,
	[longitude] [decimal](18, 12) NULL,
	[latitude] [decimal](18, 12) NULL,
	[system_member] [int] NULL,
	[system_name] [nvarchar](255) NULL,
	[open_to_public] [int] NULL,
	[landgrant] [int] NULL,
	[hbcu] [int] NULL,
	[hospital] [int] NULL,
	[medical] [int] NULL,
	[nsf_medical_school] [int] NULL,
	[tribal] [int] NULL,
	[rotc] [int] NULL,
	[confno1] [int] NULL,
	[confno2] [int] NULL,
	[confno3] [int] NULL,
	[confno4] [int] NULL,
 CONSTRAINT [PK_ipeds_institutions] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_pell_grad_rates]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_pell_grad_rates](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[cohort_date_key] [date] NOT NULL,
	[cohort_type] [nvarchar](64) NOT NULL,
	[aid_type] [nvarchar](64) NOT NULL,
	[adjusted_cohort] [int] NOT NULL,
	[completers_6_years] [int] NOT NULL,
 CONSTRAINT [PK_ipeds_pell_grad_rates] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[cohort_date_key] ASC,
	[cohort_type] ASC,
	[aid_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_retention]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_retention](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[cohort_date_key] [date] NOT NULL,
	[time_status] [nvarchar](16) NOT NULL,
	[adjusted_cohort] [int] NOT NULL,
	[enrolled] [int] NOT NULL,
 CONSTRAINT [PK_ipeds_retention] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[cohort_date_key] ASC,
	[time_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_student_aid]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_student_aid](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[total_undergraduates] [int] NULL,
	[full_time_freshman_cohort] [int] NULL,
	[total_number] [int] NULL,
	[total_on_campus] [int] NULL,
	[total_off_campus_with_family] [int] NULL,
	[total_off_campus_not_with_family] [int] NULL,
	[total_living_arrangement_unknown] [int] NULL,
	[cohort_paying_indistrict] [int] NULL,
	[cohort_paying_instate] [int] NULL,
	[cohort_paying_outstate] [int] NULL,
	[cohort_paying_unknown] [int] NULL,
	[awarded_grant_aid] [int] NULL,
	[total_grant_aid] [money] NULL,
	[awarded_federal_grants] [int] NULL,
	[total_federal_grants] [money] NULL,
	[awarded_state_local_grants] [int] NULL,
	[total_state_local_grants] [money] NULL,
	[awarded_institutional_grants] [int] NULL,
	[total_institutional_grants] [money] NULL,
	[awarded_federal_student_loans] [int] NULL,
	[total_federal_student_loans] [money] NULL,
	[awarded_other_student_loans] [int] NULL,
	[total_other_student_loans] [money] NULL,
 CONSTRAINT [PK_ipeds_student_aid] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_student_aid_by_income]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_student_aid_by_income](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[income_band] [nvarchar](32) NOT NULL,
	[count] [int] NOT NULL,
	[grant_recipients] [int] NULL,
	[total_amount] [money] NULL,
	[average_amount] [money] NULL,
	[average_net_price] [money] NULL,
 CONSTRAINT [PK_ipeds_student_aid_by_income] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[income_band] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipeds_test_scores]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_test_scores](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[test_type] [nvarchar](32) NOT NULL,
	[subject] [nvarchar](64) NOT NULL,
	[count] [int] NULL,
	[percentage] [decimal](5, 2) NULL,
	[percentile_25] [int] NULL,
	[percentile_75] [int] NULL,
 CONSTRAINT [PK_ipeds_test_scores] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[test_type] ASC,
	[subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsf_herd_academic_fields]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsf_herd_academic_fields](
	[academic_field_key] [nvarchar](3) NOT NULL,
	[academic_broad_field_id] [nchar](1) NOT NULL,
	[academic_field] [nvarchar](255) NOT NULL,
	[academic_broad_field] [nvarchar](255) NOT NULL,
	[nu_division] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_nsf_herd_academic_fields] PRIMARY KEY CLUSTERED 
(
	[academic_field_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsf_herd_detail_data]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsf_herd_detail_data](
	[inst_id] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[funding_type] [nvarchar](32) NOT NULL,
	[agency_key] [nchar](3) NOT NULL,
	[academic_field_key] [nvarchar](3) NOT NULL,
	[ncses_inst_id] [nvarchar](8) NULL,
	[unitid] [int] NOT NULL,
	[expenditure] [money] NULL,
 CONSTRAINT [PK_nsf_herd_detail_data] PRIMARY KEY CLUSTERED 
(
	[inst_id] ASC,
	[date_key] ASC,
	[funding_type] ASC,
	[agency_key] ASC,
	[academic_field_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsf_herd_federal_agencies]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsf_herd_federal_agencies](
	[agency_key] [nchar](3) NOT NULL,
	[agency_name] [nvarchar](64) NOT NULL,
	[agency_short_name] [nvarchar](32) NOT NULL,
	[agency_type] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_nsf_herd_federal_agencies] PRIMARY KEY CLUSTERED 
(
	[agency_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsf_herd_institution_data]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsf_herd_institution_data](
	[inst_id] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[ncses_inst_id] [nvarchar](8) NULL,
	[unitid] [int] NULL,
	[hbcu_flag] [int] NULL,
	[med_sch_flag] [int] NULL,
	[hhe_flag] [int] NULL,
	[toi_code] [int] NULL,
	[hdg_code] [int] NULL,
	[toc_code] [int] NULL,
	[inst_name_long] [nvarchar](255) NULL,
	[inst_city] [nvarchar](255) NULL,
	[inst_state_code] [nchar](2) NULL,
	[inst_zip] [nvarchar](10) NULL,
	[federal_government] [money] NULL,
	[state_and_local_government] [money] NULL,
	[business] [money] NULL,
	[nonprofit_organizations] [money] NULL,
	[institutional_funds] [money] NULL,
	[other_sources] [money] NULL,
	[total_rd_expenses] [money] NULL,
	[medical_school_expenses] [money] NULL,
	[non_medical_rd] [money] NULL,
 CONSTRAINT [PK_nsf_herd_institution_data] PRIMARY KEY CLUSTERED 
(
	[inst_id] ASC,
	[date_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsf_ipeds_bridge]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsf_ipeds_bridge](
	[unitid_xwalk] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[ncses_inst_id] [nvarchar](255) NULL,
	[inst_name_long] [nvarchar](255) NULL,
	[inst_state_code] [nvarchar](255) NULL,
	[med_sch_flag] [int] NOT NULL,
	[last_reported_year] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[program_fields]    Script Date: 10/14/2019 1:36:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[program_fields](
	[cip_family] [int] NULL,
	[cipcode] [nvarchar](7) NULL,
	[cip_number] [decimal](7, 4) NULL,
	[code_length] [int] NULL,
	[action] [nvarchar](22) NULL,
	[text_change] [nvarchar](3) NULL,
	[title] [text] NULL,
	[cip_definition] [text] NULL,
	[cross_references] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[states]    Script Date: 10/14/2019 1:36:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[states](
	[fips] [int] NOT NULL,
	[state_abbreviation] [nchar](2) NOT NULL,
	[state] [nvarchar](32) NOT NULL,
	[region] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_states] PRIMARY KEY CLUSTERED 
(
	[fips] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ipeds_degree_completions] ADD  CONSTRAINT [DF_ipeds_degree_completions_awards]  DEFAULT ((0)) FOR [awards]
GO
ALTER TABLE [dbo].[ipeds_fall_enrollment] ADD  CONSTRAINT [DF_ipeds_fall_enrollment_headcount]  DEFAULT ((0)) FOR [headcount]
GO
ALTER TABLE [dbo].[ipeds_fall_enrollment_by_age] ADD  CONSTRAINT [DF_ipeds_fall_enrollment_by_age_headcount]  DEFAULT ((0)) FOR [headcount]
GO
ALTER TABLE [dbo].[ipeds_fall_enrollment_by_residency] ADD  CONSTRAINT [DF_ipeds_fall_enrollment_by_residency_headcount]  DEFAULT ((0)) FOR [headcount]
GO
ALTER TABLE [dbo].[ipeds_fall_staff] ADD  CONSTRAINT [DF_ipeds_fall_staff_headcount]  DEFAULT ((0)) FOR [headcount]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_entering_cohort]  DEFAULT ((0)) FOR [entering_cohort]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_exclusions]  DEFAULT ((0)) FOR [exclusions]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_adjusted_cohort]  DEFAULT ((0)) FOR [adjusted_cohort]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_completers_4_years]  DEFAULT ((0)) FOR [completers_4_years]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_completers_5_years]  DEFAULT ((0)) FOR [completers_5_years]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_completers_6_years]  DEFAULT ((0)) FOR [completers_6_years]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_enrolled]  DEFAULT ((0)) FOR [enrolled]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_transfers]  DEFAULT ((0)) FOR [transfers]
GO
ALTER TABLE [dbo].[ipeds_grad_rates] ADD  CONSTRAINT [DF_ipeds_grad_rates_no_longer_enrolled]  DEFAULT ((0)) FOR [no_longer_enrolled]
GO
ALTER TABLE [dbo].[ipeds_pell_grad_rates] ADD  CONSTRAINT [DF_ipeds_pell_grad_rates_adjusted_cohort]  DEFAULT ((0)) FOR [adjusted_cohort]
GO
ALTER TABLE [dbo].[ipeds_pell_grad_rates] ADD  CONSTRAINT [DF_ipeds_pell_grad_rates_completers_6_years]  DEFAULT ((0)) FOR [completers_6_years]
GO
ALTER TABLE [dbo].[ipeds_retention] ADD  CONSTRAINT [DF_ipeds_retention_adjusted_cohort]  DEFAULT ((0)) FOR [adjusted_cohort]
GO
ALTER TABLE [dbo].[ipeds_retention] ADD  CONSTRAINT [DF_ipeds_retention_enrolled]  DEFAULT ((0)) FOR [enrolled]
GO
