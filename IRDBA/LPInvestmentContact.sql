CREATE TABLE [dbo].[LPInvestmentContact](
	[ID] [int] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[LPInvestmentID] [int] NOT NULL,
	[InvestorContactID] [int] NOT NULL,
	[CoverageTypeID] [int] NULL,
	[CustomInfo] [xml] NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
	[tempIrContactID] [int] NULL,
	[WeeklyDistribution] [bit] NOT NULL,
	[OnePageSumDistribution] [bit] NOT NULL,
	[AGM] [bit] NOT NULL,
	[UnSubscribe] [bit] NOT NULL,
	[ShowInInvSum] [bit] NOT NULL,
	[OfferMemo] [bit] NOT NULL,
	[OfferMemoDate] [date] NULL,
 CONSTRAINT [PK_InvestmentContactID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]