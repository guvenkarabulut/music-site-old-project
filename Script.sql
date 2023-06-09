USE [master]
GO
/****** Object:  Database [muzikSitesiDb]    Script Date: 29.01.2021 20:08:08 ******/
CREATE DATABASE [muzikSitesiDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'muzikSitesi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\muzikSitesi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'muzikSitesi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\muzikSitesi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [muzikSitesiDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [muzikSitesiDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [muzikSitesiDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [muzikSitesiDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [muzikSitesiDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [muzikSitesiDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [muzikSitesiDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [muzikSitesiDb] SET  MULTI_USER 
GO
ALTER DATABASE [muzikSitesiDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [muzikSitesiDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [muzikSitesiDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [muzikSitesiDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [muzikSitesiDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [muzikSitesiDb] SET QUERY_STORE = OFF
GO
USE [muzikSitesiDb]
GO
/****** Object:  Table [dbo].[Galeri]    Script Date: 29.01.2021 20:08:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeri](
	[GaleriID] [int] IDENTITY(1,1) NOT NULL,
	[GaleriResim] [nvarchar](max) NULL,
	[ResimAcıklama] [nvarchar](max) NULL,
	[AktiflikDurumu] [bit] NULL,
	[EklenmeTarihi] [datetime] NULL,
 CONSTRAINT [PK_Galeri] PRIMARY KEY CLUSTERED 
(
	[GaleriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Iletisim]    Script Date: 29.01.2021 20:08:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim](
	[iletisimID] [int] NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Eposta] [nvarchar](50) NULL,
	[Mesaj] [nvarchar](50) NULL,
	[ipAdresi] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 29.01.2021 20:08:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[kullanici_id] [int] IDENTITY(1,1) NOT NULL,
	[kullanici_Ad] [nvarchar](50) NULL,
	[kullanici_Soyad] [nvarchar](50) NULL,
	[kullanici_Mail] [nvarchar](50) NULL,
	[kullanici_Sifre] [nvarchar](50) NULL,
	[kullanici_Adi] [nvarchar](50) NULL,
	[aktifMi] [nvarchar](50) NULL,
	[kullaniciTuruID] [int] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[kullanici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullaniciTuru]    Script Date: 29.01.2021 20:08:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullaniciTuru](
	[kullaniciTuruID] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciTuruAD] [nchar](10) NULL,
 CONSTRAINT [PK_kullaniciTuru] PRIMARY KEY CLUSTERED 
(
	[kullaniciTuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_kullaniciTuru] FOREIGN KEY([kullaniciTuruID])
REFERENCES [dbo].[kullaniciTuru] ([kullaniciTuruID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_kullaniciTuru]
GO
USE [master]
GO
ALTER DATABASE [muzikSitesiDb] SET  READ_WRITE 
GO
