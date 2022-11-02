CREATE TABLE [dbo].[InvestorContact](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[InvestorID] [int] NOT NULL,
	[ThirdPartyTypeID] [int] NULL,
	[ContactPersonID] [int] NOT NULL,
	[JobTitle] [nvarchar](256) NULL,
	[Department] [nvarchar](256) NULL,
	[CoverageTypeID] [int] NULL,
	[JobFunction] [nvarchar](256) NULL,
	[InvestorContactCategoryID] [int] NULL,
	[CustomInfo] [xml] NULL,
	[InvestorInfoShareTypeID] [int] NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
 CONSTRAINT [PK_InvestorContact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_InvestorContact] UNIQUE NONCLUSTERED 
(
	[InvestorID] ASC,
	[ContactPersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]