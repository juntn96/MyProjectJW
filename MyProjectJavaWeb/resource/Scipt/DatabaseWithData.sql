USE [master]
GO
/****** Object:  Database [Shop]    Script Date: 03/12/2016 9:55:30 SA ******/
CREATE DATABASE [Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Shop.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Shop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shop] SET RECOVERY FULL 
GO
ALTER DATABASE [Shop] SET  MULTI_USER 
GO
ALTER DATABASE [Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Shop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Shop]
GO
/****** Object:  Table [dbo].[clothing]    Script Date: 03/12/2016 9:55:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clothing](
	[clothingID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NOT NULL,
	[gender] [bit] NULL,
	[path] [varchar](500) NOT NULL,
	[sizeID] [int] NOT NULL,
	[styleID] [int] NOT NULL,
	[colorID] [int] NOT NULL,
	[meterialID] [int] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[clothingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[colorID]    Script Date: 03/12/2016 9:55:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[colorID](
	[colorID] [int] NOT NULL,
	[colorName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_colorID] PRIMARY KEY CLUSTERED 
(
	[colorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[materialTBL]    Script Date: 03/12/2016 9:55:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[materialTBL](
	[materialID] [int] NOT NULL,
	[materialName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_materialTBL] PRIMARY KEY CLUSTERED 
(
	[materialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sizeTBL]    Script Date: 03/12/2016 9:55:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sizeTBL](
	[sizeID] [int] NOT NULL,
	[sizeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sizeTBL] PRIMARY KEY CLUSTERED 
(
	[sizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[styleTBL]    Script Date: 03/12/2016 9:55:30 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[styleTBL](
	[styleID] [int] NOT NULL,
	[styleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_styleTBL] PRIMARY KEY CLUSTERED 
(
	[styleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[clothing] ON 

INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (1, N'resource\image\8th-set-w-header2000_large.jpg', 1, N'resource\image\8th-set-w-header2000_large.jpg', 2, 2, 4, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (2, N'resource\image\alignment2000_large.jpg', 1, N'resource\image\alignment2000_large.jpg', 3, 2, 5, 2)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (3, N'resource\image\balance-tri_large.jpg', 1, N'resource\image\balance-tri_large.jpg', 3, 2, 4, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (4, N'resource\image\black-crew-2000-new_large.jpeg', 1, N'resource\image\black-crew-2000-new_large.jpeg', 3, 4, 1, 5)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (5, N'resource\image\common-ground2000_large.jpg', 1, N'resource\image\common-ground2000_large.jpg', 2, 2, 10, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (6, N'resource\image\convergence-2000_881f2ad4-25ce-4188-87fe-4b0d5f89888d_large.jpg', 1, N'resource\image\convergence-2000_881f2ad4-25ce-4188-87fe-4b0d5f89888d_large.jpg', 2, 2, 1, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (8, N'resource\image\day-night-set2000_large.jpeg', 1, N'resource\image\day-night-set2000_large.jpeg', 3, 2, 9, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (9, N'resource\image\do-alot-gray-2000_large.jpg', 1, N'resource\image\do-alot-gray-2000_large.jpg', 1, 2, 4, 2)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (10, N'resource\image\do-alot-navy-2000_large.jpg', 1, N'resource\image\do-alot-navy-2000_large.jpg', 2, 2, 3, 3)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (11, N'resource\image\horizon-tri_large.jpg', 1, N'resource\image\horizon-tri_large.jpg', 2, 1, 4, 2)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (12, N'resource\image\migration-tri_large.jpg', 1, N'resource\image\migration-tri_large.jpg', 3, 2, 9, 2)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (13, N'resource\image\migration2000_a6712530-4557-4a6c-bfd9-1c969256ff68_large.jpeg', 1, N'resource\image\migration2000_a6712530-4557-4a6c-bfd9-1c969256ff68_large.jpeg', 1, 1, 4, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (15, N'resource\image\momentum-army2000_large.jpg', 1, N'resource\image\momentum-army2000_large.jpg', 1, 1, 5, 2)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (16, N'resource\image\momentum-crewneck2000_large.jpg', 1, N'resource\image\momentum-crewneck2000_large.jpg', 1, 1, 1, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (17, N'resource\image\momentum2000_6852214d-a888-4e44-8e3d-51769506671f_large.jpeg', 1, N'resource\image\momentum2000_6852214d-a888-4e44-8e3d-51769506671f_large.jpeg', 1, 1, 2, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (18, N'resource\image\mountains-new2000_large.jpeg', 1, N'resource\image\mountains-new2000_large.jpeg', 1, 1, 1, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (19, N'resource\image\mountains-tri_large.jpg', 1, N'resource\image\mountains-tri_large.jpg', 1, 1, 4, 1)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (20, N'resource\image\mtns-blk-crew-2000_large.jpeg', 1, N'resource\image\mtns-blk-crew-2000_large.jpeg', 1, 1, 4, 3)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (21, N'resource\image\mtns-blk-crew-2000_large.jpeg', 1, N'resource\image\mtns-blk-crew-2000_large.jpeg', 1, 1, 4, 3)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (22, N'resource\image\plus-crew2000_large.jpeg', 1, N'resource\image\plus-crew2000_large.jpeg', 2, 1, 1, 3)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (23, N'resource\image\plus-minus-new_large.jpeg', 1, N'resource\image\plus-minus-new_large.jpeg', 1, 1, 2, 3)
INSERT [dbo].[clothing] ([clothingID], [name], [gender], [path], [sizeID], [styleID], [colorID], [meterialID]) VALUES (24, N'resource\image\ripple2000_large.jpeg', 1, N'resource\image\ripple2000_large.jpeg', 1, 1, 4, 4)
SET IDENTITY_INSERT [dbo].[clothing] OFF
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (1, N'black')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (2, N'blue')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (3, N'brown')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (4, N'gray')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (5, N'green')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (6, N'navy')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (7, N'orange')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (8, N'purple')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (9, N'red')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (10, N'white')
INSERT [dbo].[colorID] ([colorID], [colorName]) VALUES (11, N'yellow')
INSERT [dbo].[materialTBL] ([materialID], [materialName]) VALUES (1, N'100% Cotton')
INSERT [dbo].[materialTBL] ([materialID], [materialName]) VALUES (2, N'50/50')
INSERT [dbo].[materialTBL] ([materialID], [materialName]) VALUES (3, N'Triblend')
INSERT [dbo].[materialTBL] ([materialID], [materialName]) VALUES (4, N'Leather')
INSERT [dbo].[materialTBL] ([materialID], [materialName]) VALUES (5, N'Wool')
INSERT [dbo].[materialTBL] ([materialID], [materialName]) VALUES (6, N'Fleece')
INSERT [dbo].[sizeTBL] ([sizeID], [sizeName]) VALUES (1, N's')
INSERT [dbo].[sizeTBL] ([sizeID], [sizeName]) VALUES (2, N'm')
INSERT [dbo].[sizeTBL] ([sizeID], [sizeName]) VALUES (3, N'l')
INSERT [dbo].[sizeTBL] ([sizeID], [sizeName]) VALUES (4, N'xl')
INSERT [dbo].[sizeTBL] ([sizeID], [sizeName]) VALUES (5, N'xxl')
INSERT [dbo].[styleTBL] ([styleID], [styleName]) VALUES (1, N'tee')
INSERT [dbo].[styleTBL] ([styleID], [styleName]) VALUES (2, N'crewneck')
INSERT [dbo].[styleTBL] ([styleID], [styleName]) VALUES (4, N'hoody')
INSERT [dbo].[styleTBL] ([styleID], [styleName]) VALUES (5, N'henley')
INSERT [dbo].[styleTBL] ([styleID], [styleName]) VALUES (6, N'vneck')
INSERT [dbo].[styleTBL] ([styleID], [styleName]) VALUES (7, N'hat')
ALTER TABLE [dbo].[clothing]  WITH CHECK ADD  CONSTRAINT [FK_clothing_colorID] FOREIGN KEY([colorID])
REFERENCES [dbo].[colorID] ([colorID])
GO
ALTER TABLE [dbo].[clothing] CHECK CONSTRAINT [FK_clothing_colorID]
GO
ALTER TABLE [dbo].[clothing]  WITH CHECK ADD  CONSTRAINT [FK_clothing_materialTBL] FOREIGN KEY([meterialID])
REFERENCES [dbo].[materialTBL] ([materialID])
GO
ALTER TABLE [dbo].[clothing] CHECK CONSTRAINT [FK_clothing_materialTBL]
GO
ALTER TABLE [dbo].[clothing]  WITH CHECK ADD  CONSTRAINT [FK_clothing_sizeTBL] FOREIGN KEY([sizeID])
REFERENCES [dbo].[sizeTBL] ([sizeID])
GO
ALTER TABLE [dbo].[clothing] CHECK CONSTRAINT [FK_clothing_sizeTBL]
GO
ALTER TABLE [dbo].[clothing]  WITH CHECK ADD  CONSTRAINT [FK_clothing_styleTBL] FOREIGN KEY([styleID])
REFERENCES [dbo].[styleTBL] ([styleID])
GO
ALTER TABLE [dbo].[clothing] CHECK CONSTRAINT [FK_clothing_styleTBL]
GO
USE [master]
GO
ALTER DATABASE [Shop] SET  READ_WRITE 
GO
