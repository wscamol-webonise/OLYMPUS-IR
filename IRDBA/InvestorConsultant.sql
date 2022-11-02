CREATE TABLE [dbo].[InvestorConsultant](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[InvestorID] [int] NOT NULL,
	[ConsultantID] [int] NOT NULL,
	[ConsultantTypeID] [int] NULL,
	[NaturalOfService] [nvarchar](1028) NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
 CONSTRAINT [PK_InvestorConsultant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]