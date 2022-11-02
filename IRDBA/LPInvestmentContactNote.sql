CREATE TABLE [dbo].[LPInvestmentContactNote](
	[ID] [int] IDENTITY(0,1) NOT FOR REPLICATION NOT NULL,
	[LPInvestmentID] [int] NULL,
	[ContactPersonID] [int] NULL,
	[CoverageContactPersonID] [int] NULL,
	[ONoteID] [int] NOT NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
	[InvestorID] [int] NULL,
 CONSTRAINT [PK_InvestmentContactNoteID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]