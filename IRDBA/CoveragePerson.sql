CREATE TABLE [dbo].[CoveragePerson](
	[ID] [int] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](256) NULL,
	[AbbrevName] [nvarchar](64) NULL,
	[Description] [nvarchar](1024) NULL,
	[ContactPersonID] [int] NOT NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
	[UserID_Temp] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_CoveragePersonID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]