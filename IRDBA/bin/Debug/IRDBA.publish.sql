﻿/*
Deployment script for IRDBA

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "IRDBA"
:setvar DefaultFilePrefix "IRDBA"
:setvar DefaultDataPath "F:\data\"
:setvar DefaultLogPath "G:\log\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET PAGE_VERIFY NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
PRINT N'Creating Table [dbo].[Investor]...';


GO
CREATE TABLE [dbo].[Investor] (
    [ID]                        INT             IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [Name]                      NVARCHAR (256)  NOT NULL,
    [AbbrevName]                NVARCHAR (64)   NULL,
    [Description]               NVARCHAR (MAX)  NULL,
    [Active]                    BIT             NOT NULL,
    [CreateID]                  NVARCHAR (32)   NULL,
    [CreateDate]                DATETIME        NULL,
    [CreateNode]                NVARCHAR (32)   NULL,
    [UpdateID]                  NVARCHAR (32)   NULL,
    [UpdateDate]                DATETIME        NULL,
    [UpdateNode]                NVARCHAR (32)   NULL,
    [LPAccountGeneralName]      NVARCHAR (256)  NULL,
    [PlacementAgentID]          INT             NULL,
    [AccreditedInvestor]        BIT             NULL,
    [QualifiedPurchaser]        BIT             NULL,
    [SourceOfKnowledge]         NVARCHAR (512)  NULL,
    [AssetUnderMgmt]            DECIMAL (22, 8) NULL,
    [GPExposure]                DECIMAL (22, 8) NULL,
    [PeAllocPct]                DECIMAL (20, 8) NULL,
    [DisAllocPct]               DECIMAL (20, 8) NULL,
    [Distressed]                BIT             NULL,
    [HfAllocPct]                DECIMAL (20, 8) NULL,
    [FixedIncomeCreditInvestor] BIT             NULL,
    [tempIRInvestorID]          INT             NULL,
    [CustomInfo]                XML             NULL,
    CONSTRAINT [PK_Investor] PRIMARY KEY CLUSTERED ([ID] ASC) WITH (FILLFACTOR = 90) ON [PRIMARY],
    CONSTRAINT [UK_Investor] UNIQUE NONCLUSTERED ([Name] ASC) WITH (FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];


GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_Active]  DEFAULT ((0)) FOR [Active]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_LPAccountGeneralName]  DEFAULT ('') FOR [LPAccountGeneralName]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_AccreditedInvestor]  DEFAULT ((0)) FOR [AccreditedInvestor]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_QualifiedPurchaser]  DEFAULT ((0)) FOR [QualifiedPurchaser]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_SourceOfKnowledge]  DEFAULT ('') FOR [SourceOfKnowledge]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_Distressed]  DEFAULT ((0)) FOR [Distressed]
ALTER TABLE [dbo].[Investor] ADD  CONSTRAINT [DF_Investor_FixedIncomeCreditInvestor]  DEFAULT ((0)) FOR [FixedIncomeCreditInvestor]

--ALTER TABLE [IRIA].[Investor]  WITH CHECK ADD  CONSTRAINT [FK_Investor_PlacementAgent] FOREIGN KEY([PlacementAgentID])
--REFERENCES [dbo].[PlacementAgent] ([ID])
--ALTER TABLE [IRIA].[Investor] CHECK CONSTRAINT [FK_Investor_PlacementAgent]
GO

GO
PRINT N'Update complete.';


GO
