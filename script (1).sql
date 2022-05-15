USE [master]
GO
/****** Object:  Database [FastFood]    Script Date: 12/05/2022 16:08:47 ******/
CREATE DATABASE [FastFood]
 CONTAINMENT = NONE

GO
ALTER DATABASE [FastFood] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FastFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FastFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FastFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FastFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FastFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FastFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [FastFood] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FastFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FastFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FastFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FastFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FastFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FastFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FastFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FastFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FastFood] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FastFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FastFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FastFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FastFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FastFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FastFood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FastFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FastFood] SET RECOVERY FULL 
GO
ALTER DATABASE [FastFood] SET  MULTI_USER 
GO
ALTER DATABASE [FastFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FastFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FastFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FastFood] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FastFood] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FastFood', N'ON'
GO
USE [FastFood]
GO
/****** Object:  Table [dbo].[tbAccount]    Script Date: 12/05/2022 16:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAccount](
	[id_account] [int] NOT NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[fullname] [nvarchar](max) NULL,
	[date_of_birth] [datetime] NULL,
	[address] [nvarchar](max) NULL,
	[phone_number] [nvarchar](50) NULL,
	[id_usergroup] [int] NULL,
 CONSTRAINT [PK_tbAccount] PRIMARY KEY CLUSTERED 
(
	[id_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbCategory]    Script Date: 12/05/2022 16:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCategory](
	[id_category] [int] NOT NULL,
	[category_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbCategory] PRIMARY KEY CLUSTERED 
(
	[id_category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbCredential]    Script Date: 12/05/2022 16:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCredential](
	[id_role] [int] NOT NULL,
	[id_usergroup] [int] NULL,
 CONSTRAINT [PK_tbCredential] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbFood]    Script Date: 12/05/2022 16:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbFood](
	[id_food] [int] NOT NULL,
	[id_category] [int] NULL,
	[food_name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[price] [int] NULL,
	[image] [binary](50) NOT NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_tbFood] PRIMARY KEY CLUSTERED 
(
	[id_food] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbOrder]    Script Date: 12/05/2022 16:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrder](
	[id_order] [int] NOT NULL,
	[id_account] [int] NULL,
	[total_bill] [int] NULL,
	[oder_date] [datetime] NULL,
	[dilivery_date] [datetime] NULL,
	[phone_number] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbOrder] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbOrderDetail]    Script Date: 12/05/2022 16:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbOrderDetail](
	[id_order] [int] NOT NULL,
	[id_food] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_tbOrderDetail] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbRole]    Script Date: 12/05/2022 16:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbRole](
	[id_role] [int] NOT NULL,
	[role_name] [nchar](10) NULL,
 CONSTRAINT [PK_tbRole] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbUserGroup]    Script Date: 12/05/2022 16:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUserGroup](
	[id_usergroup] [int] NOT NULL,
	[usergroup_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbUserGroup] PRIMARY KEY CLUSTERED 
(
	[id_usergroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tbAccount]  WITH CHECK ADD  CONSTRAINT [FK_tbAccount_tbUserGroup] FOREIGN KEY([id_usergroup])
REFERENCES [dbo].[tbUserGroup] ([id_usergroup])
GO
ALTER TABLE [dbo].[tbAccount] CHECK CONSTRAINT [FK_tbAccount_tbUserGroup]
GO
ALTER TABLE [dbo].[tbCredential]  WITH CHECK ADD  CONSTRAINT [FK_tbCredential_tbRole] FOREIGN KEY([id_role])
REFERENCES [dbo].[tbRole] ([id_role])
GO
ALTER TABLE [dbo].[tbCredential] CHECK CONSTRAINT [FK_tbCredential_tbRole]
GO
ALTER TABLE [dbo].[tbCredential]  WITH CHECK ADD  CONSTRAINT [FK_tbCredential_tbUserGroup] FOREIGN KEY([id_usergroup])
REFERENCES [dbo].[tbUserGroup] ([id_usergroup])
GO
ALTER TABLE [dbo].[tbCredential] CHECK CONSTRAINT [FK_tbCredential_tbUserGroup]
GO
ALTER TABLE [dbo].[tbFood]  WITH CHECK ADD  CONSTRAINT [FK_tbFood_tbCategory] FOREIGN KEY([id_category])
REFERENCES [dbo].[tbCategory] ([id_category])
GO
ALTER TABLE [dbo].[tbFood] CHECK CONSTRAINT [FK_tbFood_tbCategory]
GO
ALTER TABLE [dbo].[tbOrder]  WITH CHECK ADD  CONSTRAINT [FK_tbOrder_tbAccount] FOREIGN KEY([id_account])
REFERENCES [dbo].[tbAccount] ([id_account])
GO
ALTER TABLE [dbo].[tbOrder] CHECK CONSTRAINT [FK_tbOrder_tbAccount]
GO
ALTER TABLE [dbo].[tbOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbOrderDetail_tbFood] FOREIGN KEY([id_food])
REFERENCES [dbo].[tbFood] ([id_food])
GO
ALTER TABLE [dbo].[tbOrderDetail] CHECK CONSTRAINT [FK_tbOrderDetail_tbFood]
GO
ALTER TABLE [dbo].[tbOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbOrderDetail_tbOrder] FOREIGN KEY([id_order])
REFERENCES [dbo].[tbOrder] ([id_order])
GO
ALTER TABLE [dbo].[tbOrderDetail] CHECK CONSTRAINT [FK_tbOrderDetail_tbOrder]
GO
USE [master]
GO
ALTER DATABASE [FastFood] SET  READ_WRITE 
GO
