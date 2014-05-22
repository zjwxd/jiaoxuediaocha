USE [master]
GO
/****** Object:  Database [diaocha]    Script Date: 2014/5/21 22:52:30 ******/
CREATE DATABASE [diaocha]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'diaocha', FILENAME = N'D:\code\jiaoxuediaocha\jiaoxuediaocha\App_Data\diaocha.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'diaocha_log', FILENAME = N'D:\code\jiaoxuediaocha\jiaoxuediaocha\App_Data\diaocha_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [diaocha] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [diaocha].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [diaocha] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [diaocha] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [diaocha] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [diaocha] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [diaocha] SET ARITHABORT OFF 
GO
ALTER DATABASE [diaocha] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [diaocha] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [diaocha] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [diaocha] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [diaocha] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [diaocha] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [diaocha] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [diaocha] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [diaocha] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [diaocha] SET  DISABLE_BROKER 
GO
ALTER DATABASE [diaocha] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [diaocha] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [diaocha] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [diaocha] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [diaocha] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [diaocha] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [diaocha] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [diaocha] SET RECOVERY FULL 
GO
ALTER DATABASE [diaocha] SET  MULTI_USER 
GO
ALTER DATABASE [diaocha] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [diaocha] SET DB_CHAINING OFF 
GO
ALTER DATABASE [diaocha] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [diaocha] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [diaocha] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'diaocha', N'ON'
GO
USE [diaocha]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 2014/5/21 22:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[admin] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[course]    Script Date: 2014/5/21 22:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[id] [nchar](10) NOT NULL,
	[grade] [nchar](2) NOT NULL,
	[class] [nchar](4) NOT NULL,
	[subject] [nchar](2) NOT NULL,
	[sequence] [nchar](1) NOT NULL,
 CONSTRAINT [PK_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[homework]    Script Date: 2014/5/21 22:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[homework](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xuehao] [nchar](8) NOT NULL,
	[grade] [nchar](2) NOT NULL,
	[class] [nchar](4) NOT NULL,
	[subject] [nchar](4) NOT NULL,
	[result] [nchar](3) NOT NULL,
 CONSTRAINT [PK_homework] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[student]    Script Date: 2014/5/21 22:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[xuehao] [nchar](8) NOT NULL,
	[name] [nchar](4) NOT NULL,
	[sex] [nchar](1) NOT NULL,
	[grade] [nchar](2) NOT NULL,
	[class] [nchar](4) NOT NULL,
	[finish] [nchar](1) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[xuehao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[total]    Script Date: 2014/5/21 22:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[total](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xuehao] [nchar](8) NOT NULL,
	[grade] [nchar](2) NOT NULL,
	[class] [nchar](4) NOT NULL,
	[subject] [nchar](4) NOT NULL,
	[result] [nchar](3) NOT NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [diaocha] SET  READ_WRITE 
GO
