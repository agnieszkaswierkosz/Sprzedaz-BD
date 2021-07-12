USE [master]
GO
/****** Object:  Database [STG]    Script Date: 12.07.2021 15:06:45 ******/
CREATE DATABASE [STG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'STG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\STG.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'STG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\STG_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [STG] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [STG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [STG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [STG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [STG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [STG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [STG] SET ARITHABORT OFF 
GO
ALTER DATABASE [STG] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [STG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [STG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [STG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [STG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [STG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [STG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [STG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [STG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [STG] SET  DISABLE_BROKER 
GO
ALTER DATABASE [STG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [STG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [STG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [STG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [STG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [STG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [STG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [STG] SET RECOVERY FULL 
GO
ALTER DATABASE [STG] SET  MULTI_USER 
GO
ALTER DATABASE [STG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [STG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [STG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [STG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [STG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [STG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'STG', N'ON'
GO
ALTER DATABASE [STG] SET QUERY_STORE = OFF
GO
USE [STG]
GO
/****** Object:  Table [dbo].[Geo]    Script Date: 12.07.2021 15:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geo](
	[Market] [varchar](50) NULL,
	[Country] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12.07.2021 15:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Row ID] [varchar](50) NULL,
	[Order ID] [varchar](50) NULL,
	[Order Date] [varchar](50) NULL,
	[Ship Date] [varchar](50) NULL,
	[Ship Mode] [varchar](50) NULL,
	[Customer ID] [varchar](50) NULL,
	[Customer Name] [varchar](50) NULL,
	[Segment] [varchar](50) NULL,
	[Postal Code] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Product ID] [varchar](50) NULL,
	[Sales] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[Discount] [varchar](50) NULL,
	[Profit] [varchar](50) NULL,
	[Shipping Cost] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12.07.2021 15:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product ID] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Sub-Category] [varchar](50) NULL,
	[Product Name] [varchar](200) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [STG] SET  READ_WRITE 
GO
