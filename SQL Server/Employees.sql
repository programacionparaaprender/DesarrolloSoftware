USE [QuirkyBookProject]
GO

/****** Object:  Table [dbo].[Books]    Script Date: 24/12/2019 10:43:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[AnnualSalary] [decimal] NOT NULL,
	[Gender] [nvarchar](max) NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](20) NOT NULL,
	[DepartmentId][int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


