USE [master]
GO
/****** Object:  Database [IzendaSampleDB]    Script Date: 10/6/2017 4:35:07 PM ******/
CREATE DATABASE [IzendaSampleDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IzendaSampleDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.LOCALSERVER\MSSQL\DATA\IzendaSampleDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IzendaSampleDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.LOCALSERVER\MSSQL\DATA\IzendaSampleDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [IzendaSampleDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IzendaSampleDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IzendaSampleDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IzendaSampleDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IzendaSampleDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IzendaSampleDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IzendaSampleDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET RECOVERY FULL 
GO
ALTER DATABASE [IzendaSampleDB] SET  MULTI_USER 
GO
ALTER DATABASE [IzendaSampleDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IzendaSampleDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IzendaSampleDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IzendaSampleDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IzendaSampleDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'IzendaSampleDB', N'ON'
GO
ALTER DATABASE [IzendaSampleDB] SET QUERY_STORE = OFF
GO
USE [IzendaSampleDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [IzendaSampleDB]
GO
/****** Object:  Table [dbo].[IzendaAccessRight]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaAccessRight](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaAdvancedSetting]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaAdvancedSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Value] [nvarchar](2048) NULL,
	[DefaultValue] [nvarchar](256) NULL,
	[Type] [nvarchar](50) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaCity]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaCity](
	[GeonameId] [varchar](10) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[AsciiName] [nvarchar](255) NULL,
	[AlternateNames] [nvarchar](255) NULL,
	[Latitude] [varchar](15) NULL,
	[Longitude] [varchar](15) NULL,
	[FeatureClasss] [nvarchar](255) NULL,
	[FeatureCode] [nvarchar](255) NULL,
	[CountryCode] [nvarchar](255) NULL,
	[CountryCode3] [nvarchar](255) NULL,
	[CountryName] [nvarchar](255) NULL,
	[Cc2] [nvarchar](255) NULL,
	[Admin1Code] [varchar](10) NULL,
	[Admin2Code] [nvarchar](255) NULL,
	[Admin3Code] [nvarchar](255) NULL,
	[Admin4Code] [nvarchar](255) NULL,
	[Population] [varchar](10) NULL,
	[Elevation] [varchar](10) NULL,
	[Dem] [varchar](10) NULL,
	[Timezone] [nvarchar](255) NULL,
	[ModificationDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaCommonFilterField]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaCommonFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](1000) NULL,
	[DisplayName] [varchar](256) NULL,
	[Value] [varchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[DataType] [nvarchar](50) NULL,
	[DashboardId] [uniqueidentifier] NULL,
	[Position] [int] NULL,
	[FilterFieldContent] [varchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaConnection]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaConnection](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ServerTypeId] [uniqueidentifier] NOT NULL,
	[ConnectionString] [nvarchar](500) NULL,
	[Visible] [bit] NULL,
	[Deleted] [bit] NULL,
	[RelateToConnectionId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Color] [nvarchar](10) NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[ServerTypeName] [nvarchar](256) NULL,
	[DatabaseName] [nvarchar](256) NULL,
	[DatabaseServer] [nvarchar](256) NULL,
 CONSTRAINT [PK_Connection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaCountryCode]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaCountryCode](
	[Name] [nvarchar](256) NULL,
	[Code2] [varchar](10) NULL,
	[Code3] [varchar](10) NULL,
	[Continent] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDashboard]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDashboard](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[SubCategoryId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ImageUrl] [nvarchar](2048) NULL,
	[StretchImage] [bit] NULL,
	[BackgroundColor] [nvarchar](50) NULL,
	[ShowFilterDescription] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[Owner] [nvarchar](256) NULL,
	[LastViewed] [datetime] NULL,
	[NumberOfView] [bigint] NULL,
	[RenderingTime] [float] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[CreatedById] [uniqueidentifier] NULL,
	[ModifiedById] [uniqueidentifier] NULL,
	[SourceId] [uniqueidentifier] NULL,
	[IsGlobal] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDashboardPart]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDashboardPart](
	[Id] [uniqueidentifier] NOT NULL,
	[DashboardId] [uniqueidentifier] NULL,
	[Type] [nvarchar](50) NULL,
	[Title] [nvarchar](256) NULL,
	[ReportId] [uniqueidentifier] NULL,
	[ReportPartId] [uniqueidentifier] NULL,
	[NumberOfRecord] [int] NULL,
	[FilterDescription] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[PositionX] [int] NULL,
	[PositionY] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[SourceId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDashboardPartFilterField]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDashboardPartFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[FilterFieldId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[DashboardPartId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDataFormat]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDataFormat](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Format] [nvarchar](100) NULL,
	[Description] [nvarchar](256) NULL,
	[Category] [nvarchar](100) NULL,
	[SubCategory] [nvarchar](100) NULL,
	[DataType] [nvarchar](50) NULL,
	[AllowFilter] [bit] NULL,
	[AllowFieldProperty] [bit] NULL,
	[GroupBy] [nvarchar](50) NULL,
	[FormatDataType] [nvarchar](50) NULL,
	[Position] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaDataFormat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDataSourceCategory]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDataSourceCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaDataSourceCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDataTypeFunctionMapping]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDataTypeFunctionMapping](
	[Id] [uniqueidentifier] NOT NULL,
	[DataType] [nvarchar](50) NOT NULL,
	[FunctionId] [uniqueidentifier] NOT NULL,
	[FormatDataType] [nvarchar](50) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaDataTypeFunctionMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDBVersion]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDBVersion](
	[Version] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaEmailSetting]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaEmailSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[DisplayName] [nvarchar](256) NULL,
	[EmailFromAddress] [nvarchar](256) NULL,
	[UseSystemConfiguration] [bit] NULL,
	[Server] [nvarchar](256) NULL,
	[Port] [int] NULL,
	[SecureConnection] [bit] NULL,
	[Login] [nvarchar](256) NULL,
	[Password] [nvarchar](500) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaExportMarginDefaultValue]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaExportMarginDefaultValue](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL,
	[TopValue] [float] NULL,
	[BottomValue] [float] NULL,
	[LeftValue] [float] NULL,
	[RightValue] [float] NULL,
	[HeaderValue] [float] NULL,
	[FooterValue] [float] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFilterField]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[FilterId] [uniqueidentifier] NULL,
	[QuerySourceFieldId] [uniqueidentifier] NULL,
	[QuerySourceId] [uniqueidentifier] NULL,
	[QuerySourceType] [nvarchar](50) NULL,
	[RelationshipId] [uniqueidentifier] NULL,
	[Position] [int] NULL,
	[Alias] [nvarchar](256) NULL,
	[ReportFieldAlias] [nvarchar](256) NULL,
	[ReportPartTitle] [nvarchar](256) NULL,
	[Visible] [bit] NULL,
	[Required] [bit] NULL,
	[Cascading] [bit] NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[Value] [nvarchar](max) NULL,
	[DataFormatId] [uniqueidentifier] NULL,
	[FontFamily] [nvarchar](50) NULL,
	[FontSize] [int] NULL,
	[TextColor] [nvarchar](10) NULL,
	[BackgroundColor] [nvarchar](10) NULL,
	[FontBold] [bit] NULL,
	[FontItalic] [bit] NULL,
	[FontUnderline] [bit] NULL,
	[SortType] [nvarchar](10) NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[QuerySourceUniqueName] [nvarchar](256) NULL,
	[QuerySourceFieldName] [nvarchar](256) NULL,
	[ComparisonFieldUniqueName] [nvarchar](256) NULL,
	[IsNegative] [bit] NULL,
 CONSTRAINT [PK_IzendaFilterField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFilterOperator]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFilterOperator](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Label] [nvarchar](256) NULL,
	[OperatorGroupId] [uniqueidentifier] NULL,
	[AllowParameter] [bit] NULL,
	[Position] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaFilterOperator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFilterOperatorGroup]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFilterOperatorGroup](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[DefaultOperatorId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaFilterOperatorGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFilterOperatorRule]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFilterOperatorRule](
	[Id] [uniqueidentifier] NOT NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[AllowNull] [bit] NULL,
	[IsPairedValues] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaFilterOperatorRule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFunction]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Expression] [nvarchar](256) NULL,
	[SubTotal] [bit] NULL,
	[GrandTotal] [bit] NULL,
	[FieldProperty] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaFunction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaGlobalDatabaseMapping]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaGlobalDatabaseMapping](
	[Id] [uniqueidentifier] NOT NULL,
	[FromServer] [nvarchar](256) NULL,
	[ToServer] [nvarchar](256) NULL,
	[FromDatabaseName] [nvarchar](256) NULL,
	[Type] [int] NULL,
	[FromObject] [nvarchar](256) NULL,
	[ToDatabaseName] [nvarchar](256) NULL,
	[ToObject] [nvarchar](256) NULL,
	[SelectAllTenants] [bit] NULL,
	[TenantIds] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaLanguage]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaLanguage](
	[Id] [uniqueidentifier] NULL,
	[Language] [nvarchar](150) NULL,
	[CultureName] [nvarchar](20) NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](150) NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaLicenseSetting]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaLicenseSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[Online] [bit] NULL,
	[LicenseKey] [nvarchar](max) NULL,
	[Token] [nvarchar](max) NULL,
	[LastRefresh] [datetime] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_License] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaPasswordHistory]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaPasswordHistory](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[PasswordSalt] [nvarchar](256) NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Deleted] [bit] NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaPerformanceStatsTrend]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaPerformanceStatsTrend](
	[Id] [uniqueidentifier] NOT NULL,
	[NumberOfCore] [int] NULL,
	[NumberOfServer] [int] NULL,
	[NumberOfReport] [bigint] NULL,
	[NumberOfReportCreator] [bigint] NULL,
	[NumberOfDashboard] [bigint] NULL,
	[NumberOfDashboardCreator] [bigint] NULL,
	[NumberOfReportView] [bigint] NULL,
	[NumberOfDashboardView] [bigint] NULL,
	[NumberOfActiveTenant] [bigint] NULL,
	[NumberOfInactiveTenant] [bigint] NULL,
	[NumberOfActiveUser] [bigint] NULL,
	[NumberOfInactiveUser] [bigint] NULL,
	[NumberOfCreateReportUser] [bigint] NULL,
	[NumberOfCreateDashboardUser] [bigint] NULL,
	[IzendaVersion] [nvarchar](100) NULL,
	[IzendaConfigurationDatabase] [nvarchar](256) NULL,
	[DatabaseTypesInUse] [nvarchar](max) NULL,
	[ClientLicenseKey] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaPostalCode]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaPostalCode](
	[PostalCode] [varchar](10) NOT NULL,
	[PlaceName] [nvarchar](255) NULL,
	[Province] [nvarchar](255) NULL,
	[Latitude] [varchar](15) NULL,
	[Longitude] [varchar](15) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaQuerySource]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaQuerySource](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Selected] [bit] NULL,
	[Deleted] [bit] NULL,
	[ParentQuerySourceId] [uniqueidentifier] NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[DataSourceCategoryId] [uniqueidentifier] NULL,
	[Alias] [nvarchar](256) NULL,
	[ExtendedProperties] [nvarchar](4000) NULL,
	[PhysicalChange] [int] NULL,
	[Approval] [int] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[CustomDefinition] [nvarchar](max) NULL,
	[Disabled] [bit] NULL,
 CONSTRAINT [PK_QuerySource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaQuerySourceCategory]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaQuerySourceCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ParentCategoryId] [uniqueidentifier] NULL,
	[ConnectionId] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_QuerySourceCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaQuerySourceField]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaQuerySourceField](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[DataType] [nvarchar](50) NULL,
	[IzendaDataType] [nvarchar](50) NULL,
	[AllowDistinct] [bit] NULL,
	[Alias] [nvarchar](256) NULL,
	[Visible] [bit] NULL,
	[Filterable] [bit] NULL,
	[QuerySourceId] [uniqueidentifier] NULL,
	[Deleted] [bit] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Type] [int] NULL,
	[GroupPosition] [int] NULL,
	[Position] [int] NULL,
	[FilteredValue] [nvarchar](max) NULL,
	[ExtendedProperties] [nvarchar](max) NULL,
	[MatchedTenant] [bit] NULL,
	[PhysicalChange] [int] NULL,
	[Approval] [int] NULL,
	[FunctionName] [nvarchar](256) NULL,
	[Expression] [nvarchar](max) NULL,
	[ReportId] [uniqueidentifier] NULL,
	[IsCalculated] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsRunningField] [bit] NULL,
 CONSTRAINT [PK_IzendaQuerySourceField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaRelationship]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaRelationship](
	[Id] [uniqueidentifier] NOT NULL,
	[JoinQuerySourceId] [uniqueidentifier] NOT NULL,
	[ForeignQuerySourceId] [uniqueidentifier] NOT NULL,
	[JoinFieldId] [uniqueidentifier] NULL,
	[ForeignFieldId] [uniqueidentifier] NULL,
	[Alias] [nvarchar](256) NULL,
	[SystemRelationship] [bit] NULL,
	[JoinType] [nvarchar](50) NULL,
	[ParentRelationshipId] [uniqueidentifier] NULL,
	[ReportId] [uniqueidentifier] NULL,
	[ForeignAlias] [nvarchar](256) NULL,
	[RelationshipPosition] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[ComparisonOperator] [nvarchar](50) NULL,
 CONSTRAINT [PK_IzendaRelationship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaRelationshipKeyJoin]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaRelationshipKeyJoin](
	[Id] [uniqueidentifier] NOT NULL,
	[RelationshipId] [uniqueidentifier] NOT NULL,
	[JoinQuerySourceId] [uniqueidentifier] NOT NULL,
	[ForeignQuerySourceId] [uniqueidentifier] NULL,
	[JoinFieldId] [uniqueidentifier] NOT NULL,
	[ForeignFieldId] [uniqueidentifier] NULL,
	[Operator] [nvarchar](50) NOT NULL,
	[JoinSourceAlias] [nvarchar](256) NULL,
	[ForeignSourceAlias] [nvarchar](256) NULL,
	[Position] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[ComparisonOperator] [nvarchar](50) NULL,
	[ComparisonValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_IzendaRelationshipKeyJoin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReport]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReport](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [int] NOT NULL,
	[PreviewRecord] [int] NOT NULL,
	[AdvancedMode] [bit] NOT NULL,
	[AllowNulls] [bit] NOT NULL,
	[IsDistinct] [bit] NOT NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[SubCategoryId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Description] [nvarchar](max) NULL,
	[HeaderContent] [nvarchar](max) NULL,
	[FooterContent] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[LastViewed] [datetime] NULL,
	[Owner] [nvarchar](256) NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[Title] [nvarchar](256) NULL,
	[TitleDescriptionContent] [nvarchar](max) NULL,
	[ExcludedRelationships] [nvarchar](max) NULL,
	[NumberOfView] [bigint] NULL,
	[RenderingTime] [float] NULL,
	[CreatedById] [uniqueidentifier] NULL,
	[ModifiedById] [uniqueidentifier] NULL,
	[ExportFormatSettingData] [nvarchar](max) NULL,
	[SnapToGrid] [bit] NULL,
	[UsingFields] [nvarchar](max) NULL,
	[SourceId] [uniqueidentifier] NULL,
	[Params] [nvarchar](max) NULL,
	[Relationships] [nvarchar](max) NULL,
	[UsingFieldNames] [nvarchar](max) NULL,
	[IsGlobal] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportCategory]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [int] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsGlobal] [bit] NULL,
	[CreatedById] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportDataSource]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportDataSource](
	[Id] [uniqueidentifier] NOT NULL,
	[QuerySourceId] [uniqueidentifier] NULL,
	[ReportId] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[QuerySourceUniqueName] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportFilter]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportFilter](
	[Id] [uniqueidentifier] NOT NULL,
	[Logic] [nvarchar](2000) NULL,
	[Visible] [bit] NULL,
	[ReportId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaReportFilter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportHistory]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportHistory](
	[Id] [uniqueidentifier] NOT NULL,
	[ReportId] [uniqueidentifier] NOT NULL,
	[ReportName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Definition] [nvarchar](max) NOT NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportPart]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportPart](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[PositionX] [int] NULL,
	[PositionY] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Content] [nvarchar](max) NULL,
	[NumberOfRecord] [int] NULL,
	[ReportId] [uniqueidentifier] NOT NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[SourceId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportSetting]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[EnforceVersionHistory] [bit] NULL,
	[NumOfArchivedVersionToKeep] [int] NULL,
	[RemoveArchivedVersions] [bit] NULL,
	[RecurrentReportSettingData] [nvarchar](max) NULL,
	[IsScheduled] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[LocalCategoryName] [nvarchar](256) NULL,
	[GlobalCategoryName] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaRole]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaRole](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[PermissionData] [nvarchar](max) NULL,
	[QuerySources] [nvarchar](max) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSecurityPolicy]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSecurityPolicy](
	[Id] [uniqueidentifier] NOT NULL,
	[MinNumberOfPasswordLenght] [int] NULL,
	[MaxNumberOfPasswordLenght] [int] NULL,
	[MinNumberOfSpecialCharacter] [int] NULL,
	[MaxNumberOfSpecialCharacter] [int] NULL,
	[MinNumberOfUppercaseCharacter] [int] NULL,
	[MaxNumberOfUppercaseCharacter] [int] NULL,
	[MinNumberOfLowercaseCharacter] [int] NULL,
	[MaxNumberOfLowercaseCharacter] [int] NULL,
	[MinNumberOfNumericCharacter] [int] NULL,
	[MaxNumberOfNumericCharacter] [int] NULL,
	[MaxNumberOfRepeatSequential] [int] NULL,
	[MinNumberOfPasswordAge] [int] NULL,
	[MaxNumberOfPasswordAge] [int] NULL,
	[NotifyUseDuring] [int] NULL,
	[NumberOfPasswordToKeep] [int] NULL,
	[PasswordLinkValidity] [int] NULL,
	[NumberOfQuestionProfile] [int] NULL,
	[NumberOfQuestionResetPassword] [int] NULL,
	[NumberOfFailedLogonAllowed] [int] NULL,
	[NumberOfFailedAnswerAllowed] [int] NULL,
	[LockoutPeriod] [int] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSecurityQuestion]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSecurityQuestion](
	[Id] [uniqueidentifier] NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[OrderNumber] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaServer]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaServer](
	[Id] [uniqueidentifier] NOT NULL,
	[ServerName] [nvarchar](1000) NULL,
	[ServerCore] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSubsCommonFilterField]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSubsCommonFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[CommonFilterFieldId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[SubscriptionId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSubscription]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSubscription](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Schedule] [nvarchar](max) NULL,
	[FilterValueSelection] [nvarchar](max) NULL,
	[Type] [nvarchar](100) NULL,
	[TimeZoneName] [nvarchar](256) NULL,
	[TimeZoneValue] [nvarchar](256) NULL,
	[StartDate] [datetime] NULL,
	[StartDateUtc] [datetime] NULL,
	[StartTime] [datetime] NULL,
	[RecurrenceType] [int] NULL,
	[RecurrencePattern] [int] NULL,
	[RecurrencePatternValue] [nvarchar](max) NULL,
	[IsEndless] [bit] NULL,
	[IsScheduled] [bit] NULL,
	[Occurrence] [int] NULL,
	[EndDate] [datetime] NULL,
	[EndDateUtc] [datetime] NULL,
	[DeliveryType] [nvarchar](100) NULL,
	[DeliveryMethod] [nvarchar](100) NULL,
	[ExportFileType] [nvarchar](50) NULL,
	[ExportAttachmentType] [nvarchar](50) NULL,
	[EmailSubject] [nvarchar](256) NULL,
	[EmailBody] [nvarchar](max) NULL,
	[ReportId] [uniqueidentifier] NULL,
	[DashboardId] [uniqueidentifier] NULL,
	[Recipients] [nvarchar](max) NULL,
	[LastSuccessfulRun] [nvarchar](500) NULL,
	[NextScheduledRun] [nvarchar](500) NULL,
	[LastSuccessfulRunDate] [datetime] NULL,
	[NextScheduledRunDate] [datetime] NULL,
	[IsSubscription] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[CreatedById] [uniqueidentifier] NULL,
 CONSTRAINT [PK_IzendaReportSubscription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSubscriptionFilterField]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSubscriptionFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[FilterFieldId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[SubscriptionId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaSubscriptionFilterField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSystemSetting]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSystemSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Value] [nvarchar](256) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSystemVariable]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSystemVariable](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[DataType] [nvarchar](50) NULL,
	[Description] [nvarchar](2000) NULL,
	[Scope] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaTemporaryData]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaTemporaryData](
	[Id] [uniqueidentifier] NOT NULL,
	[ObjectId] [uniqueidentifier] NULL,
	[ObjectData] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaTenant]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaTenant](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantID] [varchar](256) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[Modules] [nvarchar](500) NULL,
	[PermissionData] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaTenant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaTimePeriod]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaTimePeriod](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Type] [nvarchar](100) NULL,
	[Value] [nvarchar](256) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsCustomFilter] [bit] NULL,
 CONSTRAINT [PK_IzendaTimePeriod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaUser]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaUser](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[PasswordSalt] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[EmailAddress] [varchar](256) NULL,
	[CurrentTokenHash] [nvarchar](256) NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[DataOffset] [int] NULL,
	[TimestampOffset] [int] NULL,
	[InitPassword] [bit] NULL,
	[RetryLoginTime] [smallint] NULL,
	[LastTimeAccessed] [datetime] NULL,
	[PasswordLastChanged] [datetime] NULL,
	[Locked] [bit] NULL,
	[LockedDate] [datetime] NULL,
	[CultureName] [nvarchar](20) NULL,
	[DateFormat] [nvarchar](20) NULL,
	[SystemAdmin] [bit] NULL,
	[SecurityQuestionLastChanged] [datetime] NULL,
	[NumberOfFailedSecurityQuestion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaUserPermission]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaUserPermission](
	[Id] [uniqueidentifier] NOT NULL,
	[ReportId] [uniqueidentifier] NULL,
	[DashboardId] [uniqueidentifier] NULL,
	[AssignedTo] [nvarchar](4000) NULL,
	[AssignedType] [int] NULL,
	[AccessRightId] [uniqueidentifier] NULL,
	[Position] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[AssignedToNames] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaUserRole]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaUserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaUserSecurityQuestion]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaUserSecurityQuestion](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[SecurityQuestionId] [uniqueidentifier] NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaWorkspace]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaWorkspace](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CopyRoles] [bit] NULL,
	[CopyReport] [bit] NULL,
	[CopyDashboard] [bit] NULL,
	[CopyRolePermission] [bit] NULL,
	[CopyAdvancedSettings] [bit] NULL,
	[CopyDataModel] [bit] NULL,
	[CopyTenantPermissions] [bit] NULL,
	[SourceId] [uniqueidentifier] NULL,
	[SelectAllTenants] [bit] NULL,
	[SourceDataModel] [nvarchar](max) NULL,
	[SourceHashCode] [nvarchar](500) NULL,
	[CopiedRolesData] [nvarchar](max) NULL,
	[CopiedRolePermissionData] [nvarchar](max) NULL,
	[TotalHashCode] [nvarchar](500) NULL,
	[SourceReportModel] [nvarchar](max) NULL,
	[SourceTemplateModel] [nvarchar](max) NULL,
	[SourceDashboardModel] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaWorkspaceMapping]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaWorkspaceMapping](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkspaceId] [uniqueidentifier] NULL,
	[FromDatabaseName] [nvarchar](256) NULL,
	[Type] [int] NULL,
	[FromObject] [nvarchar](256) NULL,
	[ToDatabaseName] [nvarchar](256) NULL,
	[ToObject] [nvarchar](256) NULL,
	[IsGlobal] [bit] NULL,
	[FromServer] [nvarchar](256) NULL,
	[ToServer] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaWorkspaceMappingTenant]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaWorkspaceMappingTenant](
	[WorkspaceMappingId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaWorkspaceTenant]    Script Date: 10/6/2017 4:35:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaWorkspaceTenant](
	[WorkspaceId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Status] [int] NULL,
	[SourceDataModel] [nvarchar](max) NULL,
	[PhysicalDataModel] [nvarchar](max) NULL,
	[DestinationHashCode] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d001', N'Quick Edit', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d002', N'Save As', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d003', N'Locked', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d004', N'View Only', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d005', N'No Access', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d006', N'Save As', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d007', N'Locked', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d008', N'View Only', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d009', N'No Access', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d010', N'Full Access', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d011', N'Full Access', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5b96adfc-02c6-4f06-b1ef-0556320227e9', N'SetAdditiveFieldAutoFilterable', N'0', N'0', N'Security', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'382f900c-b5cb-43a1-9bc6-1212ed05f5d0', N'ShowIntroductionText', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ace76032-48a9-40bf-a7eb-2341164811a8', N'SortColumnName', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'65e76caa-9c38-487b-88d1-39ef02240308', N'TimezoneForTimestampOffset', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'630393f4-ed1d-4b6f-8440-3c37f9c0bb18', N'UseNoLock', N'1', N'1', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'93b92f7b-fb81-4039-a9b7-4bf1d0e05045', N'QueryTimeout', N'3600', N'3600', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'944264df-50ed-4187-a39a-509f1bbd453b', N'DataSourceLimit', N'1000', N'1000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'de9314ab-914d-47a2-aabd-5dba9fe659a6', N'ShowTenantField', N'1', N'1', N'Security', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd9317d91-fd6a-497f-b037-69fdcdc25427', N'TrimTimeInJoins', N'1', N'1', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'612a746a-4284-4598-83ea-703173a0e327', N'TimezoneForDataOffset', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5a2cf40d-7ae3-4a28-a323-77cf6c7acfd2', N'QueryLimit', N'100000', N'100000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'56d625e0-6a17-42a7-a08e-7f292f49ab77', N'FieldLimit', N'1000', N'1000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e4eb4c3c-c0c1-4288-b9c9-9ed1afa382a2', N'TenantField', N'', N'', N'Security', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4d2f7f4d-ae63-4f3c-b0d1-a5498af9d21a', N'SetAdditiveFieldAutoVisible', N'0', N'0', N'Security', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd9a062a3-cd25-4a07-b77b-b6f5145c9d36', N'PivotColumnLimit', N'100000', N'100000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9229d15a-1751-45b9-bbe3-c2be27f67fc4', N'SendToDiskPath', N'', N'', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'261d5cd6-c937-4c44-8e9c-c53db6281711', N'ShowSchemaName', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bc56ad1f-5204-46da-9b93-d07602138f55', N'FilterLimit', N'1000', N'1000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'36efa5c1-7220-4ae6-854c-da5ff5aef310', N'ConvertNullToEmptyString', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3e3c49a4-17b2-4fa0-8dcc-dac1ec085092', N'IntroductionText', N'', N'', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4468205f-3b6b-47cf-8edb-009d56cd8eca', N'0000', N'0000', N'Positive: 15000, Negative: -15000', N'Number', N'', N'Numeric', 0, 1, N'', NULL, 94, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e02ef6b7-685e-4e17-9194-00bf9e67f17f', N'$0000', N'$0000', N'Positive: $15000, Negative: -$15000', N'Currency', N'', N'Numeric', 0, 1, N'', NULL, 99, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1bc58a6d-9137-4ff8-869b-00f7ddec4366', N'$/100', N'$/100', N'Positive: $150.00', N'Currency', N'', N'Numeric', 0, 1, N'', NULL, 100, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'58afe61e-b7e9-44b3-a6bf-01b52b1ccd5c', N'0000%', N'0000%', N'Positive: 15000%, Negative: -15000%', N'Percentage', N'', N'Numeric', 0, 1, N'', NULL, 105, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f455bb6c-ac46-4ba1-803c-01cd35f2e64e', N'% of Group', N'% of Group', N'', N'Percentage', N'', N'Numeric', 0, 1, N'', NULL, 106, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5b8dd671-24c7-4751-9d0b-02053dbe35cf', N'% of Group (with rounding)', N'% of Group (with rounding)', N'', N'Percentage', N'', N'Numeric', 0, 1, N'', NULL, 107, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dd465832-37ea-41d7-91d5-021dc4a04176', N'Page Number', N'Page Number', N'', N'', N'', N'Page Number', 0, 1, N'', NULL, 111, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7371329e-de2a-4585-b229-02549c9682fa', N'Page Number of Total Page Numbers', N'Page Number of Total Page Numbers', N'', N'', N'', N'Page Number', 0, 1, N'', NULL, 112, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3ac94ac6-b335-431a-918d-0256f2dc8e39', N'1K', N'1K', N'', N'Abbreviation', N'', N'Numeric', 0, 1, N'', NULL, 108, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'726d2bd0-c846-484c-ac24-026b5c265022', N'1M', N'1M', N'', N'Abbreviation', N'', N'Numeric', 0, 1, N'', NULL, 109, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'daf594b4-7824-494d-b353-02789380c9a7', N'1B', N'1B', N'', N'Abbreviation', N'', N'Numeric', 0, 1, N'', NULL, 110, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c7cd571e-efa9-4ec6-bee9-02e0a8afb143', N'Day', N'Day', N'16', N'Long Date', N'', N'Date & Time', 0, 1, N'day', NULL, 25, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'703c194f-c90c-4512-9b2f-0350e9241102', N'Page Number / Total Page Numbers', N'Page Number / Total Page Numbers', N'', N'', N'', N'Page Number', 0, 1, N'', NULL, 113, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7e4ed46a-c06a-4d47-b032-03aa530ab331', N'Month', N'Month', N'01', N'Long Date', N'', N'Date & Time', 0, 1, N'month', NULL, 26, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'76875180-32c1-4180-b92f-03bdb14c4f6a', N'Year', N'Year', N'2016', N'Long Date', N'', N'Date & Time', 0, 1, N'year', NULL, 27, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8e4b292a-9685-4bca-93ca-03bdeee470cc', N'Month Name', N'Month Name', N'January', N'Long Date', N'', N'Date & Time', 0, 1, N'month', NULL, 28, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1856a6e8-15f9-4602-9c80-03ccb98fd821', N'Day of Week', N'Day of Week', N'Sunday', N'Long Date', N'', N'Date & Time', 0, 1, N'weekday', NULL, 29, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fdcafa84-11d5-4e0d-a0db-04c7762d7afb', N'Date', N'Date', N'02/15/2016', N'Long Date', N'', N'Date & Time', 0, 1, N'date', NULL, 30, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'07ad61ba-02e0-4270-b541-0524f384895e', N'Week Number', N'Week Number', N'Week 07 - 2016', N'Long Date', N'', N'Date & Time', 0, 1, N'weeknumber', NULL, 31, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'06195f60-9fae-402c-ad1c-06153747d0b9', N'yyyy - Qtr', N'yyyy - Qtr', N'2016-Q1', N'Long Date', N'', N'Date & Time', 0, 1, N'yearandquarter', NULL, 32, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8bec5d4e-ce5a-4393-9aca-066d6560b546', N'Qtr', N'Qtr', N'Q1', N'Long Date', N'', N'Date & Time', 0, 1, N'quarter', NULL, 33, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8074c8aa-55c7-4326-b6cd-0d4b0f7300cb', N'MM/dd/yyyy', N'MM/dd/yyyy', N'01/01/2016', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'99b3e614-e8b5-4029-92f4-0eb3b4567ee8', N'M/d/yyyy', N'M/d/yyyy', N'1/1/2016', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dac64bc3-f80d-471d-9c85-108e1b4ba12f', N'MM/dd/yy', N'MM/dd/yy', N'01/01/16', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 3, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1a096ce2-ec61-434a-8661-111c1144d280', N'M/d/yy', N'M/d/yy', N'1/1/16', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 4, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'39205d97-69c0-4218-aebc-1258050ee213', N'dd/MM/yyyy', N'dd/MM/yyyy', N'01/01/2016', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 5, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'37ea8e5a-221c-4e00-88c2-1462db60c321', N'd/M/yyyy', N'd/M/yyyy', N'1/1/2016', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 6, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'47965d0b-abc8-4e20-a588-14c45a73c3f9', N'dd/MM/yy', N'dd/MM/yy', N'01/01/16', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 7, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'de0efa66-6346-4313-800c-1619704e1d77', N'd/M/yy', N'd/M/yy', N'1/1/16', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 8, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'aae0b97a-0b8b-4279-b6ab-172b2a5a7b94', N'yyyy/MM/dd', N'yyyy/MM/dd', N'2016/01/01', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 9, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dd8d2ffe-8df3-49b2-93e6-181b0a7d3823', N'yyyy/M/d', N'yyyy/M/d', N'2016/1/1', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 10, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0833ea48-a1ec-43bc-889f-18c64165104f', N'MM-yy', N'MM-yy', N'01-16', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 11, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0549ff60-f999-4c9f-b7ce-19ca7136c108', N'M-yy', N'M-yy', N'1-16', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 12, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8428b370-13c3-444e-aace-1a6310257460', N'MM-yyyy', N'MM-yyyy', N'01-2016', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 13, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0aec04a1-c573-4858-967d-1a65899905fb', N'M-yyyy', N'M-yyyy', N'1-2016', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 14, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1f15d83b-b08f-4fef-a2b8-1af83b3d3089', N'yy-MM', N'yy-MM', N'16-01', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 15, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ce48ffc4-ba34-44b4-a6a3-1e3aa9bfb489', N'yy-M', N'yy-M', N'16-1', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 16, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a5dc228e-87be-4131-89e7-21b2942ceb6c', N'yyyy-MM', N'yyyy-MM', N'2016-01', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 17, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5cde36e7-3bc1-46be-a0aa-22578b7b3dcf', N'yyyy-M', N'yyyy-M', N'2016-1', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 18, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b330e42b-5f3f-449c-8437-24fcb3900cdc', N'[Month Name]-yy', N'[Month Name]-yy', N'January-16', N'Long Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 19, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd80cabee-2301-45e2-9923-252122708817', N'[Month Name]-yyyy', N'[Month Name]-yyyy', N'January-2016', N'Long Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 20, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'cd72509f-b5eb-4f6b-93c6-2631950aaad5', N'yyyy-[Month Name]', N'yyyy-[Month Name]', N'2016-January', N'Long Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 21, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'565be5b0-a2ec-44e9-a2dd-2b7e46b9ab89', N'yy-[Month Name]', N'yy-[Month Name]', N'16-January', N'Long Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 22, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'518ebae0-be84-410e-8d61-2c121bd5c768', N'[Day Names of the Week], [Month Name] dd, yyyy', N'[Day Names of the Week], [Month Name] dd, yyyy', N'Friday, January 01, 2016', N'Long Date', N'', N'Date & Time', 1, 1, N'date', NULL, 23, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'64742c1f-d2d0-46da-8e80-2c1cb57a55e1', N'[Day Names of the Week], [Month Name] d, yyyy', N'[Day Names of the Week], [Month Name] d, yyyy', N'Friday, January 1, 2016', N'Long Date', N'', N'Date & Time', 1, 1, N'date', NULL, 24, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'69b175fb-a3f2-40bb-9162-2eb8cf5f7169', N'HH:mm tt (12-hour time)', N'HH:mm tt (12-hour time)', N'01:05 AM', N'Short Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 34, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f629aeb7-7cd5-48e9-a194-30a1c9796b55', N'H:mm tt (12-hour time)', N'H:mm tt (12-hour time)', N'1:05 PM', N'Short Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 35, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2e2acfa1-02aa-42d6-872c-3188c2d423c9', N'HH:mm (24-hour time)', N'HH:mm (24-hour time)', N'13:05', N'Short Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 36, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9ddf1adf-b54b-4b29-8fcf-32129371724d', N'H:mm (24-hour time)', N'H:mm (24-hour time)', N'1:05', N'Short Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 37, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'55ae7c7a-f463-43ef-ba3a-327b02c5a196', N'HH:mm:ss tt', N'HH:mm:ss tt', N'01:05:20 AM', N'Long Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 38, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f0692195-e1c7-4029-89b4-32bd89250f80', N'H:mm:ss tt', N'H:mm:ss tt', N'1:05:08 PM', N'Long Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 39, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c710dc48-20c8-4122-b213-3307cb096a01', N'HH:mm:ss', N'HH:mm:ss', N'13:05:08', N'Long Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 40, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'987f0bc1-1348-4b04-ad50-347a200c223f', N'H:mm:ss', N'H:mm:ss', N'1:05:08', N'Long Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 41, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9d33f3e0-b1ab-42fa-9b8e-356011065066', N'MM/dd/yyyy HH:mm:ss tt', N'MM/dd/yyyy HH:mm:ss tt', N'01/01/2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 42, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2a9e0025-7bc0-4cd7-bc73-364986804790', N'M/d/yyyy HH:mm:ss tt', N'M/d/yyyy HH:mm:ss tt', N'1/1/2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 43, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8a3ab3b3-f3b3-4a92-a92d-38db2f8b1642', N'MM/dd/yy HH:mm:ss tt', N'MM/dd/yy HH:mm:ss tt', N'01/01/16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 44, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'617ab284-1175-4099-b0eb-3bb677630347', N'M/d/yy HH:mm:ss tt', N'M/d/yy HH:mm:ss tt', N'1/1/16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 45, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0d64d305-4a30-4e1e-8598-3bedce6a6922', N'dd/MM/yyyy HH:mm:ss tt', N'dd/MM/yyyy HH:mm:ss tt', N'01/01/2016 01:05 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 46, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'936cc5c5-7f2a-4658-9623-3ca7ffc79774', N'd/M/yyyy HH:mm:ss tt', N'd/M/yyyy HH:mm:ss tt', N'1/1/2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 47, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4c1e0945-dd57-4504-b52f-3cf82366966e', N'dd/MM/yy HH:mm:ss tt', N'dd/MM/yy HH:mm:ss tt', N'01/01/16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 48, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ffff1be2-d4a3-4fe3-b1b3-3cfbbc19b602', N'd/M/yy HH:mm:ss tt', N'd/M/yy HH:mm:ss tt', N'1/1/16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 49, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0c6e93f8-8d3f-4606-b06f-3d97fce22f47', N'yyyy/MM/dd HH:mm:ss tt', N'yyyy/MM/dd HH:mm:ss tt', N'2016/01/01 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 50, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fa8c8ded-cb76-4c09-9e99-4005050c4c00', N'yyyy/M/d HH:mm:ss tt', N'yyyy/M/d HH:mm:ss tt', N'2016/1/1 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 51, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f396a198-335a-4ff3-bc5f-40a45bff2b2c', N'MM-yy HH:mm:ss tt', N'MM-yy HH:mm:ss tt', N'01-16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 52, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'525f7687-51ae-4df9-8308-415e4713d1ee', N'M-yy HH:mm:ss tt', N'M-yy HH:mm:ss tt', N'1-16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 53, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'49d4e3f7-6c74-4464-bca3-454d1b97de6f', N'MM-yyyy HH:mm:ss tt', N'MM-yyyy HH:mm:ss tt', N'01-2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 54, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'90ace7c2-534c-4130-9a51-45f6d3fc1693', N'M-yyyy HH:mm:ss tt', N'M-yyyy HH:mm:ss tt', N'1-2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 55, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1bda7a16-2e0b-405c-b65f-465693fc47f6', N'yy-MM HH:mm:ss tt', N'yy-MM HH:mm:ss tt', N'16-01 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 56, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'27f16394-b625-43e0-a651-48069468f1be', N'yy-M HH:mm:ss tt', N'yy-M HH:mm:ss tt', N'16-1 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 57, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4f2b4b1f-44ae-4e5d-9fdb-482b35bca7ca', N'yyyy-MM HH:mm:ss tt', N'yyyy-MM HH:mm:ss tt', N'2016-01 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 58, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'43a3ccd0-1f47-450c-9ff8-489099d3f44f', N'yyyy-M HH:mm:ss tt', N'yyyy-M HH:mm:ss tt', N'2016-1 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 59, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8079bc9c-199f-4f26-adb4-4b6a6e667a6e', N'MM/dd/yyyy HH:mm:ss', N'MM/dd/yyyy HH:mm:ss', N'01/01/2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 60, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3f1ec142-fd4b-4f6a-8f39-4d2901660360', N'M/d/yyyy HH:mm:ss', N'M/d/yyyy HH:mm:ss', N'1/1/2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 61, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7844971b-6945-47d2-909c-4ee118d84b72', N'MM/dd/yy HH:mm:ss', N'MM/dd/yy HH:mm:ss', N'01/01/16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 62, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5f12e0cf-b5b3-4fb8-966c-4ef10a75a211', N'M/d/yy HH:mm:ss', N'M/d/yy HH:mm:ss', N'1/1/16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 63, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e33e2fd3-3fa5-4a63-a700-522c62781d62', N'dd/MM/yyyy HH:mm:ss', N'dd/MM/yyyy HH:mm:ss', N'01/01/2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 64, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd91c8331-3a1e-4e1f-b1ec-558e465194b0', N'd/M/yyyy HH:mm:ss', N'd/M/yyyy HH:mm:ss', N'1/1/2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 65, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'57e7e874-f2e2-4a36-9213-56ba0400d62b', N'dd/MM/yy HH:mm:ss', N'dd/MM/yy HH:mm:ss', N'01/01/16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 66, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'eefd6063-e59d-42ec-a0d6-56cfb4daf691', N'd/M/yy HH:mm:ss', N'd/M/yy HH:mm:ss', N'1/1/16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 67, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'784191b5-429d-4db3-9cd1-5764d2bd4f14', N'yyyy/MM/dd HH:mm:ss', N'yyyy/MM/dd HH:mm:ss', N'2016/01/01 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 68, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5ecab5c8-8ac7-4de7-a1b1-5a1647904941', N'yyyy/M/d HH:mm:ss', N'yyyy/M/d HH:mm:ss', N'2016/1/1 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 69, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9934ed15-4eb2-4d24-9b5b-5a967abbb2b3', N'MM-yy HH:mm:ss', N'MM-yy HH:mm:ss', N'01-16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 70, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e667285f-3b35-463f-9e74-5adb93569afe', N'M-yy HH:mm:ss', N'M-yy HH:mm:ss', N'1-16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 71, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4745208e-4ecc-4038-aac7-5afc7319c36b', N'MM-yyyy HH:mm:ss', N'MM-yyyy HH:mm:ss', N'01-2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 72, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e85030bc-8076-4e40-80b5-5b5f1196a292', N'M-yyyy HH:mm:ss', N'M-yyyy HH:mm:ss', N'1-2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 73, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3dfcc6e1-2391-4cc9-b263-5dac3359602a', N'yy-MM HH:mm:ss', N'yy-MM HH:mm:ss', N'16-01 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 74, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ec708bba-7a50-4b1f-af5f-5dd8afc80110', N'yy-M HH:mm:ss', N'yy-M HH:mm:ss', N'16-1 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 75, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'353f1ebc-5d53-4802-a269-60516cd92ded', N'yyyy-MM HH:mm:ss', N'yyyy-MM HH:mm:ss', N'2016-01 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 76, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6d443fad-8764-497c-abe4-61c534e26787', N'yyyy-M HH:mm:ss', N'yyyy-M HH:mm:ss', N'2016-1 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 77, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4fa8464a-d29c-44e1-9ada-647b36b6d109', N'[Month Name]-yy HH:mm:ss tt', N'[Month Name]-yy HH:mm:ss tt', N'January-16 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 78, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ec36fff8-eccb-49a1-813c-67164e64d984', N'[Month Name]-yyyy HH:mm:ss tt', N'[Month Name]-yyyy HH:mm:ss tt', N'January-2016 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 79, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'cfe19542-05a0-4204-88c1-683a840bfab6', N'yyyy-[Month Name] HH:mm:ss tt', N'yyyy-[Month Name] HH:mm:ss tt', N'2016-January 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 80, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'196ca9d3-a366-45a9-9bd5-68b6fc3bddf2', N'yy-[Month Name] HH:mm:ss tt', N'yy-[Month Name] HH:mm:ss tt', N'16-January 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 81, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0523248a-c64e-498e-b0b1-69eb20b817bb', N'[Day Names of the Week], [Month Name] dd, yyyy HH:mm:ss tt', N'[Day Names of the Week], [Month Name] dd, yyyy HH:mm:ss tt', N'Friday, January 01, 2016 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 82, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'73420f7b-ff6d-40c5-820e-6bb3e2953b41', N'[Day Names of the Week], [Month Name] d, yyyy HH:mm:ss tt', N'[Day Names of the Week], [Month Name] d, yyyy HH:mm:ss tt', N'Friday, January 1, 2016 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 83, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b8ac0da6-0300-4565-ba2a-6c1980eaa25b', N'[Month Name]-yy HH:mm:ss', N'[Month Name]-yy HH:mm:ss', N'January-16 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 84, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9c544e73-32e9-4c7d-9de8-6c229bd73a3e', N'[Month Name]-yyyy HH:mm:ss', N'[Month Name]-yyyy HH:mm:ss', N'January-2016 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 85, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7d463002-30df-4046-a14d-6c687e4e7a92', N'yyyy-[Month Name] HH:mm:ss', N'yyyy-[Month Name] HH:mm:ss', N'2016-January 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 86, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c58457a6-98a1-4e69-92c9-6e093e2f58f3', N'yy-[Month Name] HH:mm:ss', N'yy-[Month Name] HH:mm:ss', N'16-January 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 87, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'54c32a12-c047-42f6-b256-70d389788e88', N'[Day Names of the Week], [Month Name] dd, yyyy HH:mm:ss', N'[Day Names of the Week], [Month Name] dd, yyyy HH:mm:ss', N'Friday, January 01, 2016 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 88, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3bd8ea56-6110-4047-9bd0-76086ec5ebcf', N'[Day Names of the Week], [Month Name] d, yyyy HH:mm:ss', N'[Day Names of the Week], [Month Name] d, yyyy HH:mm:ss', N'Friday, January 1, 2016 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 89, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e31031c5-8be1-4266-abd9-773960317c56', N'0.00', N'0.00', N'Positive: 15000.25, Negative: -15000.25', N'Number', N'', N'Numeric', 1, 1, N'', NULL, 90, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'42b78f79-bef7-4eb1-9e5d-77d7eb79411f', N'0,000.00', N'0,000.00', N'Positive: 15,000.25, Negative: -15,000.25', N'Number', N'', N'Numeric', 1, 1, N'', NULL, 91, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'83575413-69d8-445c-a36a-78c8d654aba2', N'-(0.00)', N'-(0.00)', N'Positive: 15000.25, Negative: -(15000,25)', N'Number', N'', N'Numeric', 1, 0, N'', NULL, 92, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'104a55b9-70fb-429c-a9d9-78d99cc09f53', N'-(0,000.00)', N'-(0,000.00)', N'Positive: 15,000.25, Negative: -(15,000.25)', N'Number', N'', N'Numeric', 1, 0, N'', NULL, 93, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a8813d10-9860-4564-99b1-7a562c523a8e', N'$0.00', N'$0.00', N'Positive: $15000.25, Negative: -$15000.25', N'Currency', N'', N'Numeric', 1, 1, N'', NULL, 95, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'12506ff6-bef8-414d-a1c3-7b61ebbe6320', N'$0,000.00', N'$0,000.00', N'Positive: $15,000.25, Negative: -$15,000.25', N'Currency', N'', N'Numeric', 1, 1, N'', NULL, 96, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bf844ffd-ee52-4bcb-b24c-7bb29b1cd4d1', N'-($0.00)', N'-($0.00)', N'Positive: $15000.25, Negative: -($15000.25)', N'Currency', N'', N'Numeric', 1, 0, N'', NULL, 97, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9022c8dd-ad27-47fa-b25c-7df7efee0559', N'-($0,000.00)', N'-($0,000.00)', N'Positive: $15,000.25, Negative: -($15,000.25)', N'Currency', N'', N'Numeric', 1, 0, N'', NULL, 98, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c2ec0a9f-5c13-4db5-bf9a-80758c05ab0c', N'0.00%', N'0.00%', N'Positive: 15000.25%, Negative: -15000.25%', N'Percentage', N'', N'Numeric', 1, 1, N'', NULL, 101, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3b59cca3-159e-4814-8a11-8394c285ea6b', N'0,000.00%', N'0,000.00%', N'Positive: 15,000.25%, Negative: -15,000.25%', N'Percentage', N'', N'Numeric', 1, 1, N'', NULL, 102, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b5717e46-05ee-4304-8500-83d443c565ee', N'-(0.00%)', N'-(0.00%)', N'Positive: 15000.25%, Negative: -(15000.25%)', N'Percentage', N'', N'Numeric', 1, 0, N'', NULL, 103, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'be821d25-8977-4473-b0d6-8457aa43175e', N'-(0,000.00%)', N'-(0,000.00%)', N'Positive: 15,000.25%, Negative: -(15,000.25%)', N'Percentage', N'', N'Numeric', 1, 0, N'', NULL, 104, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d901', N'HH:mm tt (12-hour time)', N'HH:mm tt (12-hour time)', N'01:05 AM', N'Short Hour', N'', N'Time', 1, 1, N'', NULL, 114, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d902', N'H:mm tt (12-hour time)', N'H:mm tt (12-hour time)', N'1:05 PM', N'Short Hour', N'', N'Time', 1, 1, N'', NULL, 115, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d903', N'HH:mm (24-hour time)', N'HH:mm (24-hour time)', N'13:05', N'Short Hour', N'', N'Time', 1, 1, N'', NULL, 116, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d904', N'H:mm (24-hour time)', N'H:mm (24-hour time)', N'1:05', N'Short Hour', N'', N'Time', 1, 1, N'', NULL, 117, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d905', N'HH:mm:ss tt', N'HH:mm:ss tt', N'01:05:20 AM', N'Long Hour', N'', N'Time', 1, 1, N'', NULL, 118, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d906', N'H:mm:ss tt', N'H:mm:ss tt', N'1:05:08 PM', N'Long Hour', N'', N'Time', 1, 1, N'', NULL, 119, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d907', N'HH:mm:ss', N'HH:mm:ss', N'13:05:08', N'Long Hour', N'', N'Time', 1, 1, N'', NULL, 120, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d908', N'H:mm:ss', N'H:mm:ss', N'1:05:08', N'Long Hour', N'', N'Time', 1, 1, N'', NULL, 121, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c02', N'Text', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c03', N'Text', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c04', N'Text', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c05', N'Text', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Text', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c06', N'Text', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Text', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c07', N'Text', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Text', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738601', N'Time', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738602', N'Time', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738603', N'Time', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738604', N'Time', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Time', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738605', N'Time', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Time', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738606', N'Time', N'902a9168-fc01-4a35-92fb-ea67942d099d', N'Time', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738607', N'Time', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Time', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda602', N'Money', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda603', N'Money', N'8dc8efc6-9e0a-4c3e-bea0-4daf541ceae4', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda604', N'Money', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda605', N'Money', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda606', N'Money', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda607', N'Money', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda608', N'Money', N'902a9168-fc01-4a35-92fb-ea67942d099d', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda609', N'Money', N'ab4bbbef-1dcf-4f15-88a1-f3bc0da6a076', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda610', N'Money', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7fc2e31-2af6-457f-b78e-9920b9009602', N'Boolean', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7fc2e31-2af6-457f-b78e-9920b9009604', N'Boolean', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7fc2e31-2af6-457f-b78e-9920b9009605', N'Boolean', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7fc2e31-2af6-457f-b78e-9920b9009608', N'Boolean', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Text', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc02', N'Numeric', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc03', N'Numeric', N'8dc8efc6-9e0a-4c3e-bea0-4daf541ceae4', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc04', N'Numeric', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc05', N'Numeric', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc06', N'Numeric', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc07', N'Numeric', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc08', N'Numeric', N'902a9168-fc01-4a35-92fb-ea67942d099d', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc09', N'Numeric', N'ab4bbbef-1dcf-4f15-88a1-f3bc0da6a076', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc10', N'Numeric', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d702', N'Datetime', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d703', N'Datetime', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d704', N'Datetime', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d705', N'Datetime', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Datetime', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d706', N'Datetime', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Datetime', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d707', N'Datetime', N'004d18e4-29ac-41dd-8fb5-96c1aff55ade', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d708', N'Datetime', N'0f74fea0-9279-46ba-818a-64c478bcf3ff', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d709', N'Datetime', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Datetime', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d710', N'Datetime', N'6c9000d1-8900-41e8-b759-4a23c6a1ab82', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d711', N'Datetime', N'14842527-846a-46fc-80fa-307ff0cdce8e', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDBVersion] ([Version]) VALUES (N'2.5.0')
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465601', 0, 0.75, 0.75, 0.7, 0.7, 0.3, 0.3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465602', 1, 0.75, 0.75, 0.25, 0.25, 0.3, 0.3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465603', 2, 1, 1, 1, 1, 0.5, 0.5, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465604', 3, 0.75, 0.75, 0.7, 0.7, 0.3, 0.3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465605', 4, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465606', 5, 11.68, 11.68, 7.78, 7.78, 11.68, 11.68, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5522a5d7-0456-432b-b1fb-02a4283baa3d', N'Not Between (Date & Time)', N'Not Between (Date & Time)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 380, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'cb64b1fd-6dec-4b18-b348-02b5b984e6c6', N'Equals (Date & Time)', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 1, 410, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4d68d4a2-05ac-4f24-8496-02c1cfe75460', N'Not Equal (Date & Time)', N'<>', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 440, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1476ed4b-17ac-4e39-be1b-0a25f705ebea', N'...', N'', N'95051abc-70eb-4908-8d13-04032aab3c66', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f8a69ec3-bc01-40fd-8dc1-0b7a259ee83e', N'...', N'', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 20, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6bac46ba-768f-4764-9109-0bc2736bcbfd', N'Blank', N'=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 30, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ce0fda8a-4515-409c-9d00-0bf56c2b4c4d', N'Not Blank', N'=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 40, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e62a6e5b-b25c-4567-8a5a-0d42ee223de3', N'Null', N'=', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 521, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f043b65-e45d-4c22-9634-0da9e96493bc', N'...', N'', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 110, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd7096bd5-09e5-433d-924e-0e038bdc81fb', N'Blank', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 120, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'85252e31-7588-438f-85ff-0e0e9c16df8d', N'Not Blank', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 130, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'444b32e1-5ba5-4829-a8dc-0e3a0e6a69f3', N'...', N'', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 240, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'83849954-987f-4213-b5b3-0febf0251d5c', N'Blank', N'=', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 250, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'38a333fb-39cf-424c-bbaf-1043600ca055', N'Not Blank', N'=', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 260, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'27a17b83-4b6a-4700-91a7-10558ef6ab23', N'...', N'', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 310, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'98e2ec4a-f34f-4bf1-b2b2-108fbec8fa5b', N'Blank', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 320, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'63f26c6a-f763-4947-8517-10fd79de5e2a', N'Not Blank', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 330, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'97040a0e-7c33-4088-90ac-1146428428df', N'...', N'', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 500, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c16bc286-3238-4a36-85e5-123eb989bee8', N'Blank', N'=', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 510, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'966019de-d541-4ee4-9235-125732abb75a', N'Not Blank', N'=', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 520, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a52e09eb-8867-45e5-88bc-12ba9434f16f', N'...', N'', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 0, 570, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c77e5ab6-890d-4bf6-8773-13cc9c3bf67e', N'Blank', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 0, 580, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a8339c19-7b65-4ee7-8ef4-13e340fba2e9', N'Not Blank', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 0, 590, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b78305b3-70f4-4724-a02c-1617a0ef95d3', N'Is Less Than', N'<', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 50, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'53d73892-3a12-45cd-8b69-163ff6c41989', N'Is Greater Than', N'>', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 60, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'94c4fb2e-c5d3-4160-a2f7-173418ca4e66', N'Between', N'Between', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 70, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9fe2afd6-8fb6-4a34-b2e2-1822323af768', N'Not Less Than', N'>=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 80, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0526507d-901b-4d41-8c4b-1831f90b180c', N'Not Greater Than', N'<=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 90, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'588c8b41-afa5-45e7-9a00-188125fa20b1', N'Not Null', N'=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 42, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ea8396b-49e3-4ed2-b9b6-18c1a737cffc', N'Not Between', N'Not Between', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 100, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'12d4c133-96dd-422c-90c7-1b0e02e0bdc1', N'Null', N'=', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 261, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'737307d1-1e5f-407f-889f-1b3c9a66dd6f', N'Equals (Manual Entry)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 1, 140, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'042a04a3-dfe1-4ef9-bd27-1b657886f02e', N'Equals (Selection)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 1, 150, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bb2f8e2d-753e-4fc9-9646-1b977a043b9a', N'Equals (Popup)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 160, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'003c0e13-cc3c-412f-8fee-1cf21aa51e31', N'Equals (Tree)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 170, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5ce630bc-6615-42c4-b11e-1d09c651eaae', N'Equals (Checkbox)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 180, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'78ba4663-e8a4-407f-bab2-1dc014a4df56', N'Not Equal (Manual Entry)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 190, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'75fcf433-81f2-4767-94b7-1e4257b826c4', N'Not Equal (Selection)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 200, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5cdacf39-8eed-4ed3-8684-1e4461e85e1b', N'Not Equal (Popup)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 210, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'de9ab97b-4e57-4c8c-8415-1e5030415b50', N'Not Equal (Checkbox)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 220, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6bc89182-aa4c-4fa5-b151-208af7e8cd59', N'Not Equal (Tree)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 230, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c506759f-c000-46c3-a35a-21b7d5bbd447', N'Is Less Than (Field)', N'<', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 270, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'de669d47-d040-494c-91d9-21df45009964', N'Is Greater Than (Field)', N'>', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 280, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ecd32d5d-32ce-493e-8f9f-225647357325', N'Equals (Field)', N'=', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 290, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1e9fbb61-8a77-48a6-b95e-2357646360a5', N'Not Equal (Field)', N'<>', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 300, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'78376aea-4d3c-4e8d-ab97-25c6c249be62', N'Between (Date & Time)', N'Between (Date & Time)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 350, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f6b2f9d3-464d-4399-bfd2-265009d3fcf1', N'In Time Period', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 460, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'05f7ea30-001d-4779-ad3b-2732ed97d61e', N'Less Than Days Old', N'<', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 470, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1c6b9fbd-6377-4c8b-9acc-286ff0e853c5', N'Greater Than Days Old', N'>', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 480, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a8d45242-f5f0-4839-ae98-287ddc178c96', N'Equals Days Old', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 490, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3396325a-4233-4180-8513-2bb991627800', N'Like', N'Like', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 530, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0ac3a76f-cf80-4cd7-8cfd-2c74fadb330a', N'Begins With', N'Begins With', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 540, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'09b9b1ba-21c5-4f05-808c-2cae6cca56d9', N'Ends With', N'Ends With', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 550, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ed9b3b36-26fc-4b2b-a696-2d5a4322427e', N'Not Null', N'=', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 262, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'30dd377c-5217-4665-8896-2d61efc73cfc', N'Not Like', N'Not Like', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 560, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'31d3e116-bde2-40d1-b259-2d750348299c', N'True', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 1, 600, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'086dc2fc-23e3-4b54-bc46-2e5f572d2d3f', N'False', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 1, 610, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e830fbc3-cb92-4251-ad9f-3a84fd99fcb2', N'Not Between (Date)', N'Not Between (Date)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 370, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fbd954e2-bebf-4892-9b90-4134fce1f6dc', N'Not Equal (Date)', N'<>', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 430, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bcf08dfe-ea7c-4eee-bb91-4217d2bf67db', N'Null', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 0, 591, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ab2712b7-5016-448f-88cb-422848d22424', N'Null', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 331, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f15ff59e-837b-415b-9191-4392944f3ad4', N'Null', N'=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 41, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b8f665e9-9753-4716-9d6e-688df6dccae4', N'Not Between (Time)', N'Not Between (Time)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 390, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3f2378bd-4470-48f8-b951-6ca0ff2baac7', N'Between (Time)', N'Between (Time)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 360, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c3344c6c-3dd1-40d7-a68e-70dd9e89001a', N'Not Null', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 332, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ae1af3eb-d1cc-4c27-90e3-97a2903581fc', N'Null', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 131, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'eca0a47d-cba9-406e-8c8c-9fb48314e685', N'Not Equal (Manual Entry No Auto-Complete)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 195, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'26f4e86e-26cb-497a-98c0-bc194bc785ac', N'Between (Date)', N'Between (Date)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 340, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'496be89b-305a-4b5e-a361-c2cc8124dc69', N'Equals (Date)', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 1, 400, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ec661dc4-12bf-4ce8-8691-cb2bd94c7888', N'Not Equal (Time)', N'<>', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 450, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f7e3cef8-5b60-4a72-87c7-cca6452a4c31', N'Equals (Time)', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 1, 420, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5b654e75-d293-4e7e-9102-cdb74286e717', N'Equals (Manual Entry No Auto-Complete)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 1, 145, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fb22a60c-72b1-4f3b-bdca-dfab8402fc80', N'Not Null', N'=', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 522, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6383bdd3-73bd-4c0f-97c7-f41553b3d5da', N'Not Null', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 132, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'30467a1f-b54a-4d1a-a7ef-fde70e4c5274', N'Not Null', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 0, 592, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [DefaultOperatorId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'95051abc-70eb-4908-8d13-04032aab3c66', N'...', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [DefaultOperatorId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'08b322e2-ac79-406d-8367-046437b4fcd9', N'Comparison', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [DefaultOperatorId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', N'Equivalence', N'737307d1-1e5f-407f-889f-1b3c9a66dd6f', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [DefaultOperatorId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6938e8a8-c810-4044-be0b-05709faa4734', N'Field Comparison', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [DefaultOperatorId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'01076b28-8e77-4a54-95d8-060d142a77e6', N'Date & Time', N'cb64b1fd-6dec-4b18-b348-02b5b984e6c6', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [DefaultOperatorId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', N'String', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [DefaultOperatorId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7b127c0c-4996-4df8-aa72-09cf07569f5e', N'Boolean', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5522a5d7-0456-432b-b1fb-02a4283baa3d', N'5522a5d7-0456-432b-b1fb-02a4283baa3d', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6bac46ba-768f-4764-9109-0bc2736bcbfd', N'6bac46ba-768f-4764-9109-0bc2736bcbfd', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ce0fda8a-4515-409c-9d00-0bf56c2b4c4d', N'ce0fda8a-4515-409c-9d00-0bf56c2b4c4d', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e62a6e5b-b25c-4567-8a5a-0d42ee223de3', N'e62a6e5b-b25c-4567-8a5a-0d42ee223de3', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd7096bd5-09e5-433d-924e-0e038bdc81fb', N'd7096bd5-09e5-433d-924e-0e038bdc81fb', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'85252e31-7588-438f-85ff-0e0e9c16df8d', N'85252e31-7588-438f-85ff-0e0e9c16df8d', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'83849954-987f-4213-b5b3-0febf0251d5c', N'83849954-987f-4213-b5b3-0febf0251d5c', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'38a333fb-39cf-424c-bbaf-1043600ca055', N'38a333fb-39cf-424c-bbaf-1043600ca055', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'98e2ec4a-f34f-4bf1-b2b2-108fbec8fa5b', N'98e2ec4a-f34f-4bf1-b2b2-108fbec8fa5b', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'63f26c6a-f763-4947-8517-10fd79de5e2a', N'63f26c6a-f763-4947-8517-10fd79de5e2a', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c16bc286-3238-4a36-85e5-123eb989bee8', N'c16bc286-3238-4a36-85e5-123eb989bee8', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'966019de-d541-4ee4-9235-125732abb75a', N'966019de-d541-4ee4-9235-125732abb75a', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c77e5ab6-890d-4bf6-8773-13cc9c3bf67e', N'c77e5ab6-890d-4bf6-8773-13cc9c3bf67e', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a8339c19-7b65-4ee7-8ef4-13e340fba2e9', N'a8339c19-7b65-4ee7-8ef4-13e340fba2e9', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'94c4fb2e-c5d3-4160-a2f7-173418ca4e66', N'94c4fb2e-c5d3-4160-a2f7-173418ca4e66', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'588c8b41-afa5-45e7-9a00-188125fa20b1', N'588c8b41-afa5-45e7-9a00-188125fa20b1', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ea8396b-49e3-4ed2-b9b6-18c1a737cffc', N'6ea8396b-49e3-4ed2-b9b6-18c1a737cffc', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'12d4c133-96dd-422c-90c7-1b0e02e0bdc1', N'12d4c133-96dd-422c-90c7-1b0e02e0bdc1', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'78376aea-4d3c-4e8d-ab97-25c6c249be62', N'78376aea-4d3c-4e8d-ab97-25c6c249be62', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ed9b3b36-26fc-4b2b-a696-2d5a4322427e', N'ed9b3b36-26fc-4b2b-a696-2d5a4322427e', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'31d3e116-bde2-40d1-b259-2d750348299c', N'31d3e116-bde2-40d1-b259-2d750348299c', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'086dc2fc-23e3-4b54-bc46-2e5f572d2d3f', N'086dc2fc-23e3-4b54-bc46-2e5f572d2d3f', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bcf08dfe-ea7c-4eee-bb91-4217d2bf67db', N'bcf08dfe-ea7c-4eee-bb91-4217d2bf67db', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ab2712b7-5016-448f-88cb-422848d22424', N'ab2712b7-5016-448f-88cb-422848d22424', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f15ff59e-837b-415b-9191-4392944f3ad4', N'f15ff59e-837b-415b-9191-4392944f3ad4', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c3344c6c-3dd1-40d7-a68e-70dd9e89001a', N'c3344c6c-3dd1-40d7-a68e-70dd9e89001a', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ae1af3eb-d1cc-4c27-90e3-97a2903581fc', N'ae1af3eb-d1cc-4c27-90e3-97a2903581fc', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fb22a60c-72b1-4f3b-bdca-dfab8402fc80', N'fb22a60c-72b1-4f3b-bdca-dfab8402fc80', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6383bdd3-73bd-4c0f-97c7-f41553b3d5da', N'6383bdd3-73bd-4c0f-97c7-f41553b3d5da', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'30467a1f-b54a-4d1a-a7ef-fde70e4c5274', N'30467a1f-b54a-4d1a-a7ef-fde70e4c5274', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'14842527-846a-46fc-80fa-307ff0cdce8e', N'Group Days Old', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6c9000d1-8900-41e8-b759-4a23c6a1ab82', N'Sum Days Old', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8dc8efc6-9e0a-4c3e-bea0-4daf541ceae4', N'Average', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Maximum', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f74fea0-9279-46ba-818a-64c478bcf3ff', N'Average Days Old', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Count Distinct', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'004d18e4-29ac-41dd-8fb5-96c1aff55ade', N'Days Old', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'36d8f605-1242-4c43-9b46-aced94b62709', N'Minimum', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Group', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Count', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'69e7d5ae-f396-41fc-819e-ca798d23495f', N'[Expression]', NULL, 1, 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'902a9168-fc01-4a35-92fb-ea67942d099d', N'Sum', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ab4bbbef-1dcf-4f15-88a1-f3bc0da6a076', N'Sum Distinct', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaLanguage] ([Id], [Language], [CultureName], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [Deleted]) VALUES (N'c6e7d7b5-4e15-44b7-9538-fd1ab38783f0', N'English - United States', N'en-US', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[IzendaSecurityPolicy] ([Id], [MinNumberOfPasswordLenght], [MaxNumberOfPasswordLenght], [MinNumberOfSpecialCharacter], [MaxNumberOfSpecialCharacter], [MinNumberOfUppercaseCharacter], [MaxNumberOfUppercaseCharacter], [MinNumberOfLowercaseCharacter], [MaxNumberOfLowercaseCharacter], [MinNumberOfNumericCharacter], [MaxNumberOfNumericCharacter], [MaxNumberOfRepeatSequential], [MinNumberOfPasswordAge], [MaxNumberOfPasswordAge], [NotifyUseDuring], [NumberOfPasswordToKeep], [PasswordLinkValidity], [NumberOfQuestionProfile], [NumberOfQuestionResetPassword], [NumberOfFailedLogonAllowed], [NumberOfFailedAnswerAllowed], [LockoutPeriod], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fa528971-a8af-45ab-a0b3-d539104e1b0d', 1, 10, 1, 10, 1, 10, 1, 10, 1, 10, 10, 1, 10, 4, 3, 10, 3, 2, 3, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'5784ece5-d2e7-42b1-89bb-859737b7b2a9', N'Question_Number_1', 1, 0, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'3771bdc2-1add-481a-9649-18a7e494860b', N'Question_Number_2', 1, 0, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'1704f7c3-0911-40cc-88c5-3c496613f96a', N'Question_Number_3', 1, 0, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'c054397d-e371-4694-ad71-162174f39b2f', N'Question_Number_4', 1, 0, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'bf8e6807-6dbf-48a7-a5d9-121a46014d41', N'Question_Number_5', 1, 0, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'036e00b9-09e9-411a-9b9b-74f90f9a1289', N'Question_Number_6', 1, 0, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'732fc020-8ac2-40ae-9d22-00d36f034552', N'Question_Number_7', 1, 0, NULL, NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'89eed492-d117-4c42-a4b2-ab88cfb109df', N'Question_Number_8', 1, 0, NULL, NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'2042a60d-1894-49e7-a194-77c24917f2c1', N'Question_Number_9', 1, 0, NULL, NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'470bae4e-0cb4-443d-9d75-ca91fdd81ce8', N'Question_Number_10', 1, 0, NULL, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'c57e2ec2-4114-43c4-99fe-80ef9e0b8c11', N'Question_Number_11', 1, 0, NULL, NULL, NULL, NULL, NULL, 11)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'fd247bfd-3269-4425-a9a9-1239901611b7', N'Question_Number_12', 1, 0, NULL, NULL, NULL, NULL, NULL, 12)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'087a3c5b-ebff-4f96-ba7d-ffede847e09c', N'Question_Number_13', 1, 0, NULL, NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'a8201224-ddd8-4fc1-9573-82e754eb5ce1', N'Question_Number_14', 1, 0, NULL, NULL, NULL, NULL, NULL, 14)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'e30524f4-5799-4fcd-ac86-9098571303a6', N'Question_Number_15', 1, 0, NULL, NULL, NULL, NULL, NULL, 15)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'c48320ec-763f-48be-a689-8840f26cb5d6', N'Question_Number_16', 1, 0, NULL, NULL, NULL, NULL, NULL, 16)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'20cfa68c-5398-46cf-acf8-b1c2bff297c5', N'Question_Number_17', 1, 0, NULL, NULL, NULL, NULL, NULL, 17)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f887cbd0-5ba0-4345-bcb7-02acd600cffe', N'WebAPIUrl', N'http://localhost:8080/api/', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9670328e-505a-46de-9226-0303afadde6a', N'FiscalYear', N'10/01', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'aa099dbc-da5c-5ea1-cba3-100d3ecf6e31', N'LicenseExpiredWarningTrial', N'4', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e834da5d-6a19-485b-95e1-2190df0f545c', N'HelpSystemUrl', N'http://www.izenda.com', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e834da5d-6a19-485b-95e1-2190df0f545d', N'TokenTimeout', N'20', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'463f5f94-9895-490e-8a7c-611c9487262c', N'DeploymentMode', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'463f5f94-9895-490e-8a7c-611c9487262e', N'AuthValidateAccessTokenUrl', N'http://localhost:8080/authapi/user/validateIzendaAuthToken', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'463f5f94-9895-490e-8a7c-611c9487262f', N'AuthGetAccessTokenUrl', N'http://localhost:8080/authapi/user/GetIzendaAccessToken', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bb408fec-ec4b-4ef3-bbe2-702a2faa9c64', N'LicenseExpiredWarningPeriod', N'14', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ed4ed91-7c3e-4200-ad2c-77d7f25a139a', N'CommonFilterSetting', N'0', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ed4ed91-7c3e-4200-ad2c-77d7f25a139b', N'TracingType', N'3', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'88b9161a-d411-45f4-b5cd-793853f2dfb0', N'LicenseWebAPIUrl', N'https://licensing.izenda.com/', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4b18b29-5c8b-4ccf-95cc-8241acb5ca75', N'ExportConversionDelay', N'5', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b08778b0-28a2-449c-a859-8966a34cb45d', N'WebUrl', N'', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8d721bfc-2dac-460f-ac9e-90e288d1dd87', N'SubscriptionJobInterval', N'5', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8d721bfc-2dac-460f-ac9e-90e288d1dd89', N'ApiSecretToken', N'FF388608-8BE6-45E4-AC43-F11D6454161D', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1f9c13ca-fea4-467b-9a76-a17122821fe6', N'AuthRSAPublicKey', N'', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'deb69225-e4a1-4533-9b29-a44f2eea8487', N'AllowDuplicateUser', N'0', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'deb69225-e4a1-4533-9b29-a44f2eea8488', N'StoredProcParamDelimiter', N',', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2afc3bac-2daf-4487-9a90-a5c65ccd7a14', N'PageSize', N'A4', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'391617ea-f8d5-4325-b5cd-b385422a1e28', N'SystemMode', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e285bfd1-f8d5-4beb-a345-b3d2ef5a3de9', N'LostConnectionAllowPeriod', N'96', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6f526e3e-057b-41d5-bcc9-b7ca12f6feb3', N'CustomFunctionFilePath', N'', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'373747ea-bc6f-4806-b8f6-bb5d422a1942', N'RefreshTokenPeriod', N'60', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'939ee27b-8919-4af0-809a-bc59484e420f', N'ReportAdvancedMode', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'852a16e9-bcff-42f4-95b4-cee36342887a', N'InsertBatchSize', N'10000', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'852a16e9-bcff-42f4-95b4-cee36342887b', N'RollbackSPWhenLoadSchema', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'422c180e-315d-400f-94d1-d4a11ed08c31', N'CommandTimeout', N'500', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'95bd32f7-44f6-4a19-b8f4-d54c160389e0', N'ReportSettingJobInterval', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a3c4a8c2-9f6b-4035-8f3b-d6c2a7b9ec7a', N'EvoLicenseKey', N'mhQHFQAFFQMMFQMbBRUGBBsEBxsMDAwMFQU=', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2f0984b3-2b68-49fb-b807-d969af6057cf', N'HasCreatePermissionOnReportingDatabase', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'921bac25-be9c-4b5f-a58a-f60390a2e481', N'ExportNavigationTimeout', N'60', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ad563930-216e-4a3a-b866-fd6d0dadcd89', N'ProvisionStaticDataStatus', N'0', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'e6992cf1-0977-4d46-89c5-00627345a785', N'{dashboardLink}', N'Text', N'', 3)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'9499412c-8a0d-4b0c-81c0-009f830f3f3f', N'{embedDashboardHTML}', N'Lob', N'', 3)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'1b2d9a6e-2e78-4ad8-a4a8-0232277b8c6c', N'{dashboardName}', N'Text', N'', 3)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'5cd4d4be-96d9-4c30-8680-04bd602bccd7', N'{reportName}', N'Text', N'', 2)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'b22170b0-48a6-45fa-8254-04be7843b9f9', N'{currentDateTime}', N'Text', N'', 0)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'18a820bf-9c48-465d-83ef-05511ab491cf', N'{currentUserName}', N'Text', N'', 0)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'e3dcd547-d9ac-417d-b42e-056358bf508c', N'{tenantName}', N'Text', N'', 0)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'0645098c-cb7c-4da5-aa98-059eb8fbdc16', N'{reportLink}', N'Text', N'', 2)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'6e204246-c212-4115-805b-0628d89c8ce2', N'{embedReportHTML}', N'Lob', N'', 2)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'673ad95a-7cc3-4a7e-b3d0-0643913359de', N'{recipientName}', N'Text', N'', 1)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'd557fbd4-a9f4-4c5a-9ca5-068d7c01dd53', N'{pageNumber}', N'', N'', 4)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'4809565f-b163-46f6-9f3a-069b6a21d2d7', N'{horizontalRule}', N'', N'', 4)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'feed98d6-5860-473d-a6d3-06f87ad7d549', N'{verticalRule}', N'', N'', 4)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'b8ef8ad0-7a90-4f70-b3f3-52cbaf518335', N'In the Future', N'Long-term Period', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'dae256be-21d4-45c1-8d34-52cf05ba7cf5', N'In the Past', N'Long-term Period', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'1559a72d-22a1-4c8e-b3b4-53414e5b7ff5', N'Current Fiscal Year', N'Fiscal Year', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'4c35be45-4b5e-4fc2-931f-53acf34bf7dd', N'Previous Fiscal Year', N'Fiscal Year', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'7aad066f-fbcc-4494-9343-54a803244fa0', N'Next Fiscal Year', N'Fiscal Year', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'6bc051a5-85a1-401e-b5bb-55480ec6485e', N'Current and Previous Fiscal Year', N'Fiscal Year', N'0&-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'f1e19c1e-0970-4b3a-b1fa-5561efc783e5', N'Current and Next Fiscal Year', N'Fiscal Year', N'0&1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'52cc45ab-3d7c-4814-a237-55d43b41b385', N'Current Fiscal Quarter', N'Fiscal Quarter', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'f64ee3b3-0f5d-4ac4-a0db-561cfed6d00c', N'Current and Next Fiscal Quarter', N'Fiscal Quarter', N'0&1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'4a689982-d21e-41a8-9ee6-565b6e23985a', N'Current and Previous Fiscal Quarter', N'Fiscal Quarter', N'0&-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'eaae70a0-ce64-45df-9a43-5737bb110bd4', N'Next Fiscal Quarter', N'Fiscal Quarter', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'35e57b59-a63b-47bb-80d8-574b9e7fd4b0', N'Previous Fiscal Quarter', N'Fiscal Quarter', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'd41cf2a0-41ec-4e62-a9bd-57916b9ea6bc', N'Current & Next 3 Fiscal Quarter', N'Fiscal Quarter', N'0&1&2&3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'fa1b763b-206f-42f7-a99b-597d7c97582e', N'Current Year', N'Calendar Year', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'eedd820b-3a54-47a1-8c6e-59fc077464dd', N'Previous Year', N'Calendar Year', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'bfd892b0-f905-48e1-9766-5a894da73115', N'Current Calendar Quarter', N'Calendar Quarter', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'ebe01191-9c66-4324-9fc2-5aa7497ba130', N'Current & Next Calendar Quarter', N'Calendar Quarter', N'0&1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'12a7ff3a-cbe0-437b-b0f0-5bb731c69a40', N'Current & Previous Calendar Quarter', N'Calendar Quarter', N'0&-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'ad5dcad5-cf2f-4207-82f1-5bcdde289ed1', N'Next Calendar Quarter', N'Calendar Quarter', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'5497b872-bf2f-4e2a-9e69-5c6b4a5917ce', N'Previous Calendar Quarter', N'Calendar Quarter', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'66716758-155f-46a2-a03d-5ca2e2d31894', N'Current & Next 3 Calendar Quarter', N'Calendar Quarter', N'0&1&2&3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'007f892b-1de2-4bcb-b0c4-5d0a91007a54', N'Last Month', N'Calendar Month', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'3a94dc2b-e390-4226-b28b-5d20cdd07d17', N'This Month', N'Calendar Month', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'39e5d006-df2b-4c53-b137-5d930a527247', N'Next Month', N'Calendar Month', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'115a294e-e0ed-405b-82fc-5ee4083bb7bc', N'Current & Previous Month', N'Calendar Month', N'0&-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'36552d12-b977-433f-a5ed-5f052abe5d94', N'Current & Next Month', N'Calendar Month', N'0&1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'1773cbcb-7b8b-4e08-a0dd-5f27cb0eb0d8', N'Last Week', N'Calendar Week', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'de89026f-f5f2-4914-98d8-5fbb626d5ec6', N'This Week', N'Calendar Week', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'edab4b2d-86c9-415b-8c9f-60cab8356ba6', N'Next Week', N'Calendar Week', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'607596fd-1e09-4dba-a929-611b0e729522', N'Today', N'Day', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'110ac414-0c3b-4b16-879e-6249bbdc7751', N'Yesterday', N'Day', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'fe7e33d7-3b51-4727-b759-62f891153987', N'Tomorrow', N'Day', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'fac2ee3e-0a31-4322-876c-642e4cbb17a6', N'Last 7 Days', N'Day', N'-7', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'10c3733c-6743-4e94-b78a-651da8594689', N'Last 30 Days', N'Day', N'-30', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'655b7087-cf4d-4065-ad5b-65296e678db9', N'Last 60 Days', N'Day', N'-60', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'94290104-b096-48a1-90d2-657e0fd6fc22', N'Last 90 Days', N'Day', N'-90', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'cbf65ffb-5fd4-499c-8034-65c709af533c', N'Last 120 Days', N'Day', N'-120', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'20b7a28b-6a09-4bb1-9400-65c863f19c56', N'Next 7 Days', N'Day', N'7', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'013781da-925b-4cd7-a75b-67ef1f58252a', N'Next 30 Days', N'Day', N'30', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'bc00ee20-b7c6-47eb-8233-686e9813da32', N'Next 60 Days', N'Day', N'60', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'2cb2bd5b-5228-470c-8ef7-68e8cc030f61', N'Next 90 Days', N'Day', N'90', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'5a0b0b87-e153-4047-97d7-6934bd0742e2', N'Next 120 Days', N'Day', N'120', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'923fc0dd-6d08-483b-a9f9-6a2997698f1b', N'Next and Last 30 Days', N'Day', N'-30&30', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'9d2f1d51-0e3d-44db-bfc7-da94a7581bfe', N'IzendaAdmin', N'System', N'Admin', N'Ni44BUzGHfooivlGlIa6KSvWgH8V17dTCzled+nfTo2WNns6JJRa8dDT+KTWawe5veauvEB/NAiwnZA6KfdfJQ==', N'shKEvBNweSW0VLSX6Q==', NULL, 1, NULL, NULL, CAST(N'2017-04-17T15:57:51.727' AS DateTime), NULL, NULL, N'SL1Q2o+Q79XkOeUoMPgh8GCoM/EHh9A0qSr9GraLvdRTHnwdA4e5kWtje2OvxSJB8LO5jIBo8WhAANVtFeuhag==', 1, 0, 0, 0, 1, 0, CAST(N'2017-04-17T15:57:51.723' AS DateTime), NULL, 0, NULL, NULL, N'MM/DD/YYYY', 1, NULL, 0)
/****** Object:  Index [IX_Dashboard_Category_SUB_Tenant_DEL]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Dashboard_Category_SUB_Tenant_DEL] ON [dbo].[IzendaDashboard]
(
	[CategoryId] ASC,
	[SubCategoryId] ASC,
	[TenantId] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Dashboard_Name_Category_SUB_Tenant_DEL]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Dashboard_Name_Category_SUB_Tenant_DEL] ON [dbo].[IzendaDashboard]
(
	[Name] ASC,
	[CategoryId] ASC,
	[SubCategoryId] ASC,
	[TenantId] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuerySourceField_DeletedAndQuerySourceId]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuerySourceField_DeletedAndQuerySourceId] ON [dbo].[IzendaQuerySourceField]
(
	[Deleted] ASC,
	[QuerySourceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [QuerySourceFieldIndex]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [QuerySourceFieldIndex] ON [dbo].[IzendaQuerySourceField]
(
	[Deleted] ASC,
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship_JointField_ForeignField]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Relationship_JointField_ForeignField] ON [dbo].[IzendaRelationship]
(
	[JoinFieldId] ASC,
	[ForeignFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship_JQS_FQS_RPT_DEL_SR]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Relationship_JQS_FQS_RPT_DEL_SR] ON [dbo].[IzendaRelationship]
(
	[JoinQuerySourceId] ASC,
	[ForeignQuerySourceId] ASC,
	[SystemRelationship] ASC,
	[ReportId] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship_Report_DEL]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Relationship_Report_DEL] ON [dbo].[IzendaRelationship]
(
	[ReportId] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Reletionship_Alias]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Reletionship_Alias] ON [dbo].[IzendaRelationship]
(
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IzendaReport]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_IzendaReport] ON [dbo].[IzendaReport]
(
	[Deleted] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_Category_SUB_Tenant_Type_DEL]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
(
	[CategoryId] ASC,
	[SubCategoryId] ASC,
	[TenantId] ASC,
	[Type] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Report_Name_Category_SUB_Tenant_Type_DEL]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_Name_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
(
	[Name] ASC,
	[CategoryId] ASC,
	[SubCategoryId] ASC,
	[TenantId] ASC,
	[Type] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_Tenant_Type_DEL]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Report_Tenant_Type_DEL] ON [dbo].[IzendaReport]
(
	[TenantId] ASC,
	[Type] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IzendaReportDataSource]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource] ON [dbo].[IzendaReportDataSource]
(
	[Deleted] ASC,
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_IzendaReportHistory]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_IzendaReportHistory] ON [dbo].[IzendaReportHistory]
(
	[Deleted] ASC,
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReportHistory_Modified_DEL]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReportHistory_Modified_DEL] ON [dbo].[IzendaReportHistory]
(
	[Modified] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReportPart_RPT]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReportPart_RPT] ON [dbo].[IzendaReportPart]
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IzendaUser]    Script Date: 10/6/2017 4:35:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_IzendaUser] ON [dbo].[IzendaUser]
(
	[Deleted] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IzendaFilterField]  WITH CHECK ADD  CONSTRAINT [FK_IzendaFilterField_IzendaReportFilter] FOREIGN KEY([FilterId])
REFERENCES [dbo].[IzendaReportFilter] ([Id])
GO
ALTER TABLE [dbo].[IzendaFilterField] CHECK CONSTRAINT [FK_IzendaFilterField_IzendaReportFilter]
GO
ALTER TABLE [dbo].[IzendaFilterOperator]  WITH CHECK ADD  CONSTRAINT [FK_IzendaFilterOperator_IzendaFilterOperatorGroup] FOREIGN KEY([OperatorGroupId])
REFERENCES [dbo].[IzendaFilterOperatorGroup] ([Id])
GO
ALTER TABLE [dbo].[IzendaFilterOperator] CHECK CONSTRAINT [FK_IzendaFilterOperator_IzendaFilterOperatorGroup]
GO
ALTER TABLE [dbo].[IzendaQuerySource]  WITH CHECK ADD  CONSTRAINT [FK_IzendaQuerySource_IzendaDataSourceCategory] FOREIGN KEY([DataSourceCategoryId])
REFERENCES [dbo].[IzendaDataSourceCategory] ([Id])
GO
ALTER TABLE [dbo].[IzendaQuerySource] CHECK CONSTRAINT [FK_IzendaQuerySource_IzendaDataSourceCategory]
GO
ALTER TABLE [dbo].[IzendaQuerySource]  WITH CHECK ADD  CONSTRAINT [FK_QuerySource_QuerySourceCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[IzendaQuerySourceCategory] ([Id])
GO
ALTER TABLE [dbo].[IzendaQuerySource] CHECK CONSTRAINT [FK_QuerySource_QuerySourceCategory]
GO
ALTER TABLE [dbo].[IzendaQuerySourceCategory]  WITH CHECK ADD  CONSTRAINT [FK_QuerySourceCategory_Connection] FOREIGN KEY([ConnectionId])
REFERENCES [dbo].[IzendaConnection] ([Id])
GO
ALTER TABLE [dbo].[IzendaQuerySourceCategory] CHECK CONSTRAINT [FK_QuerySourceCategory_Connection]
GO
ALTER TABLE [dbo].[IzendaReportFilter]  WITH CHECK ADD  CONSTRAINT [FK_IzendaReportFilter_IzendaReport] FOREIGN KEY([ReportId])
REFERENCES [dbo].[IzendaReport] ([Id])
GO
ALTER TABLE [dbo].[IzendaReportFilter] CHECK CONSTRAINT [FK_IzendaReportFilter_IzendaReport]
GO
ALTER TABLE [dbo].[IzendaWorkspaceMapping]  WITH CHECK ADD  CONSTRAINT [FK_IzendaWorkspaceMapping_IzendaWorkspace] FOREIGN KEY([WorkspaceId])
REFERENCES [dbo].[IzendaWorkspace] ([Id])
GO
ALTER TABLE [dbo].[IzendaWorkspaceMapping] CHECK CONSTRAINT [FK_IzendaWorkspaceMapping_IzendaWorkspace]
GO
ALTER TABLE [dbo].[IzendaWorkspaceMappingTenant]  WITH CHECK ADD  CONSTRAINT [FK_WorkspaceMappingTenant_IzendaWorkspaceMapping] FOREIGN KEY([WorkspaceMappingId])
REFERENCES [dbo].[IzendaWorkspaceMapping] ([Id])
GO
ALTER TABLE [dbo].[IzendaWorkspaceMappingTenant] CHECK CONSTRAINT [FK_WorkspaceMappingTenant_IzendaWorkspaceMapping]
GO
ALTER TABLE [dbo].[IzendaWorkspaceTenant]  WITH CHECK ADD  CONSTRAINT [FK_IzendaWorkspaceTenant_IzendaWorkspace] FOREIGN KEY([WorkspaceId])
REFERENCES [dbo].[IzendaWorkspace] ([Id])
GO
ALTER TABLE [dbo].[IzendaWorkspaceTenant] CHECK CONSTRAINT [FK_IzendaWorkspaceTenant_IzendaWorkspace]
GO
USE [master]
GO
ALTER DATABASE [IzendaSampleDB] SET  READ_WRITE 
GO
