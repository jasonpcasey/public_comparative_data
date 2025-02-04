USE [master]
GO
/****** Object:  Database [ched-dev]    Script Date: 10/11/2019 1:57:23 PM ******/
CREATE DATABASE [ched-dev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ched-dev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ched-dev.mdf' , SIZE = 6299648KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ched-dev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ched-dev_log.ldf' , SIZE = 31727616KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ched-dev] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ched-dev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ched-dev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ched-dev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ched-dev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ched-dev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ched-dev] SET ARITHABORT OFF 
GO
ALTER DATABASE [ched-dev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ched-dev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ched-dev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ched-dev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ched-dev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ched-dev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ched-dev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ched-dev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ched-dev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ched-dev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ched-dev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ched-dev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ched-dev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ched-dev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ched-dev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ched-dev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ched-dev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ched-dev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ched-dev] SET  MULTI_USER 
GO
ALTER DATABASE [ched-dev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ched-dev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ched-dev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ched-dev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ched-dev] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ched-dev', N'ON'
GO
ALTER DATABASE [ched-dev] SET QUERY_STORE = OFF
GO
USE [ched-dev]
GO
/****** Object:  Table [dbo].[cip_hierarchy]    Script Date: 10/11/2019 1:57:23 PM ******/
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
/****** Object:  View [dbo].[federal_program_field_dimension]    Script Date: 10/11/2019 1:57:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[federal_program_field_dimension]
AS

SELECT [cip2_desc] AS [general_family]
      ,[cip4_desc] AS [intermediate_family]
	  ,[cip6] AS [cipcode]
      ,CAST([cip6] AS decimal(6,4)) AS [cip_number]
      ,[cip6_desc] AS [title]
  FROM [dbo].[cip_hierarchy]

GO
/****** Object:  Table [dbo].[ipeds_institutions]    Script Date: 10/11/2019 1:57:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_institutions](
	[year] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[unitid] [int] NOT NULL,
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
	[highest_level_offering] [nvarchar](50) NULL,
	[highest_degree_offering] [nvarchar](50) NULL,
	[undergraduate_offering] [int] NULL,
	[graduate_offering] [int] NULL,
	[degree_granting] [int] NULL,
	[regents_peer] [int] NULL,
	[is_un] [int] NULL,
	[locale] [nvarchar](50) NULL,
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
/****** Object:  View [dbo].[distinct_institutions]    Script Date: 10/11/2019 1:57:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[distinct_institutions]
AS
SELECT [unitid], MAX([date_key]) AS [date_key] FROM [dbo].[ipeds_institutions] GROUP BY [unitid]
GO
/****** Object:  Table [dbo].[ipeds_charges]    Script Date: 10/11/2019 1:57:23 PM ******/
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
/****** Object:  View [dbo].[ipeds_charges_fact]    Script Date: 10/11/2019 1:57:23 PM ******/
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
/****** Object:  Table [dbo].[ipeds_average_tuition]    Script Date: 10/11/2019 1:57:23 PM ******/
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
/****** Object:  View [dbo].[ipeds_average_tuition_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  Table [dbo].[ipeds_pell_grad_rates]    Script Date: 10/11/2019 1:57:24 PM ******/
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
	[adjusted_cohort] [int] NULL,
	[completers_6_years] [int] NULL,
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
/****** Object:  View [dbo].[ipeds_pell_graduation_rates_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ipeds_pell_graduation_rates_fact]
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
/****** Object:  Table [dbo].[ipeds_test_scores]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[ipeds_admissions_test_scores_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ipeds_admissions_test_scores_fact]
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
/****** Object:  Table [dbo].[ipeds_student_aid]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[ipeds_overall_student_aid_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ipeds_overall_student_aid_fact]
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
/****** Object:  Table [dbo].[ipeds_student_aid_by_income]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_student_aid_by_income](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[income_band] [nvarchar](32) NOT NULL,
	[count] [int] NULL,
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
/****** Object:  View [dbo].[ipeds_student_aid_by_income_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ipeds_student_aid_by_income_fact]
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
/****** Object:  Table [dbo].[nsf_herd_institution_data]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[nsf_herd_institutional_data_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[nsf_herd_institutional_data_fact]
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
/****** Object:  Table [dbo].[aau_membership]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  Table [dbo].[states]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  Table [dbo].[institution_names]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  Table [dbo].[counties]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  Table [dbo].[csa]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  Table [dbo].[cbsa]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  Table [dbo].[carnegie_classes]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  Table [dbo].[athletic_conferences]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[ipeds_institution_dimension]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_institution_dimension]
AS
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
  FROM distinct_institutions x 
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
/****** Object:  Table [dbo].[ipeds_grad_rates]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_grad_rates](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[cohort_date_key] [int] NOT NULL,
	[demographic_key] [nchar](5) NOT NULL,
	[entering_cohort] [int] NULL,
	[exclusions] [int] NULL,
	[adjusted_cohort] [int] NULL,
	[completers_4_years] [int] NULL,
	[completers_5_years] [int] NULL,
	[completers_6_years] [int] NULL,
	[enrolled] [int] NULL,
	[transfers] [int] NULL,
	[no_longer_enrolled] [int] NULL,
 CONSTRAINT [PK_ipeds_grad_rates] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[cohort_date_key] ASC,
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ipeds_graduation_rates_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_graduation_rates_fact]
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
/****** Object:  Table [dbo].[ipeds_fall_enrollment_by_age]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_fall_enrollment_by_age](
	[unitid] [int] NULL,
	[date_key] [date] NULL,
	[age_range] [nvarchar](20) NULL,
	[career_level] [nvarchar](20) NULL,
	[time_status] [nvarchar](20) NULL,
	[demographic_key] [nchar](5) NULL,
	[headcount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ipeds_fall_enrollment_by_age_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ipeds_fall_enrollment_by_age_fact]
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
/****** Object:  Table [dbo].[ipeds_fall_enrollment]    Script Date: 10/11/2019 1:57:24 PM ******/
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
	[headcount] [int] NULL,
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
/****** Object:  View [dbo].[ipeds_fall_enrollment_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_fall_enrollment_fact]
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
/****** Object:  Table [dbo].[ipeds_admissions]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[ipeds_admissions_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ipeds_admissions_fact]
AS

SELECT [unitid]
      ,[date_key]
      ,[demographic_key]
      ,[applications]
      ,[admissions]
      ,[enrolled]
  FROM [dbo].[ipeds_admissions]

GO
/****** Object:  Table [dbo].[ipeds_retention]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_retention](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[cohort_date_key] [int] NOT NULL,
	[time_status] [nvarchar](16) NOT NULL,
	[adjusted_cohort] [int] NULL,
	[enrolled] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ipeds_retention_rates_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[ipeds_retention_rates_fact]
AS

SELECT [unitid]
      ,[date_key]
      ,[cohort_date_key]
      ,[time_status]
      ,[adjusted_cohort]
      ,[enrolled]
  FROM [dbo].[ipeds_retention]


GO
/****** Object:  Table [dbo].[ipeds_fall_enrollment_by_residency]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[ipeds_fall_enrollment_by_residency_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[ipeds_fall_enrollment_by_residency_fact]
AS

SELECT [unitid]
      ,[date_key]
	  ,[state]
      ,[student_population]
      ,[headcount]
  FROM [dbo].[ipeds_fall_enrollment_by_residency]

GO
/****** Object:  Table [dbo].[nsf_herd_academic_fields]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[nsf_academic_fields_dimension]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[nsf_academic_fields_dimension]
AS

SELECT [academic_field_key]
      ,[academic_field]
      ,[academic_broad_field]
      ,[nu_division]
  FROM [dbo].[nsf_herd_academic_fields]

GO
/****** Object:  Table [dbo].[nsf_herd_detail_data]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[nsf_herd_expenditures_by_field_and_source_fact]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[nsf_herd_expenditures_by_field_and_source_fact]
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
/****** Object:  Table [dbo].[nsf_herd_federal_agencies]    Script Date: 10/11/2019 1:57:24 PM ******/
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
/****** Object:  View [dbo].[nsf_federal_agency_dimension]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[nsf_federal_agency_dimension]
AS

SELECT [agency_key]
      ,[agency_name]
      ,[agency_short_name]
	  ,[agency_type]
  FROM [dbo].[nsf_herd_federal_agencies]

GO
/****** Object:  Table [dbo].[ipeds_fall_staff]    Script Date: 10/11/2019 1:57:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_fall_staff](
	[unitid] [int] NOT NULL,
	[date_key] [date] NOT NULL,
	[employee_key] [nchar](5) NOT NULL,
	[demographic_key] [nchar](5) NOT NULL,
	[headcount] [int] NULL,
 CONSTRAINT [PK_ipeds_fall_staff] PRIMARY KEY CLUSTERED 
(
	[unitid] ASC,
	[date_key] ASC,
	[employee_key] ASC,
	[demographic_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ipeds_fall_staff_fact]    Script Date: 10/11/2019 1:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ipeds_fall_staff_fact]
AS

SELECT [unitid]
      ,[date_key]
      ,[employee_key]
      ,[demographic_key]
      ,[headcount]
  FROM [dbo].[ipeds_fall_staff]

GO
/****** Object:  Table [dbo].[ipeds_degree_completions]    Script Date: 10/11/2019 1:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipeds_degree_completions](
	[unitid] [int] NULL,
	[date_key] [date] NULL,
	[degree_key] [nchar](3) NULL,
	[cipcode] [nchar](7) NULL,
	[demographic_key] [nchar](5) NULL,
	[awards] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ipeds_degree_completions_fact]    Script Date: 10/11/2019 1:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ipeds_degree_completions_fact]
AS

SELECT [unitid]
      ,[date_key]
      ,[degree_key]
      ,[cipcode]
      ,[demographic_key]
      ,[awards]
  FROM [dbo].[ipeds_degree_completions]


GO
/****** Object:  Table [dbo].[ipeds_degree_types]    Script Date: 10/11/2019 1:57:25 PM ******/
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
/****** Object:  View [dbo].[ipeds_degree_dimension]    Script Date: 10/11/2019 1:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[ipeds_degree_dimension]
AS

SELECT [degree_key]
      ,[award_level]
      ,[major_number]
  FROM [dbo].[ipeds_degree_types]

GO
/****** Object:  Table [dbo].[aamc_faculty]    Script Date: 10/11/2019 1:57:25 PM ******/
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
/****** Object:  Table [dbo].[date_dimension]    Script Date: 10/11/2019 1:57:25 PM ******/
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
/****** Object:  Table [dbo].[ef_raw]    Script Date: 10/11/2019 1:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ef_raw](
	[year] [int] NULL,
	[unitid] [int] NULL,
	[efalevel] [float] NULL,
	[efnralm] [int] NULL,
	[efnralw] [int] NULL,
	[efunknm] [int] NULL,
	[efunknw] [int] NULL,
	[efhispm] [int] NULL,
	[efhispw] [int] NULL,
	[efaianm] [int] NULL,
	[efaianw] [int] NULL,
	[efasiam] [int] NULL,
	[efasiaw] [int] NULL,
	[efbkaam] [int] NULL,
	[efbkaaw] [int] NULL,
	[efnhpim] [float] NULL,
	[efnhpiw] [float] NULL,
	[efwhitm] [int] NULL,
	[efwhitw] [int] NULL,
	[ef2morm] [float] NULL,
	[ef2morw] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 10/11/2019 1:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[Unitid] [int] NOT NULL,
	[Calendar Year] [int] NOT NULL,
	[Origin] [nvarchar](32) NOT NULL,
	[First Time Students] [int] NULL,
	[Recent HS Graduates] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[herd_fields_old]    Script Date: 10/11/2019 1:57:25 PM ******/
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
/****** Object:  Table [dbo].[ipeds_demographic_dimension]    Script Date: 10/11/2019 1:57:25 PM ******/
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
/****** Object:  Table [dbo].[ipeds_employee_dimension]    Script Date: 10/11/2019 1:57:25 PM ******/
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
/****** Object:  Table [dbo].[nsf_ipeds_bridge]    Script Date: 10/11/2019 1:57:25 PM ******/
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
/****** Object:  Table [dbo].[program_fields]    Script Date: 10/11/2019 1:57:25 PM ******/
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
ALTER TABLE [dbo].[ipeds_fall_enrollment_by_residency] ADD  CONSTRAINT [DF_ipeds_fall_enrollment_by_residency_headcount]  DEFAULT ((0)) FOR [headcount]
GO
USE [master]
GO
ALTER DATABASE [ched-dev] SET  READ_WRITE 
GO
