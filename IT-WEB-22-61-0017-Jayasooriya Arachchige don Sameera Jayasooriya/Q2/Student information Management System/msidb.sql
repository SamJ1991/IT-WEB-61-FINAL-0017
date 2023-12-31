USE [master]
GO
/****** Object:  Database [msidb]    Script Date: 6/24/2023 10:54:38 PM ******/
CREATE DATABASE [msidb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'msidb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\msidb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'msidb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\msidb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [msidb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [msidb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [msidb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [msidb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [msidb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [msidb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [msidb] SET ARITHABORT OFF 
GO
ALTER DATABASE [msidb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [msidb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [msidb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [msidb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [msidb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [msidb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [msidb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [msidb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [msidb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [msidb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [msidb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [msidb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [msidb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [msidb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [msidb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [msidb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [msidb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [msidb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [msidb] SET RECOVERY FULL 
GO
ALTER DATABASE [msidb] SET  MULTI_USER 
GO
ALTER DATABASE [msidb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [msidb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [msidb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [msidb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'msidb', N'ON'
GO
USE [msidb]
GO
/****** Object:  Table [dbo].[Courcetb]    Script Date: 6/24/2023 10:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Courcetb](
	[Cource_ID] [int] NOT NULL,
	[Name] [varchar](150) NULL,
	[Lecture_Name] [varchar](150) NULL,
 CONSTRAINT [PK_Courcetb] PRIMARY KEY CLUSTERED 
(
	[Cource_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Studenttb]    Script Date: 6/24/2023 10:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Studenttb](
	[Student_ID] [int] NOT NULL,
	[Name] [varchar](150) NULL,
	[City] [varchar](150) NULL,
	[Cource_ID] [int] NULL,
 CONSTRAINT [PK_Studenttb] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [msidb] SET  READ_WRITE 
GO
