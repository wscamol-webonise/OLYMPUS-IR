CREATE TABLE [dbo].[ContactPerson](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[FirstName] [nvarchar](256) NULL,
	[MiddleName] [nvarchar](64) NULL,
	[LastName] [nvarchar](256) NULL,
	[Salutation] [nvarchar](32) NULL,
	[Prefix] [nvarchar](128) NULL,
	[Suffix] [nvarchar](16) NULL,
	[Description] [nvarchar](1024) NULL,
	[WorkPhone] [nvarchar](256) NULL,
	[WorkPhoneExtension] [nvarchar](16) NULL,
	[CellPhone] [nvarchar](256) NULL,
	[HomePhone] [nvarchar](256) NULL,
	[Fax] [nvarchar](32) NULL,
	[PrimaryEmail] [nvarchar](256) NULL,
	[SecondaryEmail] [nvarchar](256) NULL,
	[Website] [nvarchar](256) NULL,
	[CreateID] [nvarchar](32) NULL,
	[CreateDate] [datetime] NULL,
	[CreateNode] [nvarchar](32) NULL,
	[UpdateID] [nvarchar](32) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateNode] [nvarchar](32) NULL,
	[Linkedin] [nvarchar](256) NULL,
	[Biography] [nvarchar](max) NULL,
	[GDPRStatus] [int] NULL,
	[Initial]  AS (upper(left(ltrim([Firstname]),(1))+left(ltrim([Lastname]),(1)))),
 CONSTRAINT [PK_ContactPerson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]