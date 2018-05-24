USE [SqlTutorial]
GO

/****** Object:  Table [dbo].[test]    Script Date: 5/24/2018 10:20:54 AM ******/
DROP TABLE [dbo].[test]
GO

/****** Object:  Table [dbo].[test]    Script Date: 5/24/2018 10:20:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[zip] [nvarchar](5) NOT NULL,
	[city] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


