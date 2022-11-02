CREATE TABLE [dbo].[Address](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[EntityType] [nvarchar](256) NULL,
	[Description] [nvarchar](1024) NULL,
	[AddressTypeID] [int] NULL,
	[AddressLine1] [nvarchar](256) NULL,
	[AddressLine2] [nvarchar](256) NULL,
	[AddressLine3] [nvarchar](256) NULL,
	[City] [nvarchar](64) NULL,
	[StateProvinceID] [int] NULL,
	[CountryID] [int] NULL,
	[ZipCode] [nvarchar](32) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]