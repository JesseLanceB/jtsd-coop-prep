CREATE DATABASE CourtOpsDB;
GO

USE [CourtOpsDB]
GO

/****** Object:  Table [dbo].[Departments]    Script Date: 2026-07-25 9:52:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Departments](
	[DeptID] [int] IDENTITY(1,1) NOT NULL,
	[DeptName] [nvarchar](100) NOT NULL,
	[Location] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [CourtOpsDB]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 2026-07-25 9:54:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](100) NULL,
	[DeptID] [int] NULL,
	[HireDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([DeptID])
REFERENCES [dbo].[Departments] ([DeptID])
GO

USE [CourtOpsDB]
GO

/****** Object:  Table [dbo].[Tickets]    Script Date: 2026-07-25 9:55:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tickets](
	[TicketID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Category] [nvarchar](50) NULL,
	[Priority] [nvarchar](20) NULL,
	[Status] [nvarchar](20) NULL,
	[AssignedTo] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ResolvedDate] [datetime] NULL,
	[Courtroom] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Tickets] ADD  DEFAULT ('Open') FOR [Status]
GO

ALTER TABLE [dbo].[Tickets] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD FOREIGN KEY([AssignedTo])
REFERENCES [dbo].[Employees] ([EmpID])
GO

