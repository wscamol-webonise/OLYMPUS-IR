CREATE TABLE [dbo].[LPInvestmentDetail](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LPInvestmentID] [int] NOT NULL,
	[LowTicket] [decimal](20, 8) NULL,
	[HighTicket] [decimal](20, 8) NULL,
	[Probability] [decimal](20, 8) NULL,
	[TimeFrame] [datetime] NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
	[CloseDate] [date] NULL,
	[TicketSize] [decimal](20, 8) NULL,
 CONSTRAINT [PK_LPInvestmentDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]