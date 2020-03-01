USE [master]
GO
/****** Object:  Database [inventario]    Script Date: 02/29/2020 20:28:36 ******/
CREATE DATABASE [inventario] ON  PRIMARY 
( NAME = N'inventario', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\inventario.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'inventario_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\inventario_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [inventario] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [inventario].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [inventario] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [inventario] SET ANSI_NULLS OFF
GO
ALTER DATABASE [inventario] SET ANSI_PADDING OFF
GO
ALTER DATABASE [inventario] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [inventario] SET ARITHABORT OFF
GO
ALTER DATABASE [inventario] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [inventario] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [inventario] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [inventario] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [inventario] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [inventario] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [inventario] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [inventario] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [inventario] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [inventario] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [inventario] SET  DISABLE_BROKER
GO
ALTER DATABASE [inventario] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [inventario] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [inventario] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [inventario] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [inventario] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [inventario] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [inventario] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [inventario] SET  READ_WRITE
GO
ALTER DATABASE [inventario] SET RECOVERY SIMPLE
GO
ALTER DATABASE [inventario] SET  MULTI_USER
GO
ALTER DATABASE [inventario] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [inventario] SET DB_CHAINING OFF
GO
USE [inventario]
GO
/****** Object:  Table [dbo].[departamentos]    Script Date: 02/29/2020 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departamentos](
	[codigo_departamento] [int] IDENTITY(1,1) NOT NULL,
	[nombre_departamento] [varchar](50) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_departamento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 02/29/2020 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[codigo_clientes] [int] IDENTITY(1,1) NOT NULL,
	[nombre_clientes] [varchar](50) NULL,
	[email] [varchar](30) NULL,
	[telefono] [varchar](13) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_clientes] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[unidades]    Script Date: 02/29/2020 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[unidades](
	[codigo_unidad] [int] IDENTITY(1,1) NOT NULL,
	[nombre_unidad] [varchar](50) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_unidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suplidores]    Script Date: 02/29/2020 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suplidores](
	[codigo_suplidor] [int] IDENTITY(1,1) NOT NULL,
	[nombre_suplidor] [varchar](50) NULL,
	[email] [varchar](30) NULL,
	[telefono] [varchar](13) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_suplidor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 02/29/2020 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[numFac] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[codigo_clientes] [int] NOT NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[numFac] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productoductos]    Script Date: 02/29/2020 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productoductos](
	[codigo_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre_producto] [varchar](50) NULL,
	[codigo_departamento] [int] NOT NULL,
	[codigo_suplidor] [int] NOT NULL,
	[cantidad_existente] [int] NULL,
	[punReo] [int] NULL,
	[codigo_unidad] [int] NOT NULL,
	[estado] [bit] NULL,
	[preVen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalles]    Script Date: 02/29/2020 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles](
	[numFac] [int] IDENTITY(1,1) NOT NULL,
	[cantidadVen] [int] NULL,
	[codigo_producto] [int] NOT NULL,
	[preVen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[numFac] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__ventas__codigo_c__1BFD2C07]    Script Date: 02/29/2020 20:28:37 ******/
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD FOREIGN KEY([codigo_clientes])
REFERENCES [dbo].[clientes] ([codigo_clientes])
GO
/****** Object:  ForeignKey [FK__productod__codig__108B795B]    Script Date: 02/29/2020 20:28:37 ******/
ALTER TABLE [dbo].[productoductos]  WITH CHECK ADD FOREIGN KEY([codigo_departamento])
REFERENCES [dbo].[departamentos] ([codigo_departamento])
GO
/****** Object:  ForeignKey [FK__productod__codig__117F9D94]    Script Date: 02/29/2020 20:28:37 ******/
ALTER TABLE [dbo].[productoductos]  WITH CHECK ADD FOREIGN KEY([codigo_suplidor])
REFERENCES [dbo].[suplidores] ([codigo_suplidor])
GO
/****** Object:  ForeignKey [FK__productod__codig__1273C1CD]    Script Date: 02/29/2020 20:28:37 ******/
ALTER TABLE [dbo].[productoductos]  WITH CHECK ADD FOREIGN KEY([codigo_unidad])
REFERENCES [dbo].[unidades] ([codigo_unidad])
GO
/****** Object:  ForeignKey [FK__detalles__codigo__173876EA]    Script Date: 02/29/2020 20:28:37 ******/
ALTER TABLE [dbo].[detalles]  WITH CHECK ADD FOREIGN KEY([codigo_producto])
REFERENCES [dbo].[productoductos] ([codigo_producto])
GO
