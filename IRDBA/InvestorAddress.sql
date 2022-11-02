CREATE TABLE [dbo].[InvestorAddress](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[InvestorID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[Phone] [nvarchar](32) NULL,
	[Fax] [nvarchar](32) NULL,
	[WebAddress] [nvarchar](128) NULL,
	[InfoShareTypeID] [int] NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
 CONSTRAINT [PK_InvestorAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_InvestorAddress] UNIQUE NONCLUSTERED 
(
	[InvestorID] ASC,
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]