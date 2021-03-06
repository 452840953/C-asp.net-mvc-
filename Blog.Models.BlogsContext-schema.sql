USE [master]
GO
/****** Object:  Database [Blog.Models.BlogsContext]    Script Date: 2020/5/24 15:30:42 ******/
CREATE DATABASE [Blog.Models.BlogsContext]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Blog.Models.BlogsContext.mdf', FILENAME = N'C:\DATA\Blog.Models.BlogsContext.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Blog.Models.BlogsContext_log.ldf', FILENAME = N'C:\DATA\Blog.Models.BlogsContext_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Blog.Models.BlogsContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET  MULTI_USER 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Blog.Models.BlogsContext', N'ON'
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET QUERY_STORE = OFF
GO
USE [Blog.Models.BlogsContext]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Blog.Models.BlogsContext]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Grade] [int] NOT NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Albums]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cover] [int] NOT NULL,
	[User] [int] NOT NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Albums] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articals]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User] [int] NOT NULL,
	[Classification] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Classname] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Articals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classifications]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Classifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Infoid] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[User] [int] NOT NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Collections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grades]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Authority] [nvarchar](max) NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Grades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Tyoe] [int] NOT NULL,
	[Infoid] [int] NOT NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[User] [nvarchar](max) NULL,
	[Headphoto] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Album] [int] NOT NULL,
	[Src] [nvarchar](max) NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quanxians]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quanxians](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Quanxians] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Systems]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Systems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[Aboutus] [nvarchar](max) NULL,
	[Contract] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Systems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2020/5/24 15:30:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Headphoto] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Createtime] [int] NOT NULL,
	[Updatetime] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Messages] ADD  DEFAULT ((0)) FOR [UserId]
GO
USE [master]
GO
ALTER DATABASE [Blog.Models.BlogsContext] SET  READ_WRITE 
GO
