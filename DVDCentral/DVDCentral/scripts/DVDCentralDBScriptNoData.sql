USE [master]
GO
/****** Object:  Database [DVDCentral]    Script Date: 3/25/2014 4:17:37 PM ******/
CREATE DATABASE [DVDCentral] ON  PRIMARY 
( NAME = N'DVDCentral', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\DVDCentral.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DVDCentral_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\DVDCentral_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DVDCentral] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DVDCentral].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DVDCentral] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DVDCentral] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DVDCentral] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DVDCentral] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DVDCentral] SET ARITHABORT OFF 
GO
ALTER DATABASE [DVDCentral] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DVDCentral] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DVDCentral] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DVDCentral] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DVDCentral] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DVDCentral] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DVDCentral] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DVDCentral] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DVDCentral] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DVDCentral] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DVDCentral] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DVDCentral] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DVDCentral] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DVDCentral] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DVDCentral] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DVDCentral] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DVDCentral] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DVDCentral] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DVDCentral] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DVDCentral] SET  MULTI_USER 
GO
ALTER DATABASE [DVDCentral] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DVDCentral] SET DB_CHAINING OFF 
GO
USE [DVDCentral]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/25/2014 4:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](45) NULL,
	[LastName] [varchar](45) NULL,
	[Address] [varchar](45) NULL,
	[City] [varchar](45) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](5) NULL,
	[Email] [varchar](45) NULL,
	[Password] [varchar](45) NULL,
 CONSTRAINT [PK__Customer__A4AE64B80EA330E9] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Format]    Script Date: 3/25/2014 4:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Format](
	[FormatID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](45) NULL,
 CONSTRAINT [PK__Format__5D3DCB79173876EA] PRIMARY KEY CLUSTERED 
(
	[FormatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 3/25/2014 4:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreID] [int] IDENTITY(1,1) NOT NULL,
	[ParentGenre] [varchar](45) NULL,
	[Description] [varchar](45) NULL,
 CONSTRAINT [PK__Genre__0385055E1ED998B2] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Item]    Script Date: 3/25/2014 4:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[MovieID] [int] NULL,
 CONSTRAINT [PK__Item__727E83EB286302EC] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MovieGenre]    Script Date: 3/25/2014 4:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieGenre](
	[MovieID] [int] IDENTITY(1,1) NOT NULL,
	[GenreID] [int] NOT NULL,
 CONSTRAINT [PK__MovieGen__BBEAC46F2E1BDC42] PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC,
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies]    Script Date: 3/25/2014 4:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](45) NULL,
	[Description] [varchar](45) NULL,
	[Image] [varchar](140) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[RatingID] [int] NULL,
	[FormatID] [int] NULL,
 CONSTRAINT [PK__Movies__4BD2943A22AA2996] PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/25/2014 4:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Date] [datetime] NULL,
	[Reciept] [varchar](45) NULL,
	[CustomerShipped] [bit] NULL,
 CONSTRAINT [PK__Orders__C3905BAF1273C1CD] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 3/25/2014 4:17:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](45) NULL,
 CONSTRAINT [PK__Rating__FCCDF85C1B0907CE] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [fk_Item_Movie] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([MovieID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [fk_Item_Movie]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [fk_Item_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [fk_Item_Order]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [fk_MovieGenre_Genre] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genre] ([GenreID])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [fk_MovieGenre_Genre]
GO
ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [fk_MovieGenre_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([MovieID])
GO
ALTER TABLE [dbo].[MovieGenre] CHECK CONSTRAINT [fk_MovieGenre_Movies]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [fk_Movies_Format] FOREIGN KEY([FormatID])
REFERENCES [dbo].[Format] ([FormatID])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [fk_Movies_Format]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [fk_Movies_Rating] FOREIGN KEY([RatingID])
REFERENCES [dbo].[Rating] ([RatingID])
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [fk_Movies_Rating]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_Order_Customer]
GO
USE [master]
GO
ALTER DATABASE [DVDCentral] SET  READ_WRITE 
GO
