drop database [Final]
create database [Final]
USE [Final]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[RoleID] [int] NULL,
	[img] [nvarchar](max) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminRole]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Content] [ntext] NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Error]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Error](
	[ErrorID] [int] IDENTITY(1,1) NOT NULL,
	[ErrorName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ErrorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guarantee]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guarantee](
	[GuaranteeID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[UserID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[OldGuaranteeID] [int] NULL,
	[Status] [nvarchar](20) NULL,
	[Img] [nvarchar](40) NULL,
	[Des_Error] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[GuaranteeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageProduct]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageProduct](
	[ImgID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ImgLink] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ImgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [ntext] NULL,
	[NewsType] [int] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Image] [nvarchar](max) NULL,
	[Video] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsType]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsType](
	[NewsTypeID] [int] IDENTITY(1,1) NOT NULL,
	[NewsTypeName] [nvarchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[NewsTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
	[TotalPrice] [money] NULL,
	[Status] [nvarchar](20) NULL,
	[PaymentType] [nvarchar](100) NULL,
	[ShipAddress] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ProductID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
	[Discount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NULL,
	[BrandID] [int] NULL,
	[CategoryID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[UnitPrice] [money] NULL,
	[Discount] [int] NULL,
	[Img] [varchar](max) NULL,
	[UnitInStock] [int] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[Guarantee] [int] NULL,
	[status] [bit] NULL,
	[LargeImage] [nvarchar](100) NULL,
	[OtherDescription] [ntext] NULL,
	[File] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairBill]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairBill](
	[BillID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[TotalPrice] [money] NULL,
	[Address] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairBillDetails]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairBillDetails](
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ErrorID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[BillID] ASC,
	[ErrorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/6/2023 12:33:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[status] [bit] NULL,
	[img] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (1, N'Nguyễn Văn A', N'Số 110 phố Nguyễn Thái Học, Phường Điện Biên, Quận Ba Đình, Thành phố Hà Nội', N'0981620906', N'nguyenvana@gmail.com', N'111111Aa@', 1, NULL, 1)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (2, N'Nguyễn Văn B', N'Số 219 Ỷ La, Phường Dương Nội, Quận Hà Đông, Thành phố Hà Nội', N'0919786333', N'nguyenvanb@gmail.com', N'222222Aa@', 2, N'ao-polo-nu-nau2.jpg', 0)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (3, N'Nguyễn Văn C', N'Số 178 Đường Nước Phần Lan, Phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội
', N'0398227289', N'nguyenvanc@gmail.com', N'333333', 3, N'vodanh.jpg', 0)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (4, N'Nguyễn Văn D', N'Số 178 Đường Nước Phần Lan, Phường Tứ Liên, Quận Tây Hồ, Thành phố Hà Nội', N'0398227289', N'nguyenvand@gmail.com', N'444444', 4, NULL, 0)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (5, N'Nguyễn Văn E', N'Lô C1-5, Khu đô thị Cầu Diễn, Phường Phú Diễn, Quận Bắc Từ Liêm, Thành phố Hà Nội', N'0982367860', N'nguyenvane@gmail.com', N'555555', 5, NULL, 0)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (7, N'Nguyễn Văn F', N'Lầu 1, tòa nhà 117-119 Trần Nguyên Đán, Phường 3, Quận Bình Thạnh, Thành phố Hồ Chí Minh
', N'0937133138', N'nguyenvanf@gmail.com', N'666666', 1, N'vodanh.jpg', 0)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (8, N'Nguyễn Văn G', N'722 Ngô Quyền, Phường An Hải Bắc, Quận Sơn Trà, Thành phố Đà Nẵng
', N'0981333333', N'nguyenvang@gmail.com', N'777777', 2, N'vodanh.jpg', 0)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (9, N'Nguyễn Văn H', N'1755 Nguyễn Tất Thành, Phường Thanh Khê Tây, Quận Thanh Khê, Thành phố Đà Nẵng', N'0392222222', N'nguyenvanh@gmail.com', N'888888', 3, N'vodanh.jpg', 0)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (10, N'Nguyễn Văn I', N'09 Cửu Long, Phường 2, Quận Tân Bình, Thành phố Hồ Chí Minh
', N'0987123456', N'nguyenvani@gmail.com', N'999999', 4, N'vodanh.jpg', 0)
INSERT [dbo].[Admin] ([AdminID], [AdminName], [Address], [Phone], [Email], [Password], [RoleID], [img], [status]) VALUES (11, N'fsdfsdfsdfsaf', N'asdfsadfsadfsafsaf', N'0987654321', N'nam@gmail.com', N'Ad@123', 2, N'Admin.jpg', 0)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[AdminRole] ON 

INSERT [dbo].[AdminRole] ([RoleID], [RoleName]) VALUES (1, N'Chủ')
INSERT [dbo].[AdminRole] ([RoleID], [RoleName]) VALUES (2, N'Quản lý tin tức')
INSERT [dbo].[AdminRole] ([RoleID], [RoleName]) VALUES (3, N'Quản lý sản phẩm')
INSERT [dbo].[AdminRole] ([RoleID], [RoleName]) VALUES (4, N'Quản lý bán hàng')
INSERT [dbo].[AdminRole] ([RoleID], [RoleName]) VALUES (5, N'Quản lý tài khoản')
SET IDENTITY_INSERT [dbo].[AdminRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (1, N'HP')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (2, N'Dell')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (3, N'ASUS')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (4, N'ACER')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (5, N'LENOVO')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (6, N'MSI')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (7, N'LG')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (8, N'GIGABYTE')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (9, N'Apple')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (10, N'Akko')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (11, N'Logitech')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (12, N'Razer')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (13, N'Cosair')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Laptop')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Màn hình')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Chuột')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Bàn phím')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Tai nghe')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Comment] ([UserID], [ProductID], [Content], [CreateDate]) VALUES (1, 1, N'Sản phẩm dùng khá tốt.', CAST(N'2022-02-16T09:55:00.000' AS DateTime))
INSERT [dbo].[Comment] ([UserID], [ProductID], [Content], [CreateDate]) VALUES (2, 1, N'Mẫu mã rất đẹp.', CAST(N'2022-02-21T09:55:00.000' AS DateTime))
INSERT [dbo].[Comment] ([UserID], [ProductID], [Content], [CreateDate]) VALUES (4, 3, N'Sản phẩm này chưa tốt lắm', CAST(N'2022-02-15T09:55:00.000' AS DateTime))
INSERT [dbo].[Comment] ([UserID], [ProductID], [Content], [CreateDate]) VALUES (1, 4, N'Sản phẩm quá tuyệt vời.', CAST(N'2022-02-15T09:55:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Error] ON 

INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (1, N'Lỗi ổ cứng')
INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (2, N'Lỗi màn hình bể')
INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (3, N'Nhiễm virut')
INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (4, N'Lỗi màn hình đen')
INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (5, N'Lỗi sọc màn hình, đốm sáng')
INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (6, N'Lỗi RAM')
INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (7, N'Mainboard bị hư hỏng, lỗi')
INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (8, N'Tản nhiệt bị hỏng')
INSERT [dbo].[Error] ([ErrorID], [ErrorName]) VALUES (9, N'Lỗi pin')
SET IDENTITY_INSERT [dbo].[Error] OFF
GO
SET IDENTITY_INSERT [dbo].[Guarantee] ON 

INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (1, 1, 1, CAST(N'2022-02-15T09:55:00.000' AS DateTime), CAST(N'2024-02-15T09:55:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (2, 1, 3, CAST(N'2022-02-05T16:00:00.000' AS DateTime), CAST(N'2024-02-05T16:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (3, 2, 2, CAST(N'2022-06-21T15:12:00.000' AS DateTime), CAST(N'2024-06-21T15:12:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (4, 3, 1, CAST(N'2022-05-16T09:55:00.000' AS DateTime), CAST(N'2024-05-16T09:55:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (5, 4, 1, CAST(N'2022-02-15T09:55:00.000' AS DateTime), CAST(N'2024-02-15T09:55:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (6, 4, 4, CAST(N'2022-02-15T19:45:00.000' AS DateTime), CAST(N'2024-02-15T19:45:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (7, 4, 1, CAST(N'2022-05-16T09:55:00.000' AS DateTime), CAST(N'2024-05-16T09:55:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (8, 5, 4, CAST(N'2022-02-15T19:45:00.000' AS DateTime), CAST(N'2024-02-15T19:45:00.000' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Guarantee] ([GuaranteeID], [ProductID], [UserID], [StartDate], [EndDate], [OldGuaranteeID], [Status], [Img], [Des_Error]) VALUES (9, 6, 3, CAST(N'2022-02-05T16:00:00.000' AS DateTime), CAST(N'2024-02-05T16:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Guarantee] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageProduct] ON 

INSERT [dbo].[ImageProduct] ([ImgID], [ProductID], [ImgLink]) VALUES (1, 1, N'imageProduct/gearvn-laptop-asus-vivobook-15-x515ea-br2045w-4_cc64c03ae2a24e959483664b07529550.webp')
INSERT [dbo].[ImageProduct] ([ImgID], [ProductID], [ImgLink]) VALUES (2, 1, N'imageProduct/gearvn-laptop-asus-vivobook-15-x515ea-br2045w-3_54451808ae1d4f6196ced38ea630d6c4.webp')
INSERT [dbo].[ImageProduct] ([ImgID], [ProductID], [ImgLink]) VALUES (3, 1, N'imageProduct/gearvn-laptop-asus-vivobook-15-x515ea-br2045w-2_9571d7449e25453798da61fbd82d22b0.webp')
SET IDENTITY_INSERT [dbo].[ImageProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewsID], [Title], [Content], [NewsType], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Image], [Video]) VALUES (1, N'Trên tay HP Pavilion X360 14 ek1049TU: Intel Core i5 Gen 13th mạnh mẽ, bản lề xoay gập 360 độ linh hoạt', N'Về tổng thể, như bao mẫu laptop cao cấp dành cho doanh nhân/ doanh nghiệp trên thị trường hiện nay thì điểm nhấn đầu tiên mà HP Pavilion X360 14 ek1049TU làm mình ấn tượng chính là một thân hình mỏng nhẹ. Cụ thể thì thiết bị chỉ dày 19.9 mm và cân nặng khoảng 1.53 kg, rất là lý tưởng để chúng ta có thể cho vào trong túi xách hoặc balo mà mang đi làm việc ở khắp nơi.Ngoài ra, HP Pavilion X360 14 ek1049TU có khung sườn được chế tạo từ chất liệu kim loại nhằm mang đến vẻ đẹp, sang trọng cũng như mang đến cho người dùng một cảm giác cầm nắm chắc chắn, cứng cáp. Đồng thời, phần mặt A và D của máy được làm từ nhựa và mức độ hoàn thiện rất tốt nên mình không cảm thấy ọp ẹp trong suốt quá trình sử dụng. Thêm vào đó, trên mặt A của HP Pavilion X360 14 ek1049TU tuy đơn giản nhưng nhờ vào sự hiện diện của logo HP hình tròn cực quen thuộc đã giúp tổng thể của thiết bị trở nên nổi bật hơn.Không chỉ có thiết kế mỏng nhẹ, HP Pavilion X360 14 ek1049TU còn sở hữu phần bản lề đặc biệt với khả năng xoay gập màn hình 360 độ, giúp chúng ta có thể lật ngược lại mà sử dụng máy như một chiếc tablet bên cạnh vai trò là một chiếc laptop thông thường. Đồng thời, HP còn trang bị cho máy một chiếc bút cảm ứng đi kèm để người dùng có thể vẽ hoặc ghi chú nhanh tiện lợi hơn.Không chỉ có thiết kế mỏng nhẹ, HP Pavilion X360 14 ek1049TU còn sở hữu phần bản lề đặc biệt với khả năng xoay gập màn hình 360 độ, giúp chúng ta có thể lật ngược lại mà sử dụng máy như một chiếc tablet bên cạnh vai trò là một chiếc laptop thông thường. Đồng thời, HP còn trang bị cho máy một chiếc bút cảm ứng đi kèm để người dùng có thể vẽ hoặc ghi chú nhanh tiện lợi hơn.Tuy sở hữu một thân hình mỏng gọn là thế nhưng HP Pavilion X360 14 ek1049TU vẫn được trang bị đa dạng các cổng kết nối đi kèm để bạn sử dụng những thiết bị ngoại vi không thể thiếu như: Bàn phím rời, chuột, tai nghe, màn hình,... Cụ thể thì ở phía cạnh trái của máy, chúng ta có thể thấy lần lượt là cổng HDMI, cổng USB Type-C và cổng tai nghe 3.5 mm. Trong khi đó ở cạnh phải của thiết bị chứa cổng sạc, hai cổng USB-A 3.2 và khe đọc thẻ nhớ MicroSD.Vì mang ngoại hình nhỏ gọn nên để tối ưu khả năng trải nghiệm, HP Pavilion X360 14 ek1049TU được trang bị bàn phím chiclet với layout TKL thường rất phổ biến trên các laptop doanh nhân. Theo trải nghiệm nhanh của mình thì các phím có hành trình vừa phải, hành trình phím tốt và khoảng cách giữa các phím được phân bố hợp lý nên mình ít khi gặp phải tình trạng gõ nhầm. Hơn nữa, hệ thống bàn phím này còn được tích hợp đèn nền nên sẽ rất hữu dụng cho các bạn thường sử dụng laptop trong điều kiện ánh sáng hạn chế.Ngoài ra, bàn di chuột của HP Pavilion X360 14 ek1049TU tuy khá nhỏ nhắn nhưng vẫn cho lại cảm giác vuốt chạm tốt, mượt mà và tốc độ phản hồi nhanh. Phần chiếu để tay có kích thước vừa phải, cho phép chúng ta có không gian kê tay thoải mái khi làm việc.', 2, 1, NULL, CAST(N'2021-05-13T09:55:00.000' AS DateTime), NULL, N'news1.jpg', NULL)
INSERT [dbo].[News] ([NewsID], [Title], [Content], [NewsType], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Image], [Video]) VALUES (2, N'TUẦN LỄ ASUS: VÀO ÔM KHUYẾN MẠI', N'1. Tên chương trình: TUẦN LỄ ASUS: VÀO ÔM KHUYẾN MẠI
2. Thời gian diễn ra: Từ 08/05/2023 – 14/05/2023
3. Nội dung chương trình:
 An Phát dành tặng quý khách hàng yêu thích dòng Laptop Asus Gaming deal ngon giật mình, giảm giá đến nửa triệu cùng phần quà giới hạn đặc biệt đến từ chính hãng Asus.

CỤ THỂ:  Nhận ngay Voucher 500k giảm giá trên hóa đơn (không áp dụng cho mã NBAS1151 và NBAS1111). Tặng 01 Áo thun ASUS ROG phiên bản giới hạn trên mỗi đơn hàng. Còn chờ gì mà chưa ghé G2Com để mua ngay 1 em Laptop Asus Gaming thôi nào!!', 2, 2, NULL, CAST(N'2021-05-13T09:55:00.000' AS DateTime), NULL, N'news2.jpg', NULL)
INSERT [dbo].[News] ([NewsID], [Title], [Content], [NewsType], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Image], [Video]) VALUES (3, N'Chuột Chơi Game Sở Hữu Switch Bất Tử Với Giá Chỉ 300 Nghìn', N'Sau thành công hoành tráng đến từ hai phiên bản chuột chơi game E-DRA EM6102 Wired (có dây) và E-DRA EM6102 Wireless (không dây), hãng Gaming Gear nổi tiếng Việt Nam lại tiếp tục cho ra đời phiên bản “cao thủ”, sở hữu công tắc quang học gần như bất tử với độ bền lên đến 80 triệu lần nhấn cùng với hiệu ứng ánh sáng RGB 16.8 triệu màu cực kỳ chói lọi, rực rỡ.Tên gọi của em chuột này chính là Gaming Mouse E-Dra EM6102 Pro (thêm chữ Pro để thể hiện tính chất chuyên nghiệp). Đây là phiên bản chuột chơi game có dây thứ 2 trong Series EM6012 và hãng mới chỉ mới đưa ra 1 màu duy nhất là: Black. Vậy E-Dra EM6102 Pro còn ẩn chứa sức mạnh gì đặc biệt trong mức chỉ hơn 300.000 VNĐ nữa. Các bạn hãy cùng An Phát Computer điểm danh chi tiết dưới đây.EM6102 Pro mang thiết kế cơ bản nhưng rất hiệu quả, với vỏ ngoài đối xứng, thuôn nhỏ (giống hệt và giống y như đúc Logitech G102), mang lại cảm giác cầm nắm rất dễ dàng, phù hợp với mọi nhu cầu sử dụng chuột: từ làm việc văn phòng cho tới chơi các thể loại game cơ bản, kể cả là TRY HARD.Bề mặt lớp vỏ của E-Dra EM6102 Pro được phủ một lớp coating chống trượt, nâng cao độ bám tay, mang đến cảm giác cầm chuột và rê chuột hết sức chắc chắn, ngay cả với những người bị mồ hôi.Khác với phiên bản EM6102, E-Dra EM6102 Pro được trang bị cảm biến quang học với DPI tối đa lên tới 10.000. Trong quá trình sử dụng, An Phát Computer nhận thấy chuột cho độ chính xác khá tốt, hoạt động ổn định và tương thích với nhiều bề mặt bàn di cũng như các loại trò chơi thuộc dòng RTS (chiến thuật) như AOE, RPG (nhập vai) như The Witcher 3: Wild Hunt và các game MOBA phổ biến như DOTAII hay LOL.', 2, 8, NULL, CAST(N'2021-05-13T09:55:00.000' AS DateTime), NULL, N'news3.jpg', NULL)
INSERT [dbo].[News] ([NewsID], [Title], [Content], [NewsType], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Image], [Video]) VALUES (4, N'Tổ chức giải bóng đá cho công ty G2Com', N'Công ty G2Com, một công ty kinh doanh về máy tính, vừa thông báo về việc tổ chức một giải bóng đá nội bộ cho các nhân viên của công ty vào cuối tháng này.

Giải bóng đá sẽ diễn ra trong 2 ngày, từ ngày 29 đến ngày 30 tháng này tại sân bóng đá trong khuôn viên của công ty. Sự kiện này nhằm mục đích tăng cường tinh thần đoàn kết và gắn kết giữa các nhân viên trong công ty.

Các đội bóng sẽ được tổ chức theo các bộ phận của công ty, bao gồm bộ phận kinh doanh, bộ phận kỹ thuật và bộ phận quản lý. Mỗi đội sẽ có 7 cầu thủ và 3 người dự bị.

Trước khi bắt đầu giải đấu, Ban tổ chức sẽ tổ chức một buổi họp mặt và rèn luyện kỹ năng cho các cầu thủ. Các cầu thủ cũng sẽ được cung cấp đầy đủ trang phục thi đấu và trang thiết bị an toàn như giày, áo, quần và bảo vệ chân.

Tất cả các trận đấu sẽ được quản lý và giám sát bởi các trọng tài chuyên nghiệp, đảm bảo sự công bằng và minh bạch trong việc đánh giá các bàn thắng và thẻ phạt.

Công ty G2Com hy vọng rằng giải bóng đá nội bộ này sẽ đem lại niềm vui và sự hưng phấn cho các nhân viên của công ty và tạo ra một không khí tích cực và đoàn kết trong công ty.', 1, 1, NULL, CAST(N'2021-05-13T09:55:00.000' AS DateTime), NULL, N'news4.jpg', NULL)
INSERT [dbo].[News] ([NewsID], [Title], [Content], [NewsType], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Image], [Video]) VALUES (5, N'Công ty G2Com triển khai dự án mới về hệ thống quản lý khách hàng', N'Công ty G2Com, một công ty kinh doanh về máy tính, vừa thông báo về việc triển khai dự án mới về hệ thống quản lý khách hàng. Dự án này được thiết kế để cải thiện quản lý và tối ưu hóa quá trình tương tác với khách hàng của công ty.

Theo thông tin từ Ban quản lý dự án, dự án sẽ bao gồm việc triển khai một hệ thống quản lý khách hàng mới hoàn toàn tích hợp với các phần mềm hiện có của công ty. Hệ thống này sẽ cung cấp các tính năng như theo dõi lịch sử mua hàng của khách hàng, tối ưu hóa quá trình bán hàng, quản lý dữ liệu khách hàng và cung cấp các báo cáo phân tích dữ liệu chi tiết để giúp quản lý đưa ra quyết định hiệu quả.

Ngoài ra, dự án cũng sẽ đào tạo nhân viên để sử dụng hệ thống quản lý khách hàng mới và cập nhật các quy trình kinh doanh mới liên quan đến việc quản lý khách hàng. Ban quản lý dự án hy vọng rằng dự án này sẽ giúp công ty G2Com cải thiện khả năng tương tác với khách hàng và tăng cường khả năng cạnh tranh của công ty trên thị trường.

Dự án dự kiến sẽ triển khai trong 6 tháng, với sự tham gia của một đội ngũ chuyên gia IT và các chuyên gia kinh doanh của công ty. Công ty G2Com tin rằng, dự án mới sẽ đem lại lợi ích rất lớn cho công ty, giúp nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nhu cầu của khách hàng.', 1, 2, NULL, CAST(N'2021-05-13T09:55:00.000' AS DateTime), NULL, N' news5.jpg', NULL)
INSERT [dbo].[News] ([NewsID], [Title], [Content], [NewsType], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Image], [Video]) VALUES (6, N'Công ty G2Com kí kết hợp tác cùng đối tác Nhật Bản nhằm nâng cao chất lượng sản phẩm ', N'Công ty G2Com, một công ty kinh doanh máy tính tại Việt Nam, đã thông báo về việc hợp tác với một đối tác Nhật Bản nhằm nâng cao chất lượng sản phẩm của mình.

Theo thông tin được công bố, đối tác Nhật Bản này là một công ty chuyên sản xuất và phân phối linh kiện và thiết bị cho ngành công nghiệp điện tử. Hợp tác giữa G2Com và đối tác Nhật Bản này sẽ tập trung vào việc chia sẻ công nghệ và kiến thức để cải thiện chất lượng sản phẩm của G2Com.

Ông Nguyễn Văn A, Giám đốc điều hành của G2Com, cho biết: "Chúng tôi rất vui mừng về việc hợp tác này và tin rằng nó sẽ giúp cho chúng tôi nâng cao chất lượng sản phẩm và tăng cường năng lực cạnh tranh trên thị trường. Chúng tôi hy vọng rằng đối tác Nhật Bản của chúng tôi sẽ mang lại cho chúng tôi những giá trị mới và cùng đồng hành với chúng tôi trong chiến lược phát triển của công ty."

Hiện tại, hai công ty đang tiến hành các cuộc thảo luận cụ thể để đưa ra các kế hoạch và chiến lược cụ thể cho việc hợp tác. Dự kiến, sự hợp tác này sẽ giúp cho G2Com nâng cao chất lượng sản phẩm, cải thiện quy trình sản xuất và tăng cường năng lực cạnh tranh trên thị trường.', 1, 8, NULL, CAST(N'2021-05-13T09:55:00.000' AS DateTime), NULL, N'news6.jpg', NULL)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[NewsType] ON 

INSERT [dbo].[NewsType] ([NewsTypeID], [NewsTypeName]) VALUES (1, N'Tin Công Ty')
INSERT [dbo].[NewsType] ([NewsTypeID], [NewsTypeName]) VALUES (2, N'Tin Khách Hàng')
SET IDENTITY_INSERT [dbo].[NewsType] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [ShipDate], [TotalPrice], [Status], [PaymentType], [ShipAddress]) VALUES (1, 1, CAST(N'2022-02-15T09:55:00.000' AS DateTime), CAST(N'2022-02-17T12:55:00.000' AS DateTime), 34480000.0000, N'Reject', N'Momo', N'Số 17 Ngõ 40 Văn La, Phường Phú La, Quận Hà Đông, Hà Nội')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [ShipDate], [TotalPrice], [Status], [PaymentType], [ShipAddress]) VALUES (2, 2, CAST(N'2022-06-21T15:12:00.000' AS DateTime), CAST(N'2022-06-25T10:12:00.000' AS DateTime), 27980000.0000, N'Reject', N'Momo', N'Lô 33, LK5 khu đô thị Tân Tây Đô, Xã Tân Lập, Huyện Đan Phượng, Hà Nội')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [ShipDate], [TotalPrice], [Status], [PaymentType], [ShipAddress]) VALUES (3, 3, CAST(N'2022-02-05T16:00:00.000' AS DateTime), CAST(N'2022-02-09T10:12:00.000' AS DateTime), 41970000.0000, N'Delivered', N'Momo', N'223 Hoàng Văn Thụ (K3.28 Cao ốc Kingston Residence), Phường 08, Quận Phú Nhuận, TP Hồ Chí Minh')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [ShipDate], [TotalPrice], [Status], [PaymentType], [ShipAddress]) VALUES (4, 4, CAST(N'2022-02-15T19:45:00.000' AS DateTime), CAST(N'2022-02-18T10:12:00.000' AS DateTime), 48980000.0000, N'Reject', N'Momo', N'120 Vũ Tông Phan , Khu Phố 5, Phường An Phú, Thành phố Thủ Đức, TP Hồ Chí Minh')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [ShipDate], [TotalPrice], [Status], [PaymentType], [ShipAddress]) VALUES (5, 1, CAST(N'2022-05-16T09:55:00.000' AS DateTime), CAST(N'2022-05-18T17:55:00.000' AS DateTime), 45380000.0000, N'On delivery', N'Momo', N'Số 17 Ngõ 40 Văn La, Phường Phú La, Quận Hà Đông, Hà Nội')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (1, 1, 1, 11490000.0000, 0)
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (1, 3, 2, 22980000.0000, 0)
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (2, 2, 2, 27980000.0000, 0)
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (3, 5, 1, 22390000.0000, 0)
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (4, 1, 1, 22990000.0000, 0)
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (4, 4, 1, 22990000.0000, 0)
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (4, 5, 1, 22990000.0000, 0)
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (5, 4, 1, 25990000.0000, 0)
INSERT [dbo].[OrderDetails] ([ProductID], [OrderID], [Quantity], [Price], [Discount]) VALUES (6, 3, 1, 18990000.0000, 0)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (1, N'Laptop Asus Vivobook 15 X515EA BR2045W', 1, 1, N'<h2><strong>TH&Ocirc;NG SỐ KĨ THUẬT:&nbsp;</strong></h2>
<table style="border-collapse: collapse; width: 100.035%;" border="1"><colgroup><col style="width: 49.9834%;"><col style="width: 49.9834%;"></colgroup>
<tbody>
<tr>
<td style="text-align: center;"><strong>T&ecirc;n</strong></td>
<td style="text-align: center;"><strong>Chi tiết</strong></td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">CPU</a></strong></td>
<td>Intel Core i3-1115G4 1.7GHz up to 4.1GHz 6MB</td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">RAM</a></strong></td>
<td>4GB Onboard DDR4 2666MHz (1x SO-DIMM socket, up to 12GB SDRAM)</td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">Ổ lưu trữ</a></strong></td>
<td>512GB M.2 NVMe&trade; PCIe&reg; 3.0 SSD, 1x slot SATA3 2.5"</td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">Card đồ họa</a></strong></td>
<td>Intel UHD Graphics</td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">M&agrave;n h&igrave;nh</a></strong></td>
<td>15.6" HD (1366 x 768), Anti-glare display, LED Backlit, 200nits, NTSC: 45%, Screen-to-body ratio: 83 ％</td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">B&agrave;n ph&iacute;m</a></strong></td>
<td>Ti&ecirc;u chuẩn, c&oacute; ph&iacute;m số</td>
</tr>
<tr>
<td><strong>Audio</strong></td>
<td>SonicMaster</td>
</tr>
<tr>
<td><strong>Kết nối c&oacute; d&acirc;y (LAN)</strong></td>
<td>None</td>
</tr>
<tr>
<td><strong>Kết nối kh&ocirc;ng d&acirc;y</strong></td>
<td>802.11 AC, Bluetooth v4.1</td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">Webcam</a></strong></td>
<td>HD camera&nbsp;&nbsp;(720p Webcam)</td>
</tr>
<tr>
<td><strong>Cổng giao tiếp</strong></td>
<td>
<ul>
<li>1x USB 3.2 Gen 1 Type-A</li>
<li>1x USB 3.2 Gen 1 Type-C</li>
<li>2x USB 2.0 Type-A</li>
<li>1x HDMI 1.4</li>
<li>1x 3.5mm Combo Audio Jack</li>
<li>1x DC-in</li>
</ul>
</td>
</tr>
<tr>
<td><strong>Hệ điều h&agrave;nh</strong></td>
<td>Windows 11 Home</td>
</tr>
<tr>
<td><strong>Pin</strong></td>
<td>2 Cells 37WHrs</td>
</tr>
<tr>
<td><strong>Trọng lượng</strong></td>
<td>1.8 kg</td>
</tr>
<tr>
<td><strong>M&agrave;u sắc</strong></td>
<td>Slate Gray</td>
</tr>
<tr>
<td><strong>Bảo mật</strong></td>
<td>V&acirc;n tay</td>
</tr>
<tr>
<td><strong>Kích thước</strong></td>
<td>&nbsp;36.00 x 23.50 x 1.99 ~ 1.99 cm</td>
</tr>
</tbody>
</table>
<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Asus Vivobook 15 X515EA BR2045W</strong></h2>
<p>Asus Vivobook 15 X515EA BR2045W&nbsp;l&agrave; chiếc laptop gi&aacute; rẻ ph&ugrave; hợp cho việc học tập v&agrave; l&agrave;m việc hằng ng&agrave;y. Cấu h&igrave;nh ổn định, thiết kế ho&agrave;n thiện hứa hẹn sẽ mang đến những trải nghiệm ph&ugrave; hợp với người d&ugrave;ng.<br><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-15-x515ea-br2045w-1_7ed8f46030f143688ed8ad521c7c72f7.webp" alt="" width="480" height="480"></p>
<p>&nbsp;</p>
<h3><strong>Thiết kế sang trọng, độc đ&aacute;o</strong></h3>
<p>Laptop&nbsp;<a href="https://gearvn.com/collections/laptop-asus-vivobook-series" target="_blank" rel="noopener">Asus Vivobook</a>&nbsp;15 sở hữu một m&agrave;u bạc đẹp mắt với thiết kế vu&ocirc;ng vắn đầy tinh tế. Bản lề được thiết kế tự tạo một g&oacute;c nghi&ecirc;ng vừa phải khi mở nắp m&aacute;y t&iacute;nh l&ecirc;n. Logo Asus đặt ở trung t&acirc;m của mặt tr&ecirc;n laptop tạo một điểm nhấn của d&ograve;ng sản phẩm. Trọng lượng 1.8kg, d&agrave;y khoảng 1.99cm tạo điều kiện di chuyển đi mọi nơi phục vụ cho nhu cầu học tập v&agrave; l&agrave;m việc.&nbsp;<br><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-15-x515ea-br2045w-4_b7de181576f444799d76fe3a353a7d15.webp" alt="" width="480" height="480"></p>
<h3><strong>Cấu h&igrave;nh vượt trội tr&ecirc;n laptop Asus Vivobook 15 X515EA BR2045W</strong></h3>
<p>Sử dụng bộ vi xử l&yacute; Intel core&nbsp;i3-1115G4&nbsp;mạnh mẽ cho ph&eacute;p&nbsp;<a href="http://gearvn.com/collections/laptop-asus" target="_blank" rel="noopener">laptop Asus</a>&nbsp;Vivobook 15 giải quyết mọi t&aacute;c vụ văn ph&ograve;ng cơ bản đến n&acirc;ng cao. Card đồ họa t&iacute;ch hợp&nbsp;Intel&reg; UHD Graphics hỗ trợ c&aacute;c c&ocirc;ng việc h&igrave;nh ảnh sắc n&eacute;t.&nbsp;4GB RAM DDR4 xử l&yacute; đa nhiệm cực tốt cho những thao t&aacute;c mượt m&agrave;. Bộ lưu trữ 512GB thỏa sức lưu trữ c&aacute;c dữ liệu quan trọng m&agrave; người d&ugrave;ng cần.</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-15-x515ea-br2045w-2_8d15a800401d4dd49b539f06010b02e1.webp" alt="" width="480" height="480"></p>
<h3><strong>B&agrave;n ph&iacute;m v&agrave; bảo mật</strong></h3>
<p>Đ&acirc;y c&oacute; lẽ l&agrave; sản phẩm&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-sinh-sinh-vien" target="_blank" rel="noopener">laptop cho sinh vi&ecirc;n</a>&nbsp;ho&agrave;n hảo với thiết kế b&agrave;n ph&iacute;m thoải m&aacute;i. H&agrave;nh tr&igrave;nh ph&iacute;m được tinh chỉnh hợp l&yacute; để việc đ&aacute;nh m&aacute;y tr&ecirc;n Asus Vivobook 15 thuận lợi. Thiết kế Fullsize dễ d&agrave;ng cho việc nhập dữ liệu nhanh ch&oacute;ng.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-15-x515ea-br2045w-3_c137ef8911ed4ad29ad4cecf43fab28f.webp" alt="" width="480" height="480"></p>', 11490000.0000, 5, NULL, 30, 3, 1, CAST(N'2021-02-15T09:55:00.000' AS DateTime), CAST(N'2023-06-08T04:23:32.147' AS DateTime), 24, 0, N'gearvn-laptop-asus-vivobook-1.webp', N'<p>Laptop Asus Vivobook 15 X515EA-BR2045W kho&aacute;c l&ecirc;n vẻ đẹp thời trang tinh tế, mang đến hiệu năng ổn định với Core i3 thế hệ thứ 11. Sẵn s&agrave;ng cho mọi trải nghiệm trong c&ocirc;ng việc v&agrave; giải tr&iacute; h&agrave;ng ng&agrave;y của nhiều người d&ugrave;ng hiện nay.</p>', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (2, N'Laptop Asus Vivobook X1404VA NK124W', 1, 1, N'<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>
<table style="border-collapse: collapse; width: 100.035%; height: 403.2px;" border="1"><colgroup><col style="width: 49.9823%;"><col style="width: 49.9823%;"></colgroup>
<tbody>
<tr style="height: 22.4px;">
<td style="height: 22.4px; text-align: center;"><strong>T&ecirc;n</strong></td>
<td style="text-align: center;"><strong>Chi tiết</strong></td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">CPU</a></strong></td>
<td>Intel&reg; Core&trade; i3-1315U Processor 1.2 GHz (10MB Cache, up to 4.5 GHz, 6 cores, 8 Threads)</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong><a href="https://gearvn.com/collections/ram-pc" target="_blank" rel="noopener">RAM</a></strong></td>
<td style="height: 22.4px;">8GB (Onboard)&nbsp;<a href="https://gearvn.com/collections/ddr4-8gb">DDR4</a>&nbsp;3200MHz (C&ograve;n 1 slot SO-DIMM, n&acirc;ng cấp tối đa 16GB)</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong><a href="http://gearvn.com/collections/ssd-laptop" target="_blank" rel="noopener">Ổ cứng</a></strong></td>
<td style="height: 22.4px;">256GB M.2 NVMe&trade; PCIe&reg; 4.0 SSD&nbsp;(1x M.2 2280 PCIe 4.0x4)</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong><a href="https://gearvn.com/collections/vga-card-man-hinh" target="_blank" rel="noopener">VGA</a></strong></td>
<td style="height: 22.4px;">Intel&reg; UHD Graphics</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><a href="https://gearvn.com/pages/man-hinh" target="_blank" rel="noopener"><strong>M&agrave;n h&igrave;nh</strong></a></td>
<td style="height: 22.4px;">14" FHD (1920 x 1080) LED backlit,&nbsp;60Hz, Anti-glare display ,250nits,&nbsp;45% NTSC color gamut,&nbsp;Screen-to-body ratio 82%</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Cổng giao tiếp</strong></td>
<td style="height: 22.4px;">
<ul>
<li>1x USB 2.0 Type-A</li>
<li>1x USB 3.2 Gen 1 Type-C</li>
<li>2x USB 3.2 Gen 1 Type-A</li>
<li>1x HDMI 1.4</li>
<li>1x giắc tai nghe 3.5mm</li>
<li>1x DC-in</li>
</ul>
</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Led-Keyboard</strong></td>
<td>Kh&ocirc;ng LED</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Bảo mật</strong></td>
<td style="height: 22.4px;">V&acirc;n tay</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><a href="http://gearvn.com/collections/thiet-bi-tai-nghe-loa-audio-chuyen-nghiep" target="_blank" rel="noopener"><strong>Audio</strong></a></td>
<td>SonicMaster</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Đọc thẻ nhớ</strong></td>
<td style="height: 22.4px;">None</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Chuẩn LAN</strong></td>
<td style="height: 22.4px;">None</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Chuẩn WIFI</strong></td>
<td style="height: 22.4px;">Wi-Fi 6E(802.11ax) (Dual band) 1*1</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Bluetooth</strong></td>
<td style="height: 22.4px;">v5.0</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong><a href="https://gearvn.com/collections/webcam">Webcam</a></strong></td>
<td>720p HD camera With privacy shutter</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Hệ điều h&agrave;nh</strong></td>
<td>Windows 11 Home</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Pin</strong></td>
<td style="height: 22.4px;">42WHrs, 3S1P, 3-cell Li-ion</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Trọng lượng</strong></td>
<td style="height: 22.4px;">1.40 kg</td>
</tr>
<tr>
<td><strong>M&agrave;u sắc</strong></td>
<td>Transparent Silver</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Kích thước</strong></td>
<td>32.49 x 21.39 x 1.79 ~ 1.79 cm</td>
</tr>
</tbody>
</table>
<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Asus Vivobook X1404VA NK124W</strong></h2>
<p>Asus Vivobook l&agrave; d&ograve;ng&nbsp;<a href="https://gearvn.com/pages/laptop-van-phong" target="_blank" rel="noopener">laptop văn ph&ograve;ng</a>&nbsp;sở hữu hiệu năng tốt cho mọi t&aacute;c vụ c&ocirc;ng việc. V&agrave;&nbsp;Asus Vivobook X1404VA NK124W cũng kh&ocirc;ng phải l&agrave; ngoại lệ. Kh&ocirc;ng chỉ đ&aacute;p ứng tốt mọi y&ecirc;u cầu của người d&ugrave;ng m&agrave; c&ograve;n sở hữu một ngoại h&igrave;nh v&ocirc; c&ugrave;ng hiện đại. Nếu bạn đang t&igrave;m kiếm chiếc laptop ưng&nbsp;&yacute; trong học tập v&agrave; l&agrave;m việc th&igrave; kh&ocirc;ng thể bỏ qua sản phẩm n&agrave;y của nh&agrave; Asus.</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-x1404va-nk124w-1_fbdd4fff97374ccfba8f6d2a7076fc13.webp" alt="" width="480" height="480"></p>
<h3><strong>Thiết kế sang trọng, độc đ&aacute;o</strong></h3>
<p>Laptop&nbsp;<a href="https://gearvn.com/collections/laptop-asus-vivobook-series" target="_blank" rel="noopener">Asus Vivobook</a>&nbsp;X1404VA sở hữu một m&agrave;u bạc&nbsp;sang trọng&nbsp;với thiết kế vu&ocirc;ng vắn đầy tinh tế. Vỏ m&aacute;y cứng c&aacute;p tạo niềm tin tưởng cho người d&ugrave;ng khi sử dụng. Bản lề được gia cố chắcn chắn với khả năng mở rộng l&ecirc;n đến 180 độ. Điều n&agrave;y mang lại sự thuận lợi trong việc trao đổi th&ocirc;ng tin với những người xung quanh.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-x1404va-nk124w-10_94fe7c815487433eaab2473e2812cd60.webp" alt="" width="1034" height="515"></p>
<h3><strong>Cấu h&igrave;nh vượt trội tr&ecirc;n laptop ASUS Vivobook X1404VA NK124W</strong></h3>
<p>Sử dụng bộ vi xử l&yacute; Intel core&nbsp;i3-1315U&nbsp;mạnh mẽ cho ph&eacute;p Asus Vivobook X1404VA NK124W giải quyết mọi t&aacute;c vụ văn ph&ograve;ng cơ bản đến n&acirc;ng cao. Việc l&agrave;m đồ họa cơ bản tr&ecirc;n m&aacute;y cũng được hỗ trợ với VGA t&iacute;ch hợp Intel&reg; UHD Graphics. 8GB RAM&nbsp;<a href="https://gearvn.com/collections/ddr4-8gb" target="_blank" rel="noopener">DDR4</a>&nbsp;xử l&yacute; đa nhiệm nhanh ch&oacute;ng cho những thao t&aacute;c mượt m&agrave;. Bộ lưu trữ SSD 256GB thỏa sức lưu trữ c&aacute;c dữ liệu quan trọng m&agrave; người d&ugrave;ng cần. Đ&acirc;y sẽ l&agrave; cộng sự ho&agrave;n hảo để giải quyết tất tần tật c&aacute;c c&ocirc;ng việc nhanh ch&oacute;ng.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-x1404va-nk124w-12_1625d5f0d28642428429a98eda036a21.webp" alt="" width="710" height="595"></p>
<h3><strong>Chất lượng h&igrave;nh ảnh ch&acirc;n thực</strong></h3>
<p><a href="https://gearvn.com/collections/laptop-asus" target="_blank" rel="noopener">Laptop Asus</a>&nbsp;Vivobook sở hữu m&agrave;n h&igrave;nh 14inch&nbsp;Full HD với độ ph&acirc;n giải 1920x1080.&nbsp;Độ s&aacute;ng 250 nits c&ugrave;ng tấm nền chống ch&oacute;i thể hiện tốt trong việc mang lại h&igrave;nh ảnh sắc n&eacute;t ở&nbsp;nhiều điều kiện &aacute;nh s&aacute;ng. Tần số qu&eacute;t 60Hz với độ l&agrave;m tươi h&igrave;nh ảnh tốt t&aacute;i hiện sinh động từng chi tiết đem lại từng gi&acirc;y ph&uacute;t giải tr&iacute; tuyệt vời tr&ecirc;n&nbsp;Vivobook X1404VA. G&oacute;c m&aacute;y rộng 178 độ hỗ trợ việc quan s&aacute;t ở nhiều g&oacute;c độ đến m&agrave;n h&igrave;nh&nbsp;<a href="https://gearvn.com/collections/laptop-cao-cap-mong-nhe" target="_blank" rel="noopener">laptop mỏng nhẹ</a>&nbsp;Asus Vivobook lu&ocirc;n chất lượng, hạn chế nhiều thay đổi biến dạng h&igrave;nh ảnh.&nbsp;<br><br><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-x1404va-nk124w-18_0c85e54fcf344eb99a27db366958522e_grande.webp" alt="" width="600" height="600"></p>
<h3><strong>B&agrave;n ph&iacute;m v&agrave; bảo mật</strong></h3>
<p>Đ&acirc;y c&oacute; lẽ l&agrave; sản phẩm&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-sinh-sinh-vien" target="_blank" rel="noopener">laptop cho sinh vi&ecirc;n</a>&nbsp;ho&agrave;n hảo với thiết kế b&agrave;n ph&iacute;m tối ưu cho việc nhập liệu hằng ng&agrave;y. Thiết kế bề mặt l&otilde;m 0.2mm tạo chiều s&acirc;u cho mỗi lượt click được chắc chắn. Kết hợp c&ugrave;ng h&agrave;nh tr&igrave;nh ph&iacute;m d&agrave;i 1.4mm với độ nảy ổn định hỗ trợ c&aacute;c thao t&aacute;c nhanh v&agrave; ch&iacute;nh x&aacute;c.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-x1404va-nk124w-14_5946ca14cf854fcdbe58e4e745756562.webp" alt="" width="403" height="356"></p>
<p>Bảo mật th&ocirc;ng minh chỉ với một chạm cực nhạy. Bỏ qua việc nhập mật khẩu thủ c&ocirc;ng trước đ&acirc;y để tăng t&iacute;nh chuy&ecirc;n nghiệp cũng như bảo vệ an to&agrave;n cho c&aacute;c dữ liệu b&ecirc;n trong m&aacute;y. Camera t&iacute;ch hợp nắp đậy vật l&yacute; nhằm bảo vệ quyền ri&ecirc;ng tư tuyệt đối khi kh&ocirc;ng sử dụng đến.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-x1404va-nk124w-21_6fc7560449ed4b468da5e4a12a6e650f.webp" alt="" width="1000" height="1000"></p>
<h3><strong>Trang bị nhiều cổng kết nối</strong></h3>
<p>Dọc hai b&ecirc;n cạnh của&nbsp;<a href="https://gearvn.com/collections/laptop" target="_blank" rel="noopener">laptop</a>&nbsp;Asus Vivobook X1404VA NK124W l&agrave; c&aacute;c cổng kết nối phổ biến hiện nay. Bao gồm c&aacute;c cổng USB 2.0&nbsp;Type-A, USB 3.2 Type-A Gen 1, USB 3.2 Type-C Gen 1, HDMI 1.4 v&agrave; jack tai nghe 3.5mm. Phục vụ nhu cầu kết nối với nhiều thiết bị ngoại vi kh&aacute;c để sử dụng trong c&ocirc;ng việc v&agrave; học tập hằng ng&agrave;y.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-asus-vivobook-x1404va-nk124w-16_94089d31afb34ea39c8e36a7b292ecb6.webp" alt="" width="1000" height="1000"></p>
<p>&nbsp;</p>', 13990000.0000, 6, NULL, 40, 9, 1, CAST(N'2021-02-11T11:55:00.000' AS DateTime), CAST(N'2023-06-08T00:25:32.377' AS DateTime), 24, 0, N'nk124w_1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (3, N'Laptop Dell Inspiron 15 3520 70296960', 1, 1, N'<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>
<table style="border-collapse: collapse; width: 100.035%; height: 380.8px;" border="1"><colgroup><col style="width: 49.9823%;"><col style="width: 49.9823%;"></colgroup>
<tbody>
<tr style="height: 22.4px;">
<td style="text-align: center; height: 22.4px;"><strong>T&ecirc;n</strong></td>
<td style="text-align: center; height: 22.4px;"><strong>Chi tiết</strong></td>
</tr>
<tr style="height: 67.2px;">
<td style="height: 67.2px;"><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener"><strong>CPU</strong></a></td>
<td style="height: 67.2px;">Intel(R) Core(TM) i5-1235U Processor (12MB Cache, up to 4.4 GHz)</td>
</tr>
<tr style="height: 44.8px;">
<td style="height: 44.8px;"><strong><a href="https://gearvn.com/collections/ram-laptop" target="_blank" rel="noopener">RAM</a></strong></td>
<td style="height: 44.8px;">1 x 8GB DDR4 2666MHz (2x SO-DIMM socket, up to 16GB SDRAM)</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><a href="https://gearvn.com/collections/hdd-o-cung-laptop" target="_blank" rel="noopener"><strong>Ổ cứng</strong></a></td>
<td style="height: 22.4px;">512GB&nbsp;<a href="https://gearvn.com/collections/ssd-o-cung-the-ran" target="_blank" rel="noopener">SSD</a>&nbsp;NVMe PCIe (1 Slot)</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><a href="https://gearvn.com/collections/vga-card-man-hinh" target="_blank" rel="noopener"><strong>Card đồ họa</strong></a></td>
<td style="height: 22.4px;">NVIDIA GeForce MX550 2 GB</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><a href="https://gearvn.com/pages/man-hinh" target="_blank" rel="noopener"><strong>M&agrave;n h&igrave;nh</strong></a></td>
<td style="height: 22.4px;">15.6 Inch FHD (1920 x 1080),120Hz, Anti- Glare, WVA, LED-Backlit, Độ s&aacute;ng 250 nit</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Wireless</strong></td>
<td style="height: 22.4px;">802.11ax 2x2 WiFi</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>LAN</strong></td>
<td style="height: 22.4px;">10/100 Mbps</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Bluetooth</strong></td>
<td style="height: 22.4px;">v5.2</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Cổng giao tiếp</strong></td>
<td style="height: 22.4px;">
<ul>
<li>1x USB 3.2 Gen 1 Type-C với DisplayPort 1.4</li>
<li>3x USB 3.2 Gen 1</li>
<li>1x USB 2.0</li>
<li>1x Cổng tai nghe (kết hợp tai nghe v&agrave; micr&ocirc;)</li>
<li>1x HDMI 1.4 (Hỗ trợ qua HDMI 1920x1080 @ 60Hz, kh&ocirc;ng c&oacute; đầu ra 4K/2K)</li>
</ul>
</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><a href="https://gearvn.com/collections/webcam" target="_blank" rel="noopener"><strong>Webcam</strong></a></td>
<td style="height: 22.4px;">HD Webcam</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Audio</strong></td>
<td style="height: 22.4px;">Realtek ALC3204, &acirc;m thanh Realtek</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Pin</strong></td>
<td style="height: 22.4px;">3-cell Li-ion, 41 Wh</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Hệ điều h&agrave;nh</strong></td>
<td style="height: 22.4px;">Windows 11 Home + Office Home&amp;Student</td>
</tr>
<tr>
<td><strong>K&iacute;ch thước</strong></td>
<td>358.5 x235.56x 17.5 mm (D&agrave;i x Rộng x D&agrave;y)</td>
</tr>
<tr>
<td><strong>M&agrave;u sắc</strong></td>
<td>Carbon Black</td>
</tr>
<tr>
<td><strong>Trọng lượng</strong></td>
<td>1.65 kg</td>
</tr>
</tbody>
</table>
<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Dell Inspiron 15 3520 70296960</strong></h2>
<p>T&ugrave;y theo nhiều nhu cầu kh&aacute;c nhau m&agrave; c&oacute; nhiều d&ograve;ng sản phẩm laptop Dell kh&aacute;c nhau. Nếu bạn đang t&igrave;m một chiếc laptop phục vụ cho nhu cầu học tập v&agrave; l&agrave;m việc hằng ng&agrave;y th&igrave;&nbsp;<strong><a href="https://gearvn.com/collections/laptop-dell-inspiron-series" target="_blank" rel="noopener">Dell Inspiron</a>&nbsp;15 3520 70296960&nbsp;</strong>sẽ l&agrave; người bạn đồng h&agrave;nh cực tốt. cấu h&igrave;nh mạnh mẽ tr&ecirc;n thiết kế đơn giản mang lại hiệu năng giải quyết mọi c&ocirc;ng việc mượt m&agrave;, nhanh ch&oacute;ng.&nbsp;</p>
<h3><strong>Cấu h&igrave;nh ấn tượng</strong></h3>
<p><strong><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-15-3520-70296960_8573ad5d6c0842cc862dced9cbca8695_grande.webp" alt="" width="480" height="480"></strong></p>
<p>Dell Inspiron 15 3520 70296960 sử dụng bộ vi xử l&yacute; Intel Core i5 gen 12&nbsp;cho một sức mạnh khủng để giải quyết mọi t&aacute;c vụ văn ph&ograve;ng trơn tru v&agrave; mượt m&agrave; nhất. Hoạt động nhanh hơn, load mọi dữ liệu th&ocirc;ng tin mượt hơn khi trang bị th&ecirc;m 8GB RAM DDR4, hỗ trợ CPU tăng tốc độ phản hồi. Để sử dụng những phần mềm nặng kh&aacute;c, c&oacute; lẽ bạn n&ecirc;n n&acirc;ng cấp th&ecirc;m RAM với 2 slot RAM để c&oacute; thể chạy nhiều t&aacute;c vụ nặng được mượt m&agrave; hơn.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-15-3520-70296960-6_08c5db4da70b4996aa13557351a21cef_grande.webp" alt="" width="480" height="480"></p>
<p>Bộ nhớ 512GB SSD cho khả năng lưu trữ đ&aacute;ng kinh ngạc, giải quyết ho&agrave;n to&agrave;n mọi lo lắng về lưu trữ những tệp c&oacute; dữ liệu lớn nhanh hơn bao giờ hết. B&ecirc;n cạnh đ&oacute;, mọi thao t&aacute;c khi bạn sử dụng PS, AI, PR,... đều c&oacute; thể diễn ra mượt m&agrave; nhờ laptop được t&iacute;ch hợp card đồ họa NVIDIA GeForce MX550 2 GB.</p>
<h3><strong>Thiết kế Dell Inspiron 15 đơn giản, thu h&uacute;t</strong></h3>
<p><strong><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-15-3520-70296960-1_69ae09b5b6794d7cae9d4b4dfea2905c_grande.webp" alt="" width="480" height="480"></strong></p>
<p><a href="https://gearvn.com/collections/laptop-dell-hoc-tap-va-lam-viec" target="_blank" rel="noopener">Laptop Dell</a>&nbsp;Inspiron 15 được h&atilde;ng sản xuất v&ocirc; c&ugrave;ng đơn giản nhưng lại v&ocirc; c&ugrave;ng bền bỉ. Với những người đ&atilde; sở hữu cho m&igrave;nh những con laptop từ Dell chắc hẳn kh&ocirc;ng qu&aacute; xa lạ về độ bền m&agrave; n&oacute; mang lại. Sở hữu t&ocirc;ng m&agrave;u&nbsp;Carbon Black đơn giản,&nbsp;sang trọng&nbsp;nhưng v&ocirc; c&ugrave;ng tinh tế với phần logo Dell in ch&igrave;m ch&iacute;nh giữa bề mặt m&aacute;y. Nếu c&ocirc;ng việc của bạn thường xuy&ecirc;n phải di chuyển th&igrave; đừng lo khi trọng lượng si&ecirc;u nhẹ của m&aacute;y sẽ dễ d&agrave;ng đồng h&agrave;nh c&ugrave;ng bạn đi đến bất cứ đ&acirc;u.&nbsp;</p>
<h3><strong>M&agrave;n h&igrave;nh g&oacute;c rộng, độ sắc n&eacute;t cao<br><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-15-3520-70296960-4_e4ade0a21b934f5c8944d5474d363e19_grande.webp" alt="" width="480" height="480"><br></strong></h3>
<p><a href="https://gearvn.com/collections/laptop" target="_blank" rel="noopener">Laptop</a>&nbsp;sở hữu k&iacute;ch thước m&agrave;n h&igrave;nh 15.6 inch với độ ph&acirc;n giải FHD (1920x1080), vừa đủ để thực hiện c&ocirc;ng việc, giải tr&iacute; v&agrave; s&aacute;ng tạo một c&aacute;ch trọn vẹn. Đường viền được thiết kế hẹp hơn ở 2 b&ecirc;n nhằm mở rộng kh&ocirc;ng gian cho bạn c&oacute; g&oacute;c nh&igrave;n thoải m&aacute;i hơn. H&igrave;nh ảnh ch&acirc;n thật, m&agrave;u sắc sống động, độ chống l&oacute;a tốt tăng trải nghiệm v&agrave;o những thời gian sử dụng hiệu quả nhất.&nbsp;</p>
<h3><strong>Cổng giao tiếp đa dạng</strong></h3>
<p><strong><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-15-3520-70296960-5_6f410a2ec4b147878b938d2967e01ca9_grande.webp" alt="" width="480" height="480"></strong></p>
<p>Dell Inspiron 15&nbsp;được trang bị đầy đủ c&aacute;c cổng kết nối đa dạng để bạn c&oacute; thể kết nối c&aacute;c thiết bị ngoại vi như&nbsp;<a href="https://gearvn.com/pages/chuot-may-tinh" target="_blank" rel="noopener">chuột m&aacute;y t&iacute;nh</a>, m&agrave;n h&igrave;nh rời,..c&ugrave;ng nhiều phụ kiện kh&aacute;c dễ d&agrave;ng hơn. Dell đ&atilde; gắn tr&ecirc;n người &ldquo;đứa con tinh thần&rdquo; Dell Inspiron của m&igrave;nh những cổng kết nối ph&ugrave; hợp nhất:</p>
<ul>
<li>1x USB 3.2 Gen 1 Type-C với DisplayPort 1.4</li>
<li>3x USB 3.2 Gen 1</li>
<li>1x USB 2.0</li>
<li>1x Cổng tai nghe (kết hợp tai nghe v&agrave; micr&ocirc;)</li>
</ul>
<p>1x HDMI 1.4 (Hỗ trợ qua HDMI 1920x1080 @ 60Hz, kh&ocirc;ng c&oacute; đầu ra 4K/2K)<img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-15-3520-70296960-2_cfdd0a78ef344c3db78a0af70e5056a9_grande.webp" alt="" width="480" height="480">Đ&acirc;y hứa hẹn ch&iacute;nh l&agrave; chiếc&nbsp;<a href="https://gearvn.com/collections/laptop-hoc-sinh-sinh-vien" target="_blank" rel="noopener">laptop cho sinh vi&ecirc;n</a>&nbsp;đ&aacute;ng đầu tư nhất trong m&ugrave;a&nbsp;<a href="https://gearvn.com/blogs/thu-thuat-giai-dap/back-to-school-la-gi" target="_blank" rel="noopener">back to school</a>&nbsp;n&agrave;y. Hay bạn l&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng cần một chiếc&nbsp;<a href="https://gearvn.com/collections/laptop-cao-cap-mong-nhe" target="_blank" rel="noopener">laptop mỏng nhẹ</a>&nbsp;với hiệu năng ổn định để giải quyết mọi c&ocirc;ng việc th&igrave; Dell Inspiron 15 3520 70296960 vẫn rất xứng đ&aacute;ng để bạn c&acirc;n nhắc.</p>', 22390000.0000, 8, NULL, 45, 9, 1, CAST(N'2021-01-04T08:45:00.000' AS DateTime), CAST(N'2023-06-08T00:44:42.963' AS DateTime), 24, 0, N'khung-lt-van-phong_1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (4, N'Laptop Dell Inspiron 14 5420 i5U085W11SLU', 1, 1, N'<h2><strong>Th&ocirc;ng số kỹ thuật:</strong></h2>
<table style="border-collapse: collapse; width: 99.9815%; height: 336px;" border="1"><colgroup><col style="width: 50.01%;"><col style="width: 50.01%;"></colgroup>
<tbody>
<tr style="height: 22.4px;">
<td style="text-align: center; height: 22.4px;"><strong>T&ecirc;n</strong></td>
<td style="text-align: center; height: 22.4px;"><strong>Chi Tiết</strong></td>
</tr>
<tr style="height: 44.8px;">
<td style="height: 44.8px;"><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener"><strong>CPU</strong></a></td>
<td style="height: 44.8px;">Intel Core i5-1235U Processor (12MB Cache, up to 4.4 GHz)</td>
</tr>
<tr style="height: 44.8px;">
<td style="height: 44.8px;"><strong><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener">RAM</a></strong></td>
<td style="height: 44.8px;">8GB DDR4 3200MHz (2x SO-DIMM socket, up to 16GB SDRAM)</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener"><strong>Ổ cứng</strong></a></td>
<td style="height: 22.4px;">512GB M.2 PCIe NVMe&nbsp;<a href="https://gearvn.com/collections/ssd-o-cung-the-ran" target="_blank" rel="noopener">SSD</a></td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener"><strong>Card đồ họa</strong></a></td>
<td style="height: 22.4px;">Intel UHD Graphics</td>
</tr>
<tr style="height: 89.6px;">
<td style="height: 89.6px;"><a href="https://gearvn.com/collections/cpu-bo-vi-xu-ly" target="_blank" rel="noopener"><strong>M&agrave;n h&igrave;nh</strong></a></td>
<td style="height: 89.6px;">14.0-inch 16:10 FHD+ (1920 x 1200),60Hz, Anti-Glare Non-Touch 250nits WVA Display with ComfortView Support</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Wireless</strong></td>
<td style="height: 22.4px;">802.11ax 2x2 WiFi</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>LAN</strong></td>
<td style="height: 22.4px;">None</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Bluetooth</strong></td>
<td style="height: 22.4px;">v5.2</td>
</tr>
<tr style="height: 22.4px;">
<td style="height: 22.4px;"><strong>Cổng giao tiếp</strong></td>
<td>1 x USB 3.2 Gen 2x2 Type-C port with DisplayPort and Power Delivery<br>2 x USB 3.2 Gen 1 ports (on systems configured with non Type-C&reg;)<br>1 x headset (headphone and microphone combo) port<br>1 x HDMI 1.4 port<br>One SD card slot</td>
</tr>
<tr>
<td><strong><a href="https://gearvn.com/collections/webcam" target="_blank" rel="noopener">Webcam</a></strong></td>
<td>FHD Webcam</td>
</tr>
<tr>
<td><strong>Audio</strong></td>
<td>Realtek ALC3204, &acirc;m thanh Realtek</td>
</tr>
<tr>
<td><strong>Pin</strong></td>
<td>4-Cell Battery, 54WHr</td>
</tr>
<tr>
<td><strong>Hệ điều h&agrave;nh</strong></td>
<td>Windows 11 Home + Office Home&amp;Student</td>
</tr>
<tr>
<td><strong>K&iacute;ch thước</strong></td>
<td>314.00 x235.56x 18.37 mm (D&agrave;i x Rộng x D&agrave;y)</td>
</tr>
<tr>
<td><strong>Trọng lượng</strong></td>
<td>1.55 kg</td>
</tr>
<tr>
<td><strong>M&agrave;u sắc</strong></td>
<td><strong>M&agrave;u sắc</strong></td>
</tr>
</tbody>
</table>
<h2><strong>Đ&aacute;nh gi&aacute; chi tiết laptop Dell Inspiron 14 5420 i5U085W11SLU</strong></h2>
<p>L&agrave; một trong những c&aacute;i t&ecirc;n quen thuộc trong l&agrave;ng&nbsp;<a href="https://gearvn.com/collections/laptop-cao-cap-mong-nhe" target="_blank" rel="noopener">laptop mỏng nhẹ</a>, cao cấp, Dell lại cho ra mắt một sản phẩm mới thuộc ph&acirc;n kh&uacute;c&nbsp;<a href="https://gearvn.com/pages/laptop-van-phong" target="_blank" rel="noopener">laptop văn ph&ograve;ng</a>. Sở hữu ngoại h&igrave;nh thu h&uacute;t v&agrave; hiệu năng ổn định,&nbsp;<strong>Dell Inspiron 14 5420 i5U085W11SLU</strong>&nbsp;hứa hẹn trở th&agrave;nh c&aacute;i t&ecirc;n hot mới cho người d&ugrave;ng trong thời gian tới.</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-14-n5420-i5u085w11slu-1_70289b781bf64d488809ce6da17c415e.webp" alt="" width="480" height="480"></p>
<h3><strong>Thiết kế sang trọng, mỏng nhẹ</strong></h3>
<p><a href="https://gearvn.com/collections/laptop-dell-inspiron-series" target="_blank" rel="noopener">Dell Inspiron</a>&nbsp;14 5420 i5U085W11SLU sở hữu vẻ ngo&agrave;i sang trọng với lớp m&agrave;u Platinum Silver qu&yacute; ph&aacute;i, v&ocirc; c&ugrave;ng nổi bật trong m&ocirc;i trường văn ph&ograve;ng v&agrave; học tập. Nhờ trọng lượng nhẹ, Dell Inspiron 14 v&ocirc; c&ugrave;ng th&iacute;ch hợp để bạn di chuyển đi đến bất cứ đ&acirc;u.</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-14-n5420-i5u085w11slu-6_e9f323e1a9b94ca5b65e6a8e27c2bd49.webp" alt="" width="480" height="372"></p>
<p>Laptop cũng được trang bị th&ecirc;m thiết kế bản lề th&ocirc;ng minh, cho ph&eacute;p n&acirc;ng b&agrave;n ph&iacute;m laptop l&ecirc;n một g&oacute;c nhất định, gi&uacute;p đem lại cảm gi&aacute;c g&otilde; ph&iacute;m thoải m&aacute;i v&agrave; thuận tiện nhất.</p>
<h3><strong>M&agrave;n h&igrave;nh sắc n&eacute;t, hiện đại</strong></h3>
<p>Sở hữu m&agrave;n h&igrave;nh k&iacute;ch thước 14 inch c&oacute; độ ph&acirc;n giải Full HD+, Dell Inspiron 14 cho ra những khung h&igrave;nh sắc n&eacute;t, ch&acirc;n thực v&agrave; v&ocirc; c&ugrave;ng nịnh mắt. Kết hợp với c&ocirc;ng nghệ g&oacute;c nh&igrave;n rộng WVA, bạn c&oacute; thể dễ d&agrave;ng quan s&aacute;t m&agrave;n h&igrave;nh laptop từ bất kỳ vị tr&iacute; n&agrave;o.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-14-n5420-i5u085w11slu-3_0f99cc7970104d6ea5e3aace34264267.webp" alt="" width="480" height="306"></p>
<p>Một điểm đặc biệt tr&ecirc;n m&agrave;n h&igrave;nh Dell Inspiron 14 ch&iacute;nh l&agrave; n&oacute; sở hữu m&agrave;n h&igrave;nh tỷ lệ 16:10 mới, gi&uacute;p mở rộng khả năng hiển thị của laptop. Bạn c&oacute; thể thoải m&aacute;i l&agrave;m việc, học tập v&agrave; chia nhỏ cửa sổ một c&aacute;ch dễ d&agrave;ng. Quả thật l&agrave; một sự lựa chọn tuyệt vời cho ph&acirc;n kh&uacute;c laptop văn ph&ograve;ng.</p>
<h3><strong>Cấu h&igrave;nh Dell Inspiron 14 mạnh mẽ</strong></h3>
<p>Dell Inspiron 14 5420 i5U085W11SLU mang đến cho người d&ugrave;ng bộ vi xử l&yacute; Intel Core i5 thế hệ 12 mới nhất hiện nay để mang đến một tốc độ xử l&yacute; c&ocirc;ng việc nhanh ch&oacute;ng. Kết hợp với 8GB RAM để người d&ugrave;ng c&oacute; thể mở nhiều tab c&ocirc;ng việc c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng xảy ra t&igrave;nh trạng giật, lag.&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-14-n5420-i5u085w11slu-2_b9e5f4dfe4474898b191bbf84eeff784.webp" alt="" width="480" height="401"></p>
<p>Ổ lưu trữ SSD với dung lượng 512GB cho khả năng đọc file, khởi động laptop v&agrave; ứng dụng chỉ trong v&agrave;i gi&acirc;y cũng như cung cấp một kh&ocirc;ng gian lưu trữ lớn, bạn c&oacute; thể tha hồ lưu trữ dữ liệu quan trọng&nbsp;</p>
<h3><strong>Cổng kết nối v&agrave; khả năng bảo mật</strong></h3>
<p>Cảm biến v&acirc;n tay được t&iacute;ch hợp tr&ecirc;n b&agrave;n ph&iacute;m của Dell Inspiron 14 gi&uacute;p bạn dễ d&agrave;ng thao t&aacute;c mở m&aacute;y v&agrave; bảo vệ quyền ri&ecirc;ng tư tối đa. Laptop cũng được trang bị đầy đủ mọi cổng kết nối th&ocirc;ng dụng v&agrave; đa dạng. Bạn c&oacute; thể thoải m&aacute;i kết nối với mọi thiết bị ngoại vi, n&acirc;ng cao trải nghiệm sử dụng của m&igrave;nh.</p>
<p>&nbsp;</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-14-n5420-i5u085w11slu-5_269e100c2c2a4ac6943c3cada7df3b6b.webp" alt="" width="468" height="480"></p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="imageProduct/gearvn-laptop-dell-inspiron-14-n5420-i5u085w11slu-4_c505d7240ae041f29cc99fe99b2078d6.webp" alt="" width="468" height="480"></p>
<p>&nbsp;</p>', 22990000.0000, 10, NULL, 35, 3, 1, CAST(N'2021-01-04T13:23:00.000' AS DateTime), CAST(N'2023-06-08T01:05:26.217' AS DateTime), 24, 0, N'i5u085w11slu_1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (5, N'Laptop Lenovo ThinkPad T14 Gen2 20W0016EVA', 5, 1, N'Intel® Core™ i5-1135G7 (4 Cores  8 Threads , 2.4 / 4.2GHz, 8MB)|8GB Soldered DDR4-3200 (Trống 1 slot Sodimm, nâng cấp tối đa 40GB)|512GB SSD M.2 2280 PCIe® 4.0x4 NVMe® Opal 2.0 (Còn trống 1 Slot M.2 2242 PCIe 3.0 x4)|	Intel Iris Xe Graphics (with dual channel memory)|14" FHD (1920x1080) IPS 300nits Anti-glare, 45% NTSC', 25990000.0000, 13, N'thinkpad_t14_gen_2_intel_ct2_02_ad4cc98475064347a7c9e62bf636f0a5.webp', 25, 3, 3, CAST(N'2021-11-12T10:02:00.000' AS DateTime), CAST(N'2021-11-12T10:02:00.000' AS DateTime), 24, 0, N'20w0016eva-1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (6, N'Laptop Lenovo IdeaPad 1 15AMN7 82VG0022VN', 5, 1, N'AMD Ryzen™ 5 7520U (4 Cores  8 Threads, 2.8GHz up to 4.3GHz, 2MB L2 / 4MB L3)|8GB Soldered LPDDR5-5500 (Không nâng cấp)|512GB SSD M.2 2242 PCIe® 4.0x4 NVMe®|Integrated AMD Radeon™ 610M Graphics|15.6" FHD (1920x1080) TN 220nits Anti-glare', 18990000.0000, 5, N'638071468607580413_Lenovo IdeaPad 1 15AMN700733.webp', 23, 3, 3, CAST(N'2021-11-12T10:05:00.000' AS DateTime), CAST(N'2021-11-12T10:05:00.000' AS DateTime), 24, 0, N'gearvn-laptop-lenovo-ideapad-1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (7, N'Laptop HP Pavilion 14 dv2036TU 6K772PA', 1, 1, N'Intel Core i5-1235U 1.3GHz up to 4.4GHz 12MB|	8GB (4x2) DDR4 3200MHz (2x SO-DIMM socket, up to 16GB SDRAM)|256 GB PCIe NVMe M.2 SSD (1 slot)|Intel Iris Xe Graphics|14 inch FHD (1920 x 1080) IPS, micro-edge, BrightView, 250 nits, 45% NTSC', 17990000.0000, 9, N'text_ng_n_7__47_2.webp', 26, 9, 9, CAST(N'2021-05-12T16:05:00.000' AS DateTime), CAST(N'2021-05-12T16:05:00.000' AS DateTime), 24, 0, N'laptopHP-1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (8, N'Laptop HP Spectre x360 14 ef0030TU 6K773PA', 1, 1, N'Intel Core i7-1255U 1.7GHz up to 4.7GHz 12MB|16GB LPDDR4x 4266MHz (Onboard)|1TB PCIe NVMe TLC M.2 SSD|Intel Iris Xe Graphics|13.5 inch 3K2K (3000 x 2000), OLED, multitouch-enabled, UWVA, edge-to-edge glass, micro-edge, anti-reflection Corning Gorilla Glass NBT, Low Blue Light, SDR 400 nits, HDR 500 nits, 100% DCI-P3', 51990000.0000, 0, N'7719_hp_pavilion_x360_i3_2022_anh_chinh.jpg', 31, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'LaptopHPSpectre-1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (9, N'Tai nghe Gaming Logitech G Pro Gen 2', 11, 5, NULL, 2900000.0000, 5, N'tai-nghe-gaming-logitech-g-pro-gen-2-1.webp', 23, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'tai-nghe-gaming-logitech-g-pro-gen-2-1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (10, N'Tai nghe Logitech G435 Lightspeed Wireless Black', 11, 5, NULL, 1790000.0000, 5, N'gearvn-tai-nghe-logitech-g435-lightspeed-wireless-black-2.webp', 27, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'gearvn-tai-nghe-logitech-g435-lightspeed-wireless-black-1.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (11, N'Tai nghe Razer Kraken X for Console', 12, 5, NULL, 1400000.0000, 6, N'hp-raz-kraken-x_8fed3eeaecbe4f92b715a8bb3e5c3c30.webp', 30, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'gearvn-tai-nghe-razer-kraken-x-for-console.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (12, N'Chuột Logitech G203 LightSync Lilac', 11, 3, NULL, 599000.0000, 4, N'gearvn-chuot-logitech-g203-lightsync-lilac-1_652a8d19710e4a619a26003853d06cb3.webp', 35, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'chu-g203-liac_bc8352c7e86b43cb86fc13cbf92bdc97.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (13, N'Chuột ASUS ROG Harpe Ace Aim Lab Edition', 3, 3, NULL, 3490000.0000, 6, N'gearvn-chuot-asus-rog-harpe-ace-aim-lap-edition-1_4238499bc41d4bc3966ead39d01cc6cd.webp', 25, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'gearvn-chuot-asus-rog-harpe-ace-aim-lap-edition-1_37cafa812da94df3872eb2058056fc31.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (14, N'Chuột Razer Deathadder Essential', 12, 3, NULL, 1290000.0000, 15, N'rggfdgfgf_4d09a2d44ff148879607045b179faa88.webp', 33, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'chu-raz-essential-black_75eccf080661457b94379de5519a0c7d.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (15, N'Bàn phím Logitech G Pro X', 11, 4, NULL, 3790000.0000, 10, N'gearvn-logitech-g-pro-01_grande_694ea6b132e748cd9124d27ddc2ff82e.webp', 35, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'thumbphim_9fb12e4f19d94b31aeb8cc81546d86df.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (16, N'Bàn phím Corsair K60 Pro SE RGB', 13, 4, NULL, 2490000.0000, 8, N'gearvn-ban-phim-corsair-k60-pro-se-rgb-666_8be67ac6d22e4a1d8a3d7a294a17ceca.webp', 27, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'bp-corsair-k60-prose_710a91338a094c329acc895ef1d8479e.webp', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [BrandID], [CategoryID], [Description], [UnitPrice], [Discount], [Img], [UnitInStock], [CreatedBy], [ModifiedBy], [CreatedDate], [ModifiedDate], [Guarantee], [status], [LargeImage], [OtherDescription], [File]) VALUES (17, N'Bàn phím Razer Blackwidow V3 Mini HyperSpeed', 12, 4, NULL, 4690000.0000, 10, N'razer-blackwidow-v3-mini-hyperspeed-yellow-switch-2_3a465cd28fb24759a178b8e203cbacb8.webp', 34, 9, 9, CAST(N'2021-05-12T16:06:00.000' AS DateTime), CAST(N'2021-05-12T16:06:00.000' AS DateTime), 24, 0, N'bp-razer-blackwidow-v3-mini-hyperspeed_dabfcc307f334fbea590c3b21cbe0c5f.webp', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[RepairBill] ON 

INSERT [dbo].[RepairBill] ([BillID], [UserID], [StartDate], [EndDate], [TotalPrice], [Address]) VALUES (1, 1, CAST(N'2023-04-12T11:50:00.000' AS DateTime), CAST(N'2023-04-16T15:45:00.000' AS DateTime), 150000.0000, N' Số 16A ngách 12 ngõ 67 Tô Ngọc Vân, Phường Quảng An, Quận Tây Hồ, Hà Nội')
INSERT [dbo].[RepairBill] ([BillID], [UserID], [StartDate], [EndDate], [TotalPrice], [Address]) VALUES (2, 3, CAST(N'2023-03-14T08:50:00.000' AS DateTime), CAST(N'2023-03-17T15:45:00.000' AS DateTime), 180000.0000, N'462 Nguyễn Thị Định, Phường Thạnh Mỹ Lợi, Thành phố Thủ Đức, TP Hồ Chí Minh')
INSERT [dbo].[RepairBill] ([BillID], [UserID], [StartDate], [EndDate], [TotalPrice], [Address]) VALUES (3, 4, CAST(N'2023-03-16T08:50:00.000' AS DateTime), CAST(N'2023-03-20T15:45:00.000' AS DateTime), 180000.0000, N'462 Nguyễn Thị Định, Phường Thạnh Mỹ Lợi, Thành phố Thủ Đức, TP Hồ Chí Minh')
SET IDENTITY_INSERT [dbo].[RepairBill] OFF
GO
INSERT [dbo].[RepairBillDetails] ([BillID], [ProductID], [ErrorID], [Quantity], [Price]) VALUES (1, 1, 1, 1, 80000.0000)
INSERT [dbo].[RepairBillDetails] ([BillID], [ProductID], [ErrorID], [Quantity], [Price]) VALUES (2, 1, 8, 1, 100000.0000)
INSERT [dbo].[RepairBillDetails] ([BillID], [ProductID], [ErrorID], [Quantity], [Price]) VALUES (1, 4, 3, 1, 70000.0000)
INSERT [dbo].[RepairBillDetails] ([BillID], [ProductID], [ErrorID], [Quantity], [Price]) VALUES (3, 4, 8, 1, 100000.0000)
INSERT [dbo].[RepairBillDetails] ([BillID], [ProductID], [ErrorID], [Quantity], [Price]) VALUES (3, 5, 1, 1, 80000.0000)
INSERT [dbo].[RepairBillDetails] ([BillID], [ProductID], [ErrorID], [Quantity], [Price]) VALUES (2, 6, 1, 1, 80000.0000)
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Address], [Phone], [Email], [Password], [status], [img]) VALUES (1, N'Nguyễn Thị T', N'Số 17 Ngõ 40 Văn La, Phường Phú La, Quận Hà Đông, Hà Nội', N'0987463557', N'user123@gmail.com', N'123456', 1, N'vodanh.jpg')
INSERT [dbo].[User] ([UserID], [UserName], [Address], [Phone], [Email], [Password], [status], [img]) VALUES (2, N'Nguyễn Văn C', N'Lô 33, LK5 khu đô thị Tân Tây Đô, Xã Tân Lập, Huyện Đan Phượng, Hà Nội', N'0897465273', N'haha333@gmail.com', N'654321', NULL, N'vodanh.jpg')
INSERT [dbo].[User] ([UserID], [UserName], [Address], [Phone], [Email], [Password], [status], [img]) VALUES (3, N'Phạm Văn K', N'223 Hoàng Văn Thụ (K3.28 Cao ốc Kingston Residence), Phường 08, Quận Phú Nhuận, TP Hồ Chí Minh', N'0987654321', N'nui123@gmail.com', N'211321', NULL, N'vodanh.jpg')
INSERT [dbo].[User] ([UserID], [UserName], [Address], [Phone], [Email], [Password], [status], [img]) VALUES (4, N'Nguyễn Lê Bảo Vy', N'120 Vũ Tông Phan , Khu Phố 5, Phường An Phú, Thành phố Thủ Đức, TP Hồ Chí Minh', N'0123456789', N'bien321@gmail.com', N'567890', 1, N'vodanh.jpg')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AdminRole] ([RoleID])
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AdminRole] ([RoleID])
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AdminRole] ([RoleID])
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[AdminRole] ([RoleID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([OldGuaranteeID])
REFERENCES [dbo].[Guarantee] ([GuaranteeID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([OldGuaranteeID])
REFERENCES [dbo].[Guarantee] ([GuaranteeID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Guarantee]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[ImageProduct]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ImageProduct]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([NewsType])
REFERENCES [dbo].[NewsType] ([NewsTypeID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([NewsType])
REFERENCES [dbo].[NewsType] ([NewsTypeID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([NewsType])
REFERENCES [dbo].[NewsType] ([NewsTypeID])
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([NewsType])
REFERENCES [dbo].[NewsType] ([NewsTypeID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Admin] ([AdminID])
GO
ALTER TABLE [dbo].[RepairBill]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RepairBill]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RepairBill]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RepairBill]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([BillID])
REFERENCES [dbo].[RepairBill] ([BillID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([BillID])
REFERENCES [dbo].[RepairBill] ([BillID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([BillID])
REFERENCES [dbo].[RepairBill] ([BillID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([BillID])
REFERENCES [dbo].[RepairBill] ([BillID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([ErrorID])
REFERENCES [dbo].[Error] ([ErrorID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([ErrorID])
REFERENCES [dbo].[Error] ([ErrorID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([ErrorID])
REFERENCES [dbo].[Error] ([ErrorID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([ErrorID])
REFERENCES [dbo].[Error] ([ErrorID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[RepairBillDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
