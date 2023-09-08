USE [master]
GO
/****** Object:  Database [Proyecto Final "¿Quién es quién?"]    Script Date: 8/9/2023 08:46:58 ******/
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
/****** Object:  User [alumno]    Script Date: 8/9/2023 08:46:58 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Caracteristicas]    Script Date: 8/9/2023 08:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caracteristicas](
	[IDPersonaje] [int] NOT NULL,
	[Accesorios] [varchar](50) NULL,
	[Ojos] [varchar](50) NOT NULL,
	[Pelo] [varchar](50) NOT NULL,
	[Genero] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriasPregunta]    Script Date: 8/9/2023 08:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriasPregunta](
	[IDPregunta] [int] NOT NULL,
	[PreguntaAccesorios] [varchar](max) NULL,
	[PreguntaOjos] [varchar](max) NULL,
	[PreguntaPelo] [varchar](max) NULL,
	[PreguntaGenero] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personajess]    Script Date: 8/9/2023 08:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajess](
	[IDPersonaje] [int] NOT NULL,
	[Avatar] [varchar](max) NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pregunta]    Script Date: 8/9/2023 08:46:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pregunta](
	[IDPregunta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 8/9/2023 08:46:58 ******/
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
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (1, NULL, N'Marrón', N'Pelado', N'Masculino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (2, N'Anteojos', N'Celeste', N'Rubio', N'Masculino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (3, NULL, N'Negro', N'Gris', N'Masculino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (4, N'Anteojos', N'Celeste', N'Marrón', N'Femenino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (5, NULL, N'Negro', N'Negro', N'Femenino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (6, N'Anteojos', N'Celeste', N'Negro', N'Femenino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (7, N'Anteojos', N'Marrón', N'Rubio', N'Femenino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (8, NULL, N'Marrón', N'Negro', N'Femenino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (9, N'Anteojos', N'Verde', N'Rubio', N'Masculino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (10, NULL, N'Verde', N'Negro', N'Masculino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (11, N'Anteojos', N'Celeste', N'Marrón', N'Masculino')
INSERT [dbo].[Caracteristicas] ([IDPersonaje], [Accesorios], [Ojos], [Pelo], [Genero]) VALUES (12, NULL, N'Verde', N'Rubio', N'Masculino')
GO
INSERT [dbo].[CategoriasPregunta] ([IDPregunta], [PreguntaAccesorios], [PreguntaOjos], [PreguntaPelo], [PreguntaGenero]) VALUES (1, N'¿Tu personaje tiene anteojos?', N'¿Sus ojos son de color marrón?', N'¿Tu personaje tiene el pelo rubio?', N'¿Tu personaje es mujer?')
INSERT [dbo].[CategoriasPregunta] ([IDPregunta], [PreguntaAccesorios], [PreguntaOjos], [PreguntaPelo], [PreguntaGenero]) VALUES (2, NULL, N'¿Sus ojos son de color celeste?', N'¿Tu personaje es pelado?', N'¿Tu personaje es hombre?')
INSERT [dbo].[CategoriasPregunta] ([IDPregunta], [PreguntaAccesorios], [PreguntaOjos], [PreguntaPelo], [PreguntaGenero]) VALUES (3, NULL, N'¿Sus ojos son de color negro?', N'¿Tu personaje tiene el pelo gris?', NULL)
INSERT [dbo].[CategoriasPregunta] ([IDPregunta], [PreguntaAccesorios], [PreguntaOjos], [PreguntaPelo], [PreguntaGenero]) VALUES (4, NULL, N'¿Sus ojos son de color verde?', NULL, NULL)
GO
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (1, N'https://files.fm/f/ycf3px5m5', N'Juan Manuel', N'Del Piero')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (2, N'https://files.fm/f/3fmxf3w3d', N'Blas', N'Zanetti')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (3, N'https://files.fm/f/mq8p3an5c', N'Juan Pablo', N'Benavídez')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (4, N'https://files.fm/f/3kjbmr8tj', N'Natalia', N'Fernández')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (5, N'https://files.fm/f/9r929xd33', N'Tamara', N'Laprida')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (6, N'https://files.fm/f/hbszbtzvr', N'Romina', N'Salgado')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (7, N'https://files.fm/f/c2jt74t78', N'Laura', N'Rochet')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (8, N'https://files.fm/f/fr4ue6r66', N'Rocío', N'Rodríguez')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (9, N'https://files.fm/f/berzwyhce', N'Romualdo', N'Trass')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (10, N'https://files.fm/f/gh9jv6n48', N'Miguel Ángel', N'Romero')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (11, N'https://files.fm/f/xh5twwzkh', N'Roberto', N'Banzas')
INSERT [dbo].[Personajess] ([IDPersonaje], [Avatar], [Nombre], [Apellido]) VALUES (12, N'https://files.fm/f/khkezfy4z', N'Ernesto', N'Müller')
GO
USE [master]
GO
ALTER DATABASE [Proyecto Final "¿Quién es quién?"] SET  READ_WRITE 
GO
