CREATE TABLE [dbo].[Investor](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[AbbrevName] [nvarchar](64) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
	[LPAccountGeneralName] [nvarchar](256) NULL,
	[PlacementAgentID] [int] NULL,
	[AccreditedInvestor] [bit] NULL,
	[QualifiedPurchaser] [bit] NULL,
	[SourceOfKnowledge] [nvarchar](512) NULL,
	[AssetUnderMgmt] [decimal](22, 8) NULL,
	[GPExposure] [decimal](22, 8) NULL,
	[PeAllocPct] [decimal](20, 8) NULL,
	[DisAllocPct] [decimal](20, 8) NULL,
	[Distressed] [bit] NULL,
	[HfAllocPct] [decimal](20, 8) NULL,
	[FixedIncomeCreditInvestor] [bit] NULL,
	[tempIRInvestorID] [int] NULL,
	[CustomInfo] [xml] NULL,
 CONSTRAINT [PK_Investor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_Investor] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

