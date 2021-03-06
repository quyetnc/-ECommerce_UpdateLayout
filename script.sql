/****** Object:  Database [THUONGMAIDIENTU]    Script Date: 10/9/2019 1:14:03 PM ******/


ALTER DATABASE [THUONGMAIDIENTU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET ARITHABORT OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET  DISABLE_BROKER 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET  MULTI_USER 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [THUONGMAIDIENTU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [THUONGMAIDIENTU] SET DELAYED_DURABILITY = DISABLED 
GO
/****** Object:  UserDefinedFunction [dbo].[func_CryptData]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func_CryptData] (@Data varchar(100))
returns varchar(256)
as
begin
return convert(varchar(256),HASHBYTES('SHA2_256',@Data),2)
end
GO
/****** Object:  Table [dbo].[CATEGORY_NEWS]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORY_NEWS](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[CategoryIcon] [varchar](40) NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK__CATEGORY__CBD74706761EAD65] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEGORY_PRODUCT]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORY_PRODUCT](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](40) NOT NULL,
	[CategoryIcon] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMMENT_PRODUCT]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT_PRODUCT](
	[IdComment] [int] IDENTITY(1,1) NOT NULL,
	[CommentContent] [nvarchar](255) NULL,
	[IdProduct] [int] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[CommentStatus] [bit] NULL,
	[IdUser] [int] NOT NULL,
	[CommentDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdComment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[IdCustomer] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](40) NULL,
	[CustomerAddress] [nvarchar](50) NULL,
	[CustomerPhone] [varchar](10) NULL,
	[CustomerEmail] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIFTCODE]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIFTCODE](
	[IdCode] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Discount] [float] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INFO]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INFO](
	[IdInfo] [int] IDENTITY(1,1) NOT NULL,
	[InfoName] [nvarchar](255) NOT NULL,
	[InfoCategory] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NEWS]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NEWS](
	[IdNews] [int] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [nvarchar](255) NOT NULL,
	[NewsSumary] [nvarchar](255) NOT NULL,
	[NewsDetail] [ntext] NULL,
	[NewsThumbail] [varchar](255) NULL,
	[IdCategory] [int] NOT NULL,
	[IdUser] [int] NULL,
	[DateCreate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[IdOrder] [int] IDENTITY(1,1) NOT NULL,
	[IdCode] [int] NULL,
	[IdCustomer] [int] NOT NULL,
	[IdUser] [int] NULL,
	[DateOrder] [datetime] NULL,
	[DateDelivery] [smalldatetime] NULL,
	[TimeDelivery] [timestamp] NULL,
	[Total] [float] NULL,
	[OrderComment] [nvarchar](500) NULL,
	[IdPayment] [int] NOT NULL,
	[IdStatus] [int] NOT NULL,
 CONSTRAINT [PK__ORDER__C38F3009D09952D0] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ORDER_HISTORY]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_HISTORY](
	[IdHistory] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[Comment] [nvarchar](500) NULL,
	[DateHistory] [datetime] NULL,
	[IdStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHistory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PAYMENT_METHOD]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_METHOD](
	[IdPayment] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PAYMENT_STATUS]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_STATUS](
	[IdStatus] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[ProductSumary] [nvarchar](255) NULL,
	[ProductDetail] [ntext] NULL,
	[ProductPrice] [float] NOT NULL,
	[IdCategory] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT_IMG]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_IMG](
	[IdImg] [int] IDENTITY(1,1) NOT NULL,
	[Filename] [varchar](255) NOT NULL,
	[ImgAlt] [nvarchar](255) NULL,
	[IdProduct] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdImg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_INFO]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_INFO](
	[IdProduct] [int] NOT NULL,
	[IdInfo] [int] NOT NULL,
	[Info] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC,
	[IdInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCT_ORDER]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT_ORDER](
	[IdProduct] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[Count] [tinyint] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[IMEI] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC,
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCT_PROMOTION]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_PROMOTION](
	[IdProduct] [int] NOT NULL,
	[IdPromotion] [int] NOT NULL,
	[Discount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC,
	[IdPromotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROMOTION]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOTION](
	[IdPromotion] [int] IDENTITY(1,1) NOT NULL,
	[PromotionName] [nvarchar](255) NULL,
	[PromotionStart] [datetime] NULL,
	[PromotionEnd] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPromotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[REVIEW_PRODUCT]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REVIEW_PRODUCT](
	[IdReview] [int] IDENTITY(1,1) NOT NULL,
	[ReviewContent] [nvarchar](255) NULL,
	[ReviewPoint] [tinyint] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdCustomer] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[ReviewStatus] [bit] NOT NULL,
	[ReviewDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReview] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USER]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Fullname] [nvarchar](40) NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK__USER__B7C9263818D79CCD] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORY_NEWS] ON 

INSERT [dbo].[CATEGORY_NEWS] ([IdCategory], [CategoryName], [CategoryIcon], [IdUser]) VALUES (4, N'Điện thoại', N'fas fa-mobile-alt', 3)
INSERT [dbo].[CATEGORY_NEWS] ([IdCategory], [CategoryName], [CategoryIcon], [IdUser]) VALUES (6, N'Mẹo vặt', N'fas fa-lightbulb', 3)
SET IDENTITY_INSERT [dbo].[CATEGORY_NEWS] OFF
SET IDENTITY_INSERT [dbo].[CATEGORY_PRODUCT] ON 

INSERT [dbo].[CATEGORY_PRODUCT] ([IdCategory], [CategoryName], [CategoryIcon]) VALUES (2, N'Apple', N'fab fa-apple')
INSERT [dbo].[CATEGORY_PRODUCT] ([IdCategory], [CategoryName], [CategoryIcon]) VALUES (3, N'Surface', N'fab fa-microsoft')
INSERT [dbo].[CATEGORY_PRODUCT] ([IdCategory], [CategoryName], [CategoryIcon]) VALUES (4, N'Samsung', N'fab fa-android')
INSERT [dbo].[CATEGORY_PRODUCT] ([IdCategory], [CategoryName], [CategoryIcon]) VALUES (5, N'Bphone', N'fas fa-mobile-alt')
SET IDENTITY_INSERT [dbo].[CATEGORY_PRODUCT] OFF
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([IdCustomer], [CustomerName], [CustomerAddress], [CustomerPhone], [CustomerEmail]) VALUES (1, N'Phạm Ngọc Vinh', N'336 Nguyễn Văn Luông P12 Q6 Tp. HCM', N'0707743501', N'vinhphamdhsp@live.com')
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
SET IDENTITY_INSERT [dbo].[INFO] ON 

INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (1, N'Dung lượng', N'PIN')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (2, N'Công nghệ', N'PIN')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (3, N'Độ phân giải', N'MÀN HÌNH')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (4, N'Công nghệ', N'MÀN HÌNH')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (5, N'ROM', N'BỘ NHỚ')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (6, N'RAM', N'BỘ NHỚ')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (7, N'Thẻ nhớ', N'BỘ NHỚ')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (8, N'Tỉ lệ', N'MÀN HÌNH')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (9, N'Hệ điều hành', N'OS - CPU')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (10, N'CPU', N'OS - CPU')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (11, N'GPU', N'OS - CPU')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (12, N'Camera trước', N'CAMERA')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (13, N'Camera sau', N'CAMERA')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (14, N'Chống rung', N'CAMERA')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (15, N'Chống nước', N'TÍNH NĂNG')
INSERT [dbo].[INFO] ([IdInfo], [InfoName], [InfoCategory]) VALUES (16, N'Bảo mật', N'TÍNH NĂNG')
SET IDENTITY_INSERT [dbo].[INFO] OFF
SET IDENTITY_INSERT [dbo].[NEWS] ON 

INSERT [dbo].[NEWS] ([IdNews], [NewsTitle], [NewsSumary], [NewsDetail], [NewsThumbail], [IdCategory], [IdUser], [DateCreate]) VALUES (12, N'Bphone 4, Bphone 4 Lite, Bphone 4 Pro lộ cấu hình và ảnh concept', N'4', N'<p>&nbsp;</p>

<p>5</p>
', N'bphone-4,-bphone-4-lite,-bphone-4-pro-lo-cau-hinh-va-anh-concept.png', 6, 3, CAST(N'2019-10-07 12:43:58.123' AS DateTime))
SET IDENTITY_INSERT [dbo].[NEWS] OFF
SET IDENTITY_INSERT [dbo].[ORDER] ON 

INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (1, NULL, 1, NULL, CAST(N'2019-10-06 20:14:24.920' AS DateTime), CAST(N'2019-10-06 20:14:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (2, NULL, 1, NULL, CAST(N'2019-10-06 20:15:50.467' AS DateTime), CAST(N'2019-10-06 20:16:00' AS SmallDateTime), 6990000, NULL, 1, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (3, NULL, 1, NULL, CAST(N'2019-10-06 20:15:57.773' AS DateTime), CAST(N'2019-10-06 20:16:00' AS SmallDateTime), 6990000, NULL, 1, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (4, NULL, 1, NULL, CAST(N'2019-10-06 20:40:26.227' AS DateTime), CAST(N'2019-10-06 20:40:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (5, NULL, 1, NULL, CAST(N'2019-10-06 20:40:29.950' AS DateTime), CAST(N'2019-10-06 20:40:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (6, NULL, 1, NULL, CAST(N'2019-10-06 20:41:33.860' AS DateTime), CAST(N'2019-10-06 20:42:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (7, NULL, 1, NULL, CAST(N'2019-10-06 20:41:39.517' AS DateTime), CAST(N'2019-10-06 20:42:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (8, NULL, 1, NULL, CAST(N'2019-10-06 20:41:44.817' AS DateTime), CAST(N'2019-10-06 20:42:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (9, NULL, 1, NULL, CAST(N'2019-10-06 20:41:47.790' AS DateTime), CAST(N'2019-10-06 20:42:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (10, NULL, 1, NULL, CAST(N'2019-10-06 20:43:04.240' AS DateTime), CAST(N'2019-10-06 20:43:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (11, NULL, 1, NULL, CAST(N'2019-10-06 20:43:21.323' AS DateTime), CAST(N'2019-10-06 20:43:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (12, NULL, 1, NULL, CAST(N'2019-10-06 20:44:09.677' AS DateTime), CAST(N'2019-10-06 20:44:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (13, NULL, 1, NULL, CAST(N'2019-10-06 20:45:48.690' AS DateTime), CAST(N'2019-10-06 20:46:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (14, NULL, 1, NULL, CAST(N'2019-10-06 20:46:09.547' AS DateTime), CAST(N'2019-10-06 20:46:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (15, NULL, 1, NULL, CAST(N'2019-10-06 20:48:08.467' AS DateTime), CAST(N'2019-10-06 20:48:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (16, NULL, 1, NULL, CAST(N'2019-10-06 20:48:12.620' AS DateTime), CAST(N'2019-10-06 20:48:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (17, NULL, 1, NULL, CAST(N'2019-10-06 20:48:23.783' AS DateTime), CAST(N'2019-10-06 20:48:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (18, NULL, 1, NULL, CAST(N'2019-10-06 20:49:39.547' AS DateTime), CAST(N'2019-10-06 20:50:00' AS SmallDateTime), 6990000, NULL, 2, 5)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (19, NULL, 1, NULL, CAST(N'2019-10-06 20:50:33.227' AS DateTime), CAST(N'2019-10-06 20:51:00' AS SmallDateTime), 6990000, NULL, 2, 1)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (20, NULL, 1, NULL, CAST(N'2019-10-06 20:52:12.737' AS DateTime), CAST(N'2019-10-06 20:52:00' AS SmallDateTime), 6990000, NULL, 2, 4)
INSERT [dbo].[ORDER] ([IdOrder], [IdCode], [IdCustomer], [IdUser], [DateOrder], [DateDelivery], [Total], [OrderComment], [IdPayment], [IdStatus]) VALUES (21, NULL, 1, NULL, CAST(N'2019-10-06 21:09:53.300' AS DateTime), CAST(N'2019-10-06 21:10:00' AS SmallDateTime), 5900000, NULL, 2, 3)
SET IDENTITY_INSERT [dbo].[ORDER] OFF
SET IDENTITY_INSERT [dbo].[ORDER_HISTORY] ON 

INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (1, 3, 20, NULL, NULL, 3)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (2, 3, 20, NULL, NULL, 4)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (3, 3, 1, NULL, CAST(N'2019-10-06 21:10:34.537' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (4, 3, 2, NULL, CAST(N'2019-10-06 21:10:37.130' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (5, 3, 3, NULL, CAST(N'2019-10-06 21:10:38.503' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (6, 3, 4, NULL, CAST(N'2019-10-06 21:10:39.743' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (7, 3, 5, NULL, CAST(N'2019-10-06 21:10:40.863' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (8, 3, 6, NULL, CAST(N'2019-10-06 21:10:41.957' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (9, 3, 7, NULL, CAST(N'2019-10-06 21:10:43.050' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (10, 3, 8, NULL, CAST(N'2019-10-06 21:10:45.083' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (11, 3, 9, NULL, CAST(N'2019-10-06 21:10:46.360' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (12, 3, 10, NULL, CAST(N'2019-10-06 21:10:47.550' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (13, 3, 11, NULL, CAST(N'2019-10-06 21:10:48.867' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (14, 3, 12, NULL, CAST(N'2019-10-06 21:10:50.133' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (15, 3, 13, NULL, CAST(N'2019-10-06 21:10:51.373' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (16, 3, 14, NULL, CAST(N'2019-10-06 21:10:52.520' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (17, 3, 15, NULL, CAST(N'2019-10-06 21:10:54.287' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (18, 3, 16, NULL, CAST(N'2019-10-06 21:10:55.620' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (19, 3, 17, NULL, CAST(N'2019-10-06 21:10:56.887' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (20, 3, 18, NULL, CAST(N'2019-10-06 21:10:58.073' AS DateTime), 5)
INSERT [dbo].[ORDER_HISTORY] ([IdHistory], [IdUser], [IdOrder], [Comment], [DateHistory], [IdStatus]) VALUES (21, 3, 21, NULL, CAST(N'2019-10-06 21:11:18.443' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[ORDER_HISTORY] OFF
SET IDENTITY_INSERT [dbo].[PAYMENT_METHOD] ON 

INSERT [dbo].[PAYMENT_METHOD] ([IdPayment], [PaymentName]) VALUES (1, N'COD')
INSERT [dbo].[PAYMENT_METHOD] ([IdPayment], [PaymentName]) VALUES (2, N'Internet banking')
SET IDENTITY_INSERT [dbo].[PAYMENT_METHOD] OFF
SET IDENTITY_INSERT [dbo].[PAYMENT_STATUS] ON 

INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (1, N'Đặt hàng')
INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (2, N'Đã thanh toán')
INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (3, N'Đang giao')
INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (4, N'Hoàn thành')
INSERT [dbo].[PAYMENT_STATUS] ([IdStatus], [StatusName]) VALUES (5, N'Từ chối')
SET IDENTITY_INSERT [dbo].[PAYMENT_STATUS] OFF
SET IDENTITY_INSERT [dbo].[PRODUCT] ON 

INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (1, N'Điện thoại iPhone X', N'iPhone X là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.', N'<h3>Thiết kế mang t&iacute;nh đột ph&aacute;</h3>

<p>Như c&aacute;c bạn cũng đ&atilde; biết th&igrave; đ&atilde; 4 năm kể từ chiếc&nbsp;<a href="https://www.thegioididong.com/dtdd" target="_blank">điện thoại</a>&nbsp;iPhone 6 v&agrave; iPhone 6 Plus th&igrave; Apple&nbsp;vẫn chưa c&oacute; thay đổi n&agrave;o đ&aacute;ng kể trong thiết kế của m&igrave;nh.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb1.jpg" onclick="return false;"><img alt="Thiết kế đột phá của điện thoại iPhone X" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb1.jpg" /></a></p>

<p>Nhưng với iPhone X th&igrave; đ&oacute; lại l&agrave; 1 c&acirc;u chuyện ho&agrave;n to&agrave;n kh&aacute;c, m&aacute;y chuyển qua sử dụng m&agrave;n h&igrave;nh tỉ lệ 19.5:9 mới mẻ với phần diện t&iacute;ch hiển thị mặt trước cực lớn.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb2.jpg" onclick="return false;"><img alt="Thiết kế đột phá của điện thoại iPhone X" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb2.jpg" /></a></p>

<p>Mặt lưng k&iacute;nh hỗ trợ sạc nhanh kh&ocirc;ng d&acirc;y cũng như phần camera k&eacute;p đặt dọc cũng l&agrave; những thứ đầu ti&ecirc;n xuất hiện tr&ecirc;n 1 chiếc iPhone.</p>

<h3>M&agrave;n h&igrave;nh với tai thỏ</h3>

<p>Điểm khiến iPhone X bị ch&ecirc; nhiều nhất đ&oacute; ch&iacute;nh l&agrave; phần &quot;tai thỏ&quot; ph&iacute;a tr&ecirc;n m&agrave;n h&igrave;nh, Apple đ&atilde; chấp nhận điều n&agrave;y để đặt cụm camera&nbsp;TrueDepth mới của h&atilde;ng.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb15.jpg" onclick="return false;"><img alt="Màn hình tai thỏ của điện thoại iPhone X" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb15.jpg" /></a></p>

<p>M&agrave;n h&igrave;nh k&iacute;ch thước 5.8 inch độ ph&acirc;n giải&nbsp;1125 x 2436 pixels đem đến khả năng hiển thị xuất sắc.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb20.jpg" onclick="return false;"><img alt="Màn hình tai thỏ của điện thoại iPhone X" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb20.jpg" /></a></p>

<p>iPhone X sử dụng tấm nền&nbsp;<a href="https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762" target="_blank">OLED</a>&nbsp;(được tinh chỉnh bởi Apple) thay v&igrave; LCD như những chiếc iPhone trước đ&acirc;y v&agrave; điều n&agrave;y đem lại cho m&aacute;y 1 m&agrave;u đen thể hiện rất s&acirc;u c&ugrave;ng khả năng t&aacute;i tạo m&agrave;u sắc kh&ocirc;ng k&eacute;m phần ch&iacute;nh x&aacute;c.</p>

<h3>Face ID tạo n&ecirc;n đột ph&aacute;</h3>

<p>Touch ID tr&ecirc;n iPhone X đ&atilde; bị loại bỏ, thay v&agrave;o đ&oacute; l&agrave; bạn sẽ chuyển qua sử dụng Face ID, một phương thức bảo mật sinh trắc học mới của Apple.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb7.jpg" onclick="return false;"><img alt="Face ID tạo nên đột phá trên điện thoại iPhone X" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb7.jpg" /></a></p>

<p>Với sự trợ gi&uacute;p của cụm&nbsp;camera&nbsp;TrueDept th&igrave; iPhone X c&oacute; khả năng nhận diện khu&ocirc;n mặt 3D của người d&ugrave;ng từ đ&oacute; mở kh&oacute;a chiếc iPhone một c&aacute;ch nhanh ch&oacute;ng.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb11.jpg" onclick="return false;"><img alt="Face ID tạo nên đột phá trên điện thoại iPhone X" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb11.jpg" /></a></p>

<p>Tuy sẽ hơi hụt hẫng khi Touch ID đ&atilde; qu&aacute; quen thuộc tr&ecirc;n những chiếc iPhone như tốc độ cũng như trải nghiệm &quot;kh&oacute;a như kh&ocirc;ng kh&oacute;a&quot; của Face ID ho&agrave;n to&agrave;n c&oacute; thể khiến bạn y&ecirc;n t&acirc;m sử dụng.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb10.jpg" onclick="return false;"><img alt="Điện thoại iPhone X tích hợp Face ID" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb10.jpg" /></a></p>

<h3>Thao t&aacute;c vuốt v&agrave; vuốt</h3>

<p>Kh&ocirc;ng c&ograve;n ph&iacute;m Home cứng n&ecirc;n c&aacute;c thao t&aacute;c tr&ecirc;n iPhone X cũng ho&agrave;n to&agrave;n kh&aacute;c so với những đ&agrave;n anh đi trước.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb3.jpg" onclick="return false;"><img alt="Thao tác vuốt và vuốt trên điện thoại iPhone X" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb3.jpg" /></a></p>

<p>Giờ đ&acirc;y chỉ với thao t&aacute;c vuốt v&agrave; vuốt từ cạnh dưới l&agrave; bạn đ&atilde; c&oacute; thể truy cập v&agrave;o đa nhiệm, trở về m&agrave;n h&igrave;nh Home một c&aacute;ch nhanh ch&oacute;ng.</p>

<h3>Camera k&eacute;p cải tiến t&iacute;ch hợp Animoji</h3>

<p>iPhone X vẫn sở hữu bộ đ&ocirc;i camera k&eacute;p c&oacute; c&ugrave;ng độ ph&acirc;n giải 12 MP nhưng camera tele thứ 2 với khẩu độ được n&acirc;ng l&ecirc;n mức f/2.4 so với f/2.8 của iPhone 7 Plus.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb19.jpg" onclick="return false;"><img alt="Điện thoại iPhone X tích hợp camera kép" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb19.jpg" /></a></p>

<p>Ngo&agrave;i ra th&igrave; cả 2 camera tr&ecirc;n iPhone X đều sở hữu cho m&igrave;nh khả năng chống rung quang học gi&uacute;p bạn dễ d&agrave;ng bắt trọn mọi khoảnh khắc trong cuộc sống.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb9.jpg" onclick="return false;"><img alt="Điện thoại iPhone X tích hợp camera kép" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb9.jpg" /></a></p>

<p>Camera trước độ ph&acirc;n giải 7 MP với khả năng selfie x&oacute;a ph&ocirc;ng đ&aacute;p ứng tốt mọi nhu cầu tự sướng của giới trẻ hiện nay.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb8.jpg" onclick="return false;"><img alt="Điện thoại iPhone X tích hợp camera kép" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb8.jpg" /></a></p>

<p>Bộ đ&ocirc;i camera tr&ecirc;n iPhone X được đ&aacute;nh gi&aacute; rất cao về chất lượng ảnh chụp v&agrave; l&agrave; một trong những chiếc camera phone chụp ảnh đẹp nhất trong năm 2017.</p>

<h3>Hiệu năng mạnh mẽ với Apple A11</h3>

<p>Hiệu năng của những chiếc iPhone chưa bao giờ l&agrave; vấn đề v&agrave; với iPhone X th&igrave; mọi thứ vẫn rất ấn tượng.</p>

<p>Con chip&nbsp;<a href="https://www.thegioididong.com/tin-tuc/chi-tiet-a11-bionic-chip-co-nhieu-thanh-phan-apple-tu-trong-nhat-tu-truoc-den-nay-1021653" target="_blank">Apple A11 Bionic 6 nh&acirc;n</a>&nbsp;kết hợp với 3 GB RAM th&igrave; iPhone X tự tin l&agrave; chiếc smartphone mạnh mẽ nhất m&agrave; Apple từng sản xuất.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb13.jpg" onclick="return false;"><img alt="Điện thoại iPhone X có hiệu năng mạnh mẽ" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb13.jpg" /></a></p>

<p>Ngo&agrave;i ra với iPhone X th&igrave; Apple cũng nhấn mạnh với trải nghiệm thực tế ảo tăng cường gi&uacute;p bạn c&oacute; những ph&uacute;t gi&acirc;y thư gi&atilde;n th&uacute; vị.</p>

<p><a href="https://www.thegioididong.com/images/42/114115/iphone-x-64gb17.jpg" onclick="return false;"><img alt="Điện thoại iPhone X có hiệu năng mạnh mẽ" src="https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb17.jpg" /></a></p>

<p>Vi&ecirc;n pin tr&ecirc;n iPhone X c&oacute; dung lượng&nbsp;2716 mAh (lớn hơn cả tr&ecirc;n&nbsp;<a href="https://www.thegioididong.com/dtdd/iphone-8-plus" target="_blank">iPhone 8 Plus</a>) cho bạn sử dụng kh&aacute; ổn trong khoảng một ng&agrave;y li&ecirc;n tục.</p>
', 5900000, 2, 3)
INSERT [dbo].[PRODUCT] ([IdProduct], [ProductName], [ProductSumary], [ProductDetail], [ProductPrice], [IdCategory], [IdUser]) VALUES (2, N'Bkav Bphone 2015', N'Bphone hỗ trợ bộ nhớ trong ba phiên bản 16/64/128GB cho nhiều sự lựa chọn, máy không hỗ trợ thẻ nhớ ngoài, có thể điều này sẽ khiến nhiều người dùng không thích điều này.', N'<p><strong>Sau nhiều lần r&ograve; rỉ h&igrave;nh ảnh thực tế của m&aacute;y, cuối c&ugrave;ng BKAV cũng đ&atilde; c&oacute; buổi ra mắt Bphone, chiếc điện thoại được rất nhiều người mong chờ, với c&aacute;c th&ocirc;ng số kỹ thuật mạnh mẽ, Bphone hi vọng sẽ mang lại sự trải nghiệm tốt nhất cho người d&ugrave;ng về một chiếc điện thoại Made in Viet Nam đầy ấn tượng.</strong></p>

<p><strong>Cấu h&igrave;nh si&ecirc;u ấn tượng&nbsp;&nbsp;&nbsp;</strong></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-1-12.jpg" onclick="return false;"><img alt="Bphone sở hữu màn hình Sharp 5 inch, độ phân giải màn hình Full HD, 441 PPI, bộ nhớ trong cực kì ấn tượng Flash eMMC 5.0 của nhà sản xuất Toshiba, Ram Sky Hynix 3GB LPDDR3." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-1-12.jpg" /></a></p>

<p><em>Bphone sở hữu m&agrave;n h&igrave;nh Sharp 5 inch, độ ph&acirc;n giải m&agrave;n h&igrave;nh&nbsp;<a href="https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd" target="_blank">Full HD</a>, 441 PPI, bộ nhớ trong cực k&igrave; ấn tượng Flash eMMC 5.0 của nh&agrave; sản xuất Toshiba, Ram Sky Hynix 3GB LPDDR3.</em></p>

<p>Bphone hỗ trợ bộ nhớ trong ba phi&ecirc;n bản 16/64/128GB cho nhiều sự lựa chọn, m&aacute;y kh&ocirc;ng hỗ trợ&nbsp;<a href="https://www.thegioididong.com/the-nho-dien-thoai" target="_blank">thẻ nhớ</a>&nbsp;ngo&agrave;i, c&oacute; thể điều n&agrave;y sẽ khiến nhiều người d&ugrave;ng kh&ocirc;ng th&iacute;ch điều n&agrave;y.</p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-2-1.jpg" onclick="return false;"><img alt="Không như nhiều người dự đoán, Bphone sở hữu chip xử lý Qualcomm Snapdragon 801 không phải 810, thế nhưng đây được xem là một sự tích hợp cực kỳ mạnh mẽ cho một chiếc điện thoại sản xuất tại Việt Nam." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-2-1.jpg" /></a></p>

<p><em>Bphone sở hữu chip xử l&yacute; Qualcomm Snapdragon 801</em></p>

<p>Kh&ocirc;ng như nhiều người dự đo&aacute;n, Bphone sở hữu chip xử l&yacute; Qualcomm&nbsp;<a href="https://www.thegioididong.com/tin-tuc/vi-xu-ly-di-dong-snapdragon-410-610-801-805-808-81-599368#snapdragon801" target="_blank">Snapdragon 801</a>&nbsp;kh&ocirc;ng phải&nbsp;<a href="https://www.thegioididong.com/tin-tuc/vi-xu-ly-di-dong-snapdragon-410-610-801-805-808-81-599368#snapdragon810" target="_blank">810</a>,&nbsp;tuy nhi&ecirc;n việc k&iacute; kết hợp t&aacute;c với nh&agrave; sản xuất Qualcomm để sản xuất th&igrave; đ&acirc;y được xem l&agrave; một sự t&iacute;ch hợp cực kỳ mạnh mẽ cho một chiếc điện thoại sản xuất tại Việt Nam.</p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-9-2.jpg" onclick="return false;"><img alt="bkav-bphone" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-9-2.jpg" /></a></p>

<p><em>Bphone cho chất lượng hiển thị rất tốt.</em></p>

<p>Bphone cho chất lượng hiển thị rất tốt, m&agrave;n h&igrave;nh được trang bị từ nh&agrave; sản xuất Sharp, cho chất lượng độ ph&acirc;n giải Full HD, c&aacute;c chi tiết hiển thị sẽ r&otilde; r&agrave;ng v&agrave; sắc n&eacute;t, tạo được sự th&iacute;ch mắt cho người d&ugrave;ng.</p>

<p><strong>Thiết kế</strong></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-10-2.jpg" onclick="return false;"><img alt="bkav-bphone" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-10-2.jpg" /></a></p>

<p>Thiết kế nguy&ecirc;n khối nh&igrave;n chắc chắn, đơn giản</p>

<p>Sau nhiều lần tung h&igrave;nh ảnh về thiết bị, th&igrave; đ&acirc;y l&agrave; h&igrave;nh ảnh ch&acirc;n thật nhất về m&aacute;y. Thiết kế nguy&ecirc;n khối, đơn giản tinh tế, mặt trước của m&aacute;y trang bị k&iacute;nh cường lực Gorilla Glass thế hệ thứ 3, tạo được rất nhiều sự an t&acirc;m trong sử dụng cho người d&ugrave;ng.&nbsp;Diện t&iacute;ch m&agrave;n h&igrave;nh l&ecirc;n tới 72% diện t&iacute;ch bề mặt, thuộc 1 trong số c&aacute;c smartphone c&oacute; tỉ lệ m&agrave;n h&igrave;nh tối ưu nhất thế giới.</p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-2-2.jpg" onclick="return false;"><img alt="Mặt sau phủ một lớp bóng nhìn sang trọng và bắt mắt, nhưng dễ lưu lại dấu vân tay trong quá trình sử dụng." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-2-2.jpg" /></a></p>

<p><em>Ph&iacute;a sau l&agrave; mặt gương Gorilla Glass 3 nh&igrave;n sang trọng v&agrave; bắt mắt, nhưng dễ lưu lại dấu v&acirc;n tay trong qu&aacute; tr&igrave;nh sử dụng</em></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-3-2.jpg" onclick="return false;"><img alt="Cạnh trái máy là khe cắm sim và phím nguồn." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-3-2.jpg" /></a></p>

<p><em>Cạnh tr&aacute;i m&aacute;y l&agrave; khe cắm sim v&agrave; ph&iacute;m nguồn</em></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-4-2.jpg" onclick="return false;"><img alt="Cạnh phải máy là phím tăng giảm âm lượng." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-4-2.jpg" /></a></p>

<p><em>Cạnh phải m&aacute;y l&agrave; ph&iacute;m tăng giảm &acirc;m lượng</em></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-5-2.jpg" onclick="return false;"><img alt="Cạnh trên máy là jack cắm tai nghe chuẩn 3.5mm và 1 mic" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-5-2.jpg" /></a></p>

<p><em>Cạnh tr&ecirc;n m&aacute;y l&agrave; jack cắm tai nghe chuẩn 3.5mm v&agrave; 1 mic</em></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-6-2.jpg" onclick="return false;"><img alt="Cạnh dưới là jack sạc micro USB và 2 dải loa đặt đồng đều 2 bên" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-6-2.jpg" /></a></p>

<p><em>Cạnh dưới l&agrave; jack sạc micro USB v&agrave; 2 dải loa đặt đồng đều 2 b&ecirc;n</em></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-5-1.jpg" onclick="return false;"><img alt="Bphone được bảo hộ bản quyền thiết kế, “nó là dành cho các bạn, dành cho người Việt Nam”" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-5-1.jpg" /></a></p>

<p>Bphone được bảo hộ bản quyền thiết kế, &ldquo;n&oacute; l&agrave; d&agrave;nh cho c&aacute;c bạn, d&agrave;nh cho người Việt Nam&rdquo;</p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-7-2.jpg" onclick="return false;"><img alt="Cạnh dưới là jack sạc micro USB và 2 dải loa đặt đồng đều 2 bên" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-7-2.jpg" /></a></p>

<p><em>Bphone sử dụng&nbsp;<a href="https://www.thegioididong.com/hoi-dap/he-dieu-hanh-bos-cua-bkav-bphone-co-gi-647325" target="_blank">hệ điều h&agrave;nh BOS</a>&nbsp; được t&ugrave;y biến lại từ Android 5.1</em></p>

<p><strong>Camera ấn tượng với nhiều t&ugrave;y chỉnh</strong></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-7-1.jpg" onclick="return false;"><img alt="Camera F2.2, ống kính sau được bảo vệ bằng kính Saphia, trên thế giới mới chỉ có hai mẫu. 5 lớp thấu kình." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-7-1.jpg" /></a></p>

<p><em>Camera trước c&oacute; độ ph&acirc;n giải 13MP</em></p>

<p>Camera F2.2, ống k&iacute;nh sau được bảo vệ bằng k&iacute;nh Saphia, tr&ecirc;n thế giới mới chỉ c&oacute; hai mẫu sử dụng lớp bảo vệ n&agrave;y, 5 lớp thấu k&iacute;nh, c&oacute; thể thấy BKAV mang lại rất nhiều sự trải nghiệm mang t&iacute;nh chuy&ecirc;n nghiệp tr&ecirc;n chiếc điện thoại họ. Cho ph&eacute;p người d&ugrave;ng quay phim FullHD chất lượng cao.</p>

<p><em><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-8-1.jpg" onclick="return false;"><img alt="Có rất nhiều chế độ hỗ trợ người dùng trong việc chụp hình. Chế độ Slow Motion cho phép quay HD." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-8-1.jpg" /></a></em></p>

<p><em>C&oacute; rất nhiều chế độ hỗ trợ người d&ugrave;ng trong việc chụp h&igrave;nh. Chế độ Slow Motion cho ph&eacute;p quay HD.</em></p>

<p><em><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-9-1.jpg" onclick="return false;"><img alt="Cân bằng sáng tối thông minh" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-9-1.jpg" /></a></em></p>

<p><em>C&acirc;n bằng s&aacute;ng tối th&ocirc;ng minh</em></p>

<p><em><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-10-1.jpg" onclick="return false;"><img alt="Ấn tượng với 5 vùng lấy nét trên camera (Ubi Focus)" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-10-1.jpg" /></a></em></p>

<p><em>Ấn tượng với 5 v&ugrave;ng lấy n&eacute;t tr&ecirc;n camera (Ubi Focus)</em></p>

<p><strong>Chất lượng &acirc;m thanh như đĩa than&nbsp;</strong></p>

<p><strong>Bphone</strong>&nbsp;l&agrave; 1 trong 3 smartphone đầu ti&ecirc;n tr&ecirc;n thế giới hỗ trợ chơi c&aacute;c file nhạc chất lượng cao 24bit-192KHz với đ&uacute;ng độ ph&acirc;n giải, l&agrave;m h&agrave;i l&ograve;ng cả những người s&agrave;nh nhạc với y&ecirc;u cầu khắt khe nhất.</p>

<p><em><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-11-1.jpg" onclick="return false;"><img alt="Bphone cho chất lượng âm thanh gần giống với đĩa than, một sự chắc chắn từ nhà sản xuất đem đến sự an tâm hơn cho người dùng." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-11-1.jpg" /></a></em></p>

<p><em>Bphone cho chất lượng &acirc;m thanh gần giống với đĩa than, một sự chắc chắn từ nh&agrave; sản xuất đem đến sự an t&acirc;m hơn cho người d&ugrave;ng.</em></p>

<p><em><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-12-1.jpg" onclick="return false;"><img alt="Mang đến cho người dùng sự trải nghiệm nghe nhạc mới mẻ và đỉnh cao." src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-12-1.jpg" /></a></em></p>

<p><em>Mang đến cho người d&ugrave;ng sự trải nghiệm nghe nhạc mới mẻ v&agrave; đỉnh cao.</em></p>

<p><strong>C&ocirc;ng nghệ truyền dữ liệu độc đ&aacute;o</strong></p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-13-1.jpg" onclick="return false;"><img alt="Truyền tải dữ liệu nhanh với tính năng riêng của Bphone" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-13-1.jpg" /></a></p>

<p>Với&nbsp;<a href="https://www.thegioididong.com/hoi-dap/transferjet-la-gi-647607" target="_blank">TranferJet</a>, chỉ cần chạm v&agrave; chưa đầy 30 gi&acirc;y để nhận một dữ liệu l&ecirc;n đến 1GB</p>

<p>M&aacute;y c&oacute; c&aacute;c kết nối th&ocirc;ng dụng như Wifi, Bluetooth, m&aacute;y t&iacute;nh, nhưng Bphone sẽ kh&ocirc;ng c&oacute; NFC, với TransferJet, cho ph&eacute;p truyền dữ liệu si&ecirc;u nhanh, nhanh hơn 472 lần so với NFC v&agrave; 8 lần so với Bluetooth 4.0&nbsp;</p>

<p><strong>Ba mức gi&aacute; kh&aacute;c nhau cho ba phi&ecirc;n bản</strong></p>

<p>Kh&aacute;c xa với nhiều dự đo&aacute;n về mức gi&aacute;, BKAV th&ocirc;ng b&aacute;o ba mức gi&aacute; kh&aacute;c nhau khiến người d&ugrave;ng v&ocirc; c&ugrave;ng sung sướng, mức gi&aacute; thấp nhất sẽ l&agrave; 9.990.000, v&agrave; mức gi&aacute; cao nhất cho phi&ecirc;n bản v&agrave;ng 24k 128GB l&agrave; 20.190.000.</p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-14-1.jpg" onclick="return false;"><img alt="Giá thấp nhất 9.990.000" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-14-1.jpg" /></a></p>

<p>Gi&aacute; thấp nhất 9.990.000</p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-15-1.jpg" onclick="return false;"><img alt="Phiên bản Trắng và Champagne 64GB 12.960.000" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-15-1.jpg" /></a></p>

<p>Phi&ecirc;n bản Trắng v&agrave; Champagne 64GB 12.960.000</p>

<p><a href="https://www.thegioididong.com/images/42/71916/bkav-bphone-16-1.jpg" onclick="return false;"><img alt="Phiên bản mắc nhất dành cho Vàng 24k 128GB 20.190.000" src="https://cdn.tgdd.vn/Products/Images/42/71916/bkav-bphone-16-1.jpg" /></a></p>

<p>Phi&ecirc;n bản mắc nhất d&agrave;nh cho V&agrave;ng 24k 128GB 20.190.000</p>

<p>C&oacute; thể thấy, BPhone mang trong m&igrave;nh thiết kế nguy&ecirc;n khối chắn chắn, đơn giản tinh tế, hỗ trợ nhiều c&ocirc;ng nghệ mới nhất tr&ecirc;n thế giới nhưng lại c&oacute; mức gi&aacute; dễ chịu hơn rất nhiều so với c&aacute;c sản phẩm của đối thủ, hứa hẹn sẽ mang lại nhiều sự trải nghiệm tối đa v&agrave; hỗ trợ tốt nhất cho người d&ugrave;ng.</p>
', 6990000, 5, 3)
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
SET IDENTITY_INSERT [dbo].[PRODUCT_IMG] ON 

INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (15, N'bkav-bphone-2015-1.png', N'Bkav Bphone 2015', 2)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (16, N'bkav-bphone-2015-2.png', N'Bkav Bphone 2015', 2)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (17, N'bkav-bphone-2015-3.png', N'Bkav Bphone 2015', 2)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (18, N'bkav-bphone-2015-4.png', N'Bkav Bphone 2015', 2)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (22, N'dien-thoai-iphone-x-1.png', N'Dien thoai iPhone X', 1)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (23, N'dien-thoai-iphone-x-2.png', N'Dien thoai iPhone X', 1)
INSERT [dbo].[PRODUCT_IMG] ([IdImg], [Filename], [ImgAlt], [IdProduct]) VALUES (24, N'dien-thoai-iphone-x-3.png', N'Dien thoai iPhone X', 1)
SET IDENTITY_INSERT [dbo].[PRODUCT_IMG] OFF
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 1, N'1000Mha')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 2, N'TFT')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 3, N'1024x768')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 4, N'Mù mắt')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 5, N'64 Gb')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 6, N'4 Gb')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 7, N'Không')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 8, N'16:9')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 9, N'Android')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 10, N'Helio')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 11, N'Holie')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 12, N'8 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 13, N'4 MP')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 14, N'Không')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 15, NULL)
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (1, 16, NULL)
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 1, N'3000 mAh')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 2, N'Pin Li-Po')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 3, N'Full HD (1080 x 1920 Pixels)')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 4, N'IPS LCD')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 5, N'32 Gb')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 6, N'6 Gb')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 7, N'Không')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 8, N'16:9')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 9, N'BOS')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 10, N'Snapdragon 801 4 nhân 32-bit')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 11, N'Adreno 330')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 12, N'5 Mp')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 13, N'8 Mp')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 14, N'Có')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 15, N'IP68')
INSERT [dbo].[PRODUCT_INFO] ([IdProduct], [IdInfo], [Info]) VALUES (2, 16, N'Bkav Mobile Security')
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (1, 21, 1, 5900000, 0, N'BKAV123321')
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 1, 1, 6990000, 0, N'19001560')
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 2, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 3, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 4, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 5, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 6, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 7, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 8, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 9, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 10, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 11, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 12, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 13, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 14, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 15, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 16, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 17, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 18, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 19, 1, 6990000, 0, NULL)
INSERT [dbo].[PRODUCT_ORDER] ([IdProduct], [IdOrder], [Count], [Price], [Discount], [IMEI]) VALUES (2, 20, 1, 6990000, 0, N'12323874580432')
SET IDENTITY_INSERT [dbo].[ROLE] ON 

INSERT [dbo].[ROLE] ([IdRole], [RoleName]) VALUES (1, N'Quản trị viên')
INSERT [dbo].[ROLE] ([IdRole], [RoleName]) VALUES (2, N'Biên tập viên')
INSERT [dbo].[ROLE] ([IdRole], [RoleName]) VALUES (3, N'Kiểm duyệt viên')
INSERT [dbo].[ROLE] ([IdRole], [RoleName]) VALUES (4, N'Nhân viên bán hàng')
SET IDENTITY_INSERT [dbo].[ROLE] OFF
SET IDENTITY_INSERT [dbo].[USER] ON 

INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole]) VALUES (3, N'vinhpham', N'A665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3', N'Phạm Ngọc Vinh', 1)
INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole]) VALUES (4, N'anhminh', N'A665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3', N'Nghiêm Quốc Anh Minh', 2)
INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole]) VALUES (5, N'trinam', N'A665A45920422F9D417E4867EFDC4FB8A04A1F3FFF1FA07E998E86F7F7A27AE3', N'Lê Trí Nam', 3)
INSERT [dbo].[USER] ([IdUser], [Username], [Password], [Fullname], [IdRole]) VALUES (6, N'thanhdanh', N'03AC674216F3E15C761EE1A5E255F067953623C8B388B4459E13F978D7C846F4', N'Nguyễn Thành Danh', 2)
SET IDENTITY_INSERT [dbo].[USER] OFF
ALTER TABLE [dbo].[CATEGORY_NEWS]  WITH CHECK ADD  CONSTRAINT [FK__CATEGORY___IdUse__34C8D9D1] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[CATEGORY_NEWS] CHECK CONSTRAINT [FK__CATEGORY___IdUse__34C8D9D1]
GO
ALTER TABLE [dbo].[CATEGORY_NEWS]  WITH CHECK ADD  CONSTRAINT [FK__CATEGORY___IdUse__60A75C0F] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[CATEGORY_NEWS] CHECK CONSTRAINT [FK__CATEGORY___IdUse__60A75C0F]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__COMMENT_P__IdUse__36B12243] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] CHECK CONSTRAINT [FK__COMMENT_P__IdUse__36B12243]
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__COMMENT_P__IdUse__628FA481] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[COMMENT_PRODUCT] CHECK CONSTRAINT [FK__COMMENT_P__IdUse__628FA481]
GO
ALTER TABLE [dbo].[NEWS]  WITH CHECK ADD  CONSTRAINT [FK__NEWS__IdCategory__4316F928] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[CATEGORY_NEWS] ([IdCategory])
GO
ALTER TABLE [dbo].[NEWS] CHECK CONSTRAINT [FK__NEWS__IdCategory__4316F928]
GO
ALTER TABLE [dbo].[NEWS]  WITH CHECK ADD  CONSTRAINT [FK_NEWS_USER] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[NEWS] CHECK CONSTRAINT [FK_NEWS_USER]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdCode__49C3F6B7] FOREIGN KEY([IdCode])
REFERENCES [dbo].[GIFTCODE] ([IdCode])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdCode__49C3F6B7]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdCode__75A278F5] FOREIGN KEY([IdCode])
REFERENCES [dbo].[GIFTCODE] ([IdCode])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdCode__75A278F5]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdCustome__45F365D3] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdCustome__45F365D3]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdCustome__71D1E811] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdCustome__71D1E811]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdPayment__4AB81AF0] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[PAYMENT_METHOD] ([IdPayment])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdPayment__4AB81AF0]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdPayment__76969D2E] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[PAYMENT_METHOD] ([IdPayment])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdPayment__76969D2E]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdStatus__4BAC3F29] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[PAYMENT_STATUS] ([IdStatus])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdStatus__4BAC3F29]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdStatus__778AC167] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[PAYMENT_STATUS] ([IdStatus])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdStatus__778AC167]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdUser__38996AB5] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdUser__38996AB5]
GO
ALTER TABLE [dbo].[ORDER]  WITH CHECK ADD  CONSTRAINT [FK__ORDER__IdUser__6477ECF3] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[ORDER] CHECK CONSTRAINT [FK__ORDER__IdUser__6477ECF3]
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK__ORDER_HIS__IdOrd__47DBAE45] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[ORDER] ([IdOrder])
GO
ALTER TABLE [dbo].[ORDER_HISTORY] CHECK CONSTRAINT [FK__ORDER_HIS__IdOrd__47DBAE45]
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK__ORDER_HIS__IdOrd__73BA3083] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[ORDER] ([IdOrder])
GO
ALTER TABLE [dbo].[ORDER_HISTORY] CHECK CONSTRAINT [FK__ORDER_HIS__IdOrd__73BA3083]
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD FOREIGN KEY([IdStatus])
REFERENCES [dbo].[PAYMENT_STATUS] ([IdStatus])
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD FOREIGN KEY([IdStatus])
REFERENCES [dbo].[PAYMENT_STATUS] ([IdStatus])
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK__ORDER_HIS__IdUse__398D8EEE] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[ORDER_HISTORY] CHECK CONSTRAINT [FK__ORDER_HIS__IdUse__398D8EEE]
GO
ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK__ORDER_HIS__IdUse__656C112C] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[ORDER_HISTORY] CHECK CONSTRAINT [FK__ORDER_HIS__IdUse__656C112C]
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCategory])
REFERENCES [dbo].[CATEGORY_PRODUCT] ([IdCategory])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCategory])
REFERENCES [dbo].[CATEGORY_PRODUCT] ([IdCategory])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCT__IdUser__35BCFE0A] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK__PRODUCT__IdUser__35BCFE0A]
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCT__IdUser__619B8048] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK__PRODUCT__IdUser__619B8048]
GO
ALTER TABLE [dbo].[PRODUCT_IMG]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([IdInfo])
REFERENCES [dbo].[INFO] ([IdInfo])
GO
ALTER TABLE [dbo].[PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([IdInfo])
REFERENCES [dbo].[INFO] ([IdInfo])
GO
ALTER TABLE [dbo].[PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_INFO]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_ORDER]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCT_O__IdOrd__46E78A0C] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[ORDER] ([IdOrder])
GO
ALTER TABLE [dbo].[PRODUCT_ORDER] CHECK CONSTRAINT [FK__PRODUCT_O__IdOrd__46E78A0C]
GO
ALTER TABLE [dbo].[PRODUCT_ORDER]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCT_O__IdOrd__72C60C4A] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[ORDER] ([IdOrder])
GO
ALTER TABLE [dbo].[PRODUCT_ORDER] CHECK CONSTRAINT [FK__PRODUCT_O__IdOrd__72C60C4A]
GO
ALTER TABLE [dbo].[PRODUCT_ORDER]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_ORDER]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION]  WITH CHECK ADD FOREIGN KEY([IdPromotion])
REFERENCES [dbo].[PROMOTION] ([IdPromotion])
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[PRODUCT_PROMOTION]  WITH CHECK ADD FOREIGN KEY([IdPromotion])
REFERENCES [dbo].[PROMOTION] ([IdPromotion])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[CUSTOMER] ([IdCustomer])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD FOREIGN KEY([IdProduct])
REFERENCES [dbo].[PRODUCT] ([IdProduct])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__REVIEW_PR__IdUse__37A5467C] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] CHECK CONSTRAINT [FK__REVIEW_PR__IdUse__37A5467C]
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK__REVIEW_PR__IdUse__6383C8BA] FOREIGN KEY([IdUser])
REFERENCES [dbo].[USER] ([IdUser])
GO
ALTER TABLE [dbo].[REVIEW_PRODUCT] CHECK CONSTRAINT [FK__REVIEW_PR__IdUse__6383C8BA]
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK__USER__IdRole__3A81B327] FOREIGN KEY([IdRole])
REFERENCES [dbo].[ROLE] ([IdRole])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK__USER__IdRole__3A81B327]
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK__USER__IdRole__66603565] FOREIGN KEY([IdRole])
REFERENCES [dbo].[ROLE] ([IdRole])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK__USER__IdRole__66603565]
GO
/****** Object:  StoredProcedure [dbo].[proc_CryptData]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_CryptData] (@Data varchar(100))
as
begin
declare @Result varchar(256)
set @Result = dbo.func_CryptData(@Data)
select top 1 @Result
end
GO
/****** Object:  Trigger [dbo].[trg_AutoCryptPassword]    Script Date: 10/9/2019 1:14:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[trg_AutoCryptPassword] on [dbo].[USER]
for insert, update
as
begin
	if UPDATE([Password])
	begin
		declare @EmployeeID int
		declare @Password varchar(256)
		select @Password = [Password], @EmployeeID = IdUser from inserted
		set @Password = dbo.func_CryptData(@Password)
		update [USER] set [Password] = @Password where IdUser = @EmployeeID
	end
end

GO
ALTER DATABASE [THUONGMAIDIENTU] SET  READ_WRITE 
GO
