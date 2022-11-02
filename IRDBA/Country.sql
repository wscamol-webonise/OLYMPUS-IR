CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[CurrencyID] [int] NULL,
	[Name] [nvarchar](256) NULL,
	[AbbrevName] [nvarchar](64) NULL,
	[Description] [nvarchar](1024) NULL,
	[Region] [nvarchar](64) NULL,
	[Continent] [nvarchar](64) NULL,
	[PhoneCode] [nvarchar](16) NULL,
	[TimeDifference] [int] NULL,
	[DisplayOrder] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
	[IsGDPRCountry] [bit] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Country] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]