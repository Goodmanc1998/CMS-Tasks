USE [SQLTest]
GO

/****** Object:  Table [dbo].[Production]    Script Date: 06/08/2021 14:29:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Production](
	[JobKeyID] [int] NULL,
	[ItemKeyID] [int] NULL,
	[ProductName] [varchar](50) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([JobKeyID])
REFERENCES [dbo].[Heading] ([JobKeyID])
GO

