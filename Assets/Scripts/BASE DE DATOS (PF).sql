USE [master]
GO
/****** Object:  Database [Proyecto Final "¿Quién es quién?"]    Script Date: 7/7/2023 08:27:23 ******/
CREATE DATABASE [Proyecto Final "¿Quién es quién?"]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto Final _¿Quién es quién__', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Proyecto Final _¿Quién es quién__.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto Final _¿Quién es quién___log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Proyecto Final _¿Quién es quién___log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto Final "¿Quién es quién?"].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET RECOVERY FULL 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Proyecto Final "¿Quién es quién?"', N'ON'
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET QUERY_STORE = OFF
GO
USE [Proyecto Final "¿Quién es quién?"]
GO
/****** Object:  User [alumno]    Script Date: 7/7/2023 08:27:23 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Caracteristicas]    Script Date: 7/7/2023 08:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caracteristicas](
	[IDPersonaje] [int] NOT NULL,
	[Accesorios] [varchar](max) NULL,
	[Ojos] [varchar](50) NOT NULL,
	[Pelo] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriasPregunta]    Script Date: 7/7/2023 08:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriasPregunta](
	[IDPregunta] [int] NOT NULL,
	[PreguntaAccesorios] [varchar](max) NULL,
	[PreguntaOjos] [varchar](max) NULL,
	[PreguntaPelo] [varchar](max) NULL,
	[PreguntaEdad] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 7/7/2023 08:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[IDPersonaje] [int] NOT NULL,
	[Avatar] [image] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 7/7/2023 08:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pregunta](
	[IDPregunta] [int] NULL,
	[IDCaracteristicas] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 7/7/2023 08:27:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Nombre] [varchar](50) NOT NULL,
	[FotodePerfil] [image] NULL,
	[Nivel] [int] NOT NULL,
	[Nacionalidad] [varchar](50) NULL,
	[HistorialContraJugador] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET  READ_WRITE 
GO
