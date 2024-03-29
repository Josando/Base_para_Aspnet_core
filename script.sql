USE [master]
GO
/****** Object:  Database [NETCORE21]    Script Date: 02/08/2019 9:10:59 ******/
CREATE DATABASE [NETCORE21]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NETCORE21', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\NETCORE21.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NETCORE21_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\NETCORE21_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NETCORE21] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NETCORE21].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NETCORE21] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NETCORE21] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NETCORE21] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NETCORE21] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NETCORE21] SET ARITHABORT OFF 
GO
ALTER DATABASE [NETCORE21] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NETCORE21] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NETCORE21] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NETCORE21] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NETCORE21] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NETCORE21] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NETCORE21] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NETCORE21] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NETCORE21] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NETCORE21] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NETCORE21] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NETCORE21] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NETCORE21] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NETCORE21] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NETCORE21] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NETCORE21] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [NETCORE21] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NETCORE21] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NETCORE21] SET  MULTI_USER 
GO
ALTER DATABASE [NETCORE21] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NETCORE21] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NETCORE21] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NETCORE21] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [NETCORE21] SET DELAYED_DURABILITY = DISABLED 
GO
USE [NETCORE21]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NickName] [nvarchar](max) NULL,
	[FamilyName] [nvarchar](max) NULL,
	[FacebookId] [bigint] NULL,
	[GoogleId] [bigint] NULL,
	[PictureUrl] [nvarchar](max) NULL,
	[Roles] [nvarchar](150) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentityId] [nvarchar](450) NULL,
	[Location] [nvarchar](max) NULL,
	[Locale] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partners]    Script Date: 02/08/2019 9:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentityId] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Locale] [nvarchar](max) NULL,
	[OwnerIdentityId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190507134435_InitialMigration', N'2.2.4-servicing-10062')
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON 

INSERT [dbo].[AspNetRoleClaims] ([Id], [RoleId], [ClaimType], [ClaimValue]) VALUES (1, N'5dda98e0-5df4-41e4-b7eb-b811b51eb710', N'ManagerPermissions', N'true')
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5dda98e0-5df4-41e4-b7eb-b811b51eb710', N'Admin', N'ADMIN', N'b76537ea-de3d-4ae6-ac40-b4a412497ec5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'88c15e94-4a68-4a04-a405-d59126d2f05a', N'5dda98e0-5df4-41e4-b7eb-b811b51eb710')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'0067d365-7333-461f-88f1-105562e75543', N'manolo@gmail.com', N'MANOLO@GMAIL.COM', N'manolo@gmail.com', N'MANOLO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPKEEhX9uI7zHaKPkRhwD4pYG85yRE2pgE3f25rHDAmBlysJbuI1UnTlgMTbfX4opw==', N'ZPDBU5H2HBQLJ5FOCCZ6OO4SQ6675SHT', N'784546a3-6db5-4387-abcb-92a7648e3b09', NULL, 0, 0, NULL, 1, 0, N'manolo', N'manolo', N'manolo', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'263411d0-bbe3-4b6c-8007-f2a87bafaff6', N'bogarde@gmail.com', N'BOGARDE@GMAIL.COM', N'bogarde@gmail.com', N'BOGARDE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEH+QkDtXoXGadILQ8GkkUOB9yUXmxw83J6yUtvLOzRThegMtKRKmFqs5qLEVxcd7GQ==', N'TVOYSG34N4CDXYACA32K2PR4KBW5PVKN', N'a9ffc5c0-cf8a-4fe0-a2d0-f119854f72d1', NULL, 0, 0, NULL, 1, 0, N'wiston', N'josando', N'bogarde', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'4e377153-e922-426b-95c4-309f460e34cd', N'manuel@gmail.com', N'MANUEL@GMAIL.COM', N'manuel@gmail.com', N'MANUEL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPJGd+n8VjJPWNjwkXBl7F7LMSsS1zz7VKiFWbD1E6WppoAb2ETEVpHoJcE5uVW5mw==', N'JMOWMQKBJ3BSHO2QYQ7FZ3UU2Z2GX3KP', N'fb8f7376-bce8-45f1-a583-80c87814ec9b', NULL, 0, 0, NULL, 1, 0, N'manuel', N'manuel', N'manuel', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'6971d112-69fc-4a26-b5bf-f04f368565f7', N'manoloaa@gmail.com', N'MANOLOAA@GMAIL.COM', N'manoloaa@gmail.com', N'MANOLOAA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECiD7kjPv8nmiNSuBRUBGas7Kc19uj3lFN6BHPFo7wpiuICU40MVW7lrzrs3vwHJ+g==', N'3WQFOQTMROQOGSSQHAXE5FW2BAPBULMP', N'233e7571-0468-4327-874d-7ebfb290505e', NULL, 0, 0, NULL, 1, 0, N'manoloaa', N'manoloaa', N'manoloaa', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'79360216-d775-4b59-8a01-ca80841a474f', N'manoloa@gmail.com', N'MANOLOA@GMAIL.COM', N'manoloa@gmail.com', N'MANOLOA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIc/fl7fa5PZP+1+0lcYXNLyJ1fg9KUzdA3Csqcjr8c+lgNtiwaSokhu5wJdGAh3/A==', N'S5NA7LWKMAQZN4JA2T5FKSWAGCSOTA4J', N'5a9b5525-a7e2-4b7d-ab61-10ffbcc16684', NULL, 0, 0, NULL, 1, 0, N'manoloa', N'manoloa', N'manoloa', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'7d0d3d9e-f023-401b-a675-fb59d384d73e', N'manuelsls@gmail.com', N'MANUELSLS@GMAIL.COM', N'manuelsls@gmail.com', N'MANUELSLS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA2jf8ErovOraxO3AnR01LBlEBEOeY1SnlxQFgqMCuM1cuknvmxm4XY/zC0y+2Anaw==', N'7OMFHAUT5UYKTM6SEXXOU37ZMDL6B2ZD', N'475c88c5-6e2e-41f6-89c7-365b2430cd90', NULL, 0, 0, NULL, 1, 0, N'manuelss', N'manuelss', N'manuelss', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'88c15e94-4a68-4a04-a405-d59126d2f05a', N'josando@gmail.com', N'JOSANDO@GMAIL.COM', N'josando@gmail.com', N'JOSANDO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENESq2YicyKPU881nXzLDgfKtRatYb4XhJw7KV6IYg0t7SNzEnr7yy/RpcAbKM1rXA==', N'WW2VSBNLIQ4RQZ5VWMR6Y6RMZX7KAOTM', N'4d59e98f-ad2a-4136-84f1-676b8cb395e0', NULL, 0, 0, NULL, 1, 0, N'Jorge', N'josando', N'Los Sanchis', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'9f5871e0-34ae-4d67-ac05-d3a9803ec6ec', N'pepe@gmail.com', N'PEPE@GMAIL.COM', N'pepe@gmail.com', N'PEPE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHNELNq9QJDO7fs4sict536HBXFdYUYusMlxCkmodlmIxNJK4p+MD/X+jfmVll6BRQ==', N'KLRMZTIK3GFMXLYYFV6RIY37JBGN244L', N'e85c2bf3-489b-4b49-b415-d9b2b0f0ed2b', NULL, 0, 0, NULL, 1, 0, N'pepe', N'pepe', N'pepe', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'a7498ea1-31ef-442f-9a0b-971217d74536', N'manuell@gmail.com', N'MANUELL@GMAIL.COM', N'manuell@gmail.com', N'MANUELL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFeOESjI+lyS3cqczX3qGZlOklcbobBFOe1YjjffWDjC5yL+pN8DZpiF8EgLZeRF7Q==', N'MIBATE3B3H7YMUHIC2GWXQJ6AU272ASI', N'545ec830-cb41-4344-8130-61b057ade3b1', NULL, 0, 0, NULL, 1, 0, N'manuel', N'manuel', N'manuel', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'bc0b3999-541d-4cea-ac42-391952cb799e', N'epepep@gmail.com', N'EPEPEP@GMAIL.COM', N'epepep@gmail.com', N'EPEPEP@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFo2UH1eLEB7F7g2rgdT7GleXmXDT8J3Fn+48VGr1nnwD+lqKunkgqOyGTPYqVLN0Q==', N'46TSMT3YBXC5U6I66I6UFQW7L6DF5TTU', N'edea703e-a27e-40f9-b6d2-ae49a4017800', NULL, 0, 0, NULL, 1, 0, N'eppepepe', N'pepepe', N'pepepepep', NULL, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Name], [NickName], [FamilyName], [FacebookId], [GoogleId], [PictureUrl], [Roles]) VALUES (N'c453b4b9-63d3-49b5-b019-668adf7b12c4', N'manuelsl@gmail.com', N'MANUELSL@GMAIL.COM', N'manuelsl@gmail.com', N'MANUELSL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAlrxd6tldQvONYuWtHTG4GxgmfMh8omSnHO5s+ZMwA0Oy+OSDz+WEUcOUkC/8kYaA==', N'LVED4FSRRJ2B4H2OPF5DSDOSRAGTDRR3', N'e1fdfd5c-44c7-44a8-91ac-01f95b5210cc', NULL, 0, 0, NULL, 1, 0, N'manuels', N'manuels', N'manuels', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (1, N'88c15e94-4a68-4a04-a405-d59126d2f05a', N'Valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (2, N'9f5871e0-34ae-4d67-ac05-d3a9803ec6ec', N'valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (3, N'0067d365-7333-461f-88f1-105562e75543', N'valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (4, N'79360216-d775-4b59-8a01-ca80841a474f', N'valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (5, N'6971d112-69fc-4a26-b5bf-f04f368565f7', N'valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (6, N'4e377153-e922-426b-95c4-309f460e34cd', N'valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (7, N'a7498ea1-31ef-442f-9a0b-971217d74536', N'valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (8, N'c453b4b9-63d3-49b5-b019-668adf7b12c4', N'valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (9, N'7d0d3d9e-f023-401b-a675-fb59d384d73e', N'valencia', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (10, N'263411d0-bbe3-4b6c-8007-f2a87bafaff6', N'bruselas', NULL, NULL)
INSERT [dbo].[Customers] ([Id], [IdentityId], [Location], [Locale], [Gender]) VALUES (11, N'bc0b3999-541d-4cea-ac42-391952cb799e', N'pepepepe', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 02/08/2019 9:10:59 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 02/08/2019 9:10:59 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 02/08/2019 9:10:59 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 02/08/2019 9:10:59 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 02/08/2019 9:10:59 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 02/08/2019 9:10:59 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 02/08/2019 9:10:59 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Customers_IdentityId]    Script Date: 02/08/2019 9:10:59 ******/
CREATE NONCLUSTERED INDEX [IX_Customers_IdentityId] ON [dbo].[Customers]
(
	[IdentityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Partners_OwnerIdentityId]    Script Date: 02/08/2019 9:10:59 ******/
CREATE NONCLUSTERED INDEX [IX_Partners_OwnerIdentityId] ON [dbo].[Partners]
(
	[OwnerIdentityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_AspNetUsers_IdentityId] FOREIGN KEY([IdentityId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_AspNetUsers_IdentityId]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_AspNetUsers_OwnerIdentityId] FOREIGN KEY([OwnerIdentityId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_AspNetUsers_OwnerIdentityId]
GO
USE [master]
GO
ALTER DATABASE [NETCORE21] SET  READ_WRITE 
GO
