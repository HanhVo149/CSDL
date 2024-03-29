USE [master]
GO
/****** Object:  Database [QuanLy_ThuVien]    Script Date: 7/15/2022 4:43:18 PM ******/
CREATE DATABASE [QuanLy_ThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLy_ThuVien', FILENAME = N'E:\LearnIT\HK6\HQTCSDL-T6-17h30\Test_nhaplieu\QuanLy_ThuVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLy_ThuVien_log', FILENAME = N'E:\LearnIT\HK6\HQTCSDL-T6-17h30\Test_nhaplieu\QuanLy_ThuVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLy_ThuVien] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLy_ThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLy_ThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLy_ThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLy_ThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLy_ThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLy_ThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLy_ThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLy_ThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLy_ThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLy_ThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLy_ThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLy_ThuVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLy_ThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLy_ThuVien] SET QUERY_STORE = OFF
GO
USE [QuanLy_ThuVien]
GO
/****** Object:  Table [dbo].[cuonsach]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuonsach](
	[isbn] [int] NOT NULL,
	[ma_cuonsach] [int] NOT NULL,
	[tinhtrang] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[isbn] ASC,
	[ma_cuonsach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKy]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKy](
	[isbn] [int] NOT NULL,
	[ma_DocGia] [int] NOT NULL,
	[ngay_dk] [datetime] NULL,
	[ghichu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[isbn] ASC,
	[ma_DocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dausach]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dausach](
	[isbn] [int] NOT NULL,
	[ma_tuasach] [int] NULL,
	[ngonngu] [char](15) NULL,
	[bia] [char](15) NULL,
	[trangthai] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[isbn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[ma_DocGia] [int] NOT NULL,
	[ho] [nvarchar](15) NULL,
	[tenlot] [char](1) NULL,
	[ten] [nvarchar](15) NULL,
	[ngaysinh] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_DocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[muon]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muon](
	[isbn] [int] NOT NULL,
	[ma_cuonsach] [int] NOT NULL,
	[ma_DocGia] [int] NULL,
	[ngay_muon] [datetime] NULL,
	[ngay_hethan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[isbn] ASC,
	[ma_cuonsach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoilon]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoilon](
	[ma_DocGia] [int] NOT NULL,
	[sonha] [nvarchar](15) NULL,
	[duong] [nvarchar](15) NULL,
	[quan] [nvarchar](63) NULL,
	[dienthoai] [nvarchar](13) NULL,
	[han_sd] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_DocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qtrinhmuon]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qtrinhmuon](
	[isbn] [int] NOT NULL,
	[ma_cuonsach] [int] NOT NULL,
	[ngay_muon] [datetime] NOT NULL,
	[ma_DocGia] [int] NULL,
	[ngay_hethan] [datetime] NULL,
	[ngay_tra] [datetime] NULL,
	[tien_muon] [money] NULL,
	[tien_datra] [money] NULL,
	[tien_datcoc] [money] NULL,
	[ghichu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[isbn] ASC,
	[ma_cuonsach] ASC,
	[ngay_muon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[treem]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[treem](
	[ma_DocGia] [int] NOT NULL,
	[ma_DocGia_nguoilon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_DocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tuasach]    Script Date: 7/15/2022 4:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tuasach](
	[ma_tuasach] [int] NOT NULL,
	[tuasach] [nvarchar](63) NULL,
	[tacgia] [nvarchar](31) NULL,
	[tomtat] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tuasach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (1, 1, N'Anh            ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (3, 1, N'Ð?c            ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (4, 1, N'Hàn            ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (5, 1, N'Hoa            ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (6, 1, N'Nh?t           ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (7, 1, N'Pháp           ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (9, 1, N'Vi?t           ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (10, 1, N'Ý              ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (11, 1, N'Anh            ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (13, 1, N'Ð?c            ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (14, 1, N'Hàn            ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (15, 1, N'Hoa            ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (16, 1, N'Nh?t           ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (17, 1, N'Pháp           ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[dausach] ([isbn], [ma_tuasach], [ngonngu], [bia], [trangthai]) VALUES (19, 1, N'Vi?t           ', N'Bìa c?ng       ', N'Y')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (1, N'Last of the Mochicans', N'James Fenimore Cooper', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (2, N'The Night-Bom', N'Jack London', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (3, N'Lemon', N'Motojirou', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (4, N'Walking', N'Henry David Thoreau', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (5, N'Án mây dĩ vãng', N'Chu Lai', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (6, N'Đất rừng Phương Nam', N'Đoàn Giới', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (7, N'Nơi bất hạnh tình yêu', N'Hoàng Lai Giang', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (8, N'Cơn Giông', N'Lê Văn Thảo', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (9, N'Den vo, do long', N'Mai Thanh Hải', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (10, N'Thuyền về bến ngủ', N'Mọng Bình Sơn', N'Tóm t?t')
INSERT [dbo].[tuasach] ([ma_tuasach], [tuasach], [tacgia], [tomtat]) VALUES (11, N'Công tử Bạc Liêu', N'Nguyễn Hùng', N'Tóm t?t')
ALTER TABLE [dbo].[cuonsach]  WITH CHECK ADD  CONSTRAINT [fk_cuonsach_isbn] FOREIGN KEY([isbn])
REFERENCES [dbo].[dausach] ([isbn])
GO
ALTER TABLE [dbo].[cuonsach] CHECK CONSTRAINT [fk_cuonsach_isbn]
GO
ALTER TABLE [dbo].[DangKy]  WITH CHECK ADD  CONSTRAINT [fk_DangKy_isbn] FOREIGN KEY([isbn])
REFERENCES [dbo].[dausach] ([isbn])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [fk_DangKy_isbn]
GO
ALTER TABLE [dbo].[DangKy]  WITH CHECK ADD  CONSTRAINT [fk_DangKy_ma_DocGia] FOREIGN KEY([ma_DocGia])
REFERENCES [dbo].[DocGia] ([ma_DocGia])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [fk_DangKy_ma_DocGia]
GO
ALTER TABLE [dbo].[dausach]  WITH CHECK ADD  CONSTRAINT [fk_dausach_ma_tuasach] FOREIGN KEY([ma_tuasach])
REFERENCES [dbo].[tuasach] ([ma_tuasach])
GO
ALTER TABLE [dbo].[dausach] CHECK CONSTRAINT [fk_dausach_ma_tuasach]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [fk_DocGia_ma_DocGia] FOREIGN KEY([ma_DocGia])
REFERENCES [dbo].[treem] ([ma_DocGia])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [fk_DocGia_ma_DocGia]
GO
ALTER TABLE [dbo].[DocGia]  WITH CHECK ADD  CONSTRAINT [fk_DocGia_maDocGia] FOREIGN KEY([ma_DocGia])
REFERENCES [dbo].[nguoilon] ([ma_DocGia])
GO
ALTER TABLE [dbo].[DocGia] CHECK CONSTRAINT [fk_DocGia_maDocGia]
GO
ALTER TABLE [dbo].[muon]  WITH CHECK ADD  CONSTRAINT [fk_muon_isbn_ma_cuonsach] FOREIGN KEY([isbn], [ma_cuonsach])
REFERENCES [dbo].[cuonsach] ([isbn], [ma_cuonsach])
GO
ALTER TABLE [dbo].[muon] CHECK CONSTRAINT [fk_muon_isbn_ma_cuonsach]
GO
ALTER TABLE [dbo].[muon]  WITH CHECK ADD  CONSTRAINT [fk_muon_ma_DocGia] FOREIGN KEY([ma_DocGia])
REFERENCES [dbo].[DocGia] ([ma_DocGia])
GO
ALTER TABLE [dbo].[muon] CHECK CONSTRAINT [fk_muon_ma_DocGia]
GO
ALTER TABLE [dbo].[qtrinhmuon]  WITH CHECK ADD  CONSTRAINT [fk_qtrinhmuon_ma_DocGia] FOREIGN KEY([ma_DocGia])
REFERENCES [dbo].[DocGia] ([ma_DocGia])
GO
ALTER TABLE [dbo].[qtrinhmuon] CHECK CONSTRAINT [fk_qtrinhmuon_ma_DocGia]
GO
ALTER TABLE [dbo].[treem]  WITH CHECK ADD  CONSTRAINT [fk_treem_ma_DocGia_nguoilon] FOREIGN KEY([ma_DocGia_nguoilon])
REFERENCES [dbo].[nguoilon] ([ma_DocGia])
GO
ALTER TABLE [dbo].[treem] CHECK CONSTRAINT [fk_treem_ma_DocGia_nguoilon]
GO
USE [master]
GO
ALTER DATABASE [QuanLy_ThuVien] SET  READ_WRITE 
GO
