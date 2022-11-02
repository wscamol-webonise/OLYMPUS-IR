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



ALTER TABLE [dbo].[InvestorContact] ADD  CONSTRAINT [DF_InvestorContact_Department]  DEFAULT ('') FOR [Department]
ALTER TABLE [dbo].[InvestorContact] ADD  CONSTRAINT [DF_InvestorContact_ContactPriority]  DEFAULT ((2)) FOR [CoverageTypeID]
ALTER TABLE [dbo].[InvestorContact] ADD  CONSTRAINT [DF_InvestorContact_JobFunction]  DEFAULT ('') FOR [JobFunction]
ALTER TABLE [dbo].[InvestorContact] ADD  CONSTRAINT [DF_InvestorContact_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorContact] ADD  CONSTRAINT [DF_InvestorContact_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[InvestorContact] ADD  CONSTRAINT [DF_InvestorContact_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[InvestorContact] ADD  CONSTRAINT [DF_InvestorContact_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[InvestorContact] ADD  CONSTRAINT [DF_InvestorContact_UpdateNode]  DEFAULT ('') FOR [UpdateNode]

--ALTER TABLE [IRIA].[InvestorContact]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContact_ContactPerson] FOREIGN KEY([ContactPersonID])
--REFERENCES [dbo].[ContactPerson] ([ID])

--ALTER TABLE [dbo].[InvestorContact] CHECK CONSTRAINT [FK_InvestorContact_ContactPerson]

--ALTER TABLE [dbo].[InvestorContact]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContact_CoverageTypeID] FOREIGN KEY([CoverageTypeID])
--REFERENCES  [dbo].[CoverageType] ([ID])

--ALTER TABLE [dbo].[InvestorContact] CHECK CONSTRAINT [FK_InvestorContact_CoverageTypeID]

--ALTER TABLE [dbo].[InvestorContact]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContact_Investor] FOREIGN KEY([InvestorID])
--REFERENCES  [dbo].[Investor] ([ID])


--ALTER TABLE [dbo].[InvestorContact] CHECK CONSTRAINT [FK_InvestorContact_Investor]

--ALTER TABLE [dbo].[InvestorContact]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContact_InvestorContactCategoryID] FOREIGN KEY([InvestorContactCategoryID])
--REFERENCES  [dbo].[InvestorContactCategory] ([ID])


--ALTER TABLE [dbo].[InvestorContact] CHECK CONSTRAINT [FK_InvestorContact_InvestorContactCategoryID]

--ALTER TABLE [dbo].[InvestorContact]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContact_InvestorInfoShareTypeID] FOREIGN KEY([InvestorInfoShareTypeID])
--REFERENCES  [dbo].[InvestorInfoShareType] ([ID])

--ALTER TABLE [dbo].[InvestorContact] CHECK CONSTRAINT [FK_InvestorContact_InvestorInfoShareTypeID]

--ALTER TABLE [dbo].[InvestorContact]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContact_ThirdPartyType] FOREIGN KEY([ThirdPartyTypeID])
--REFERENCES  [dbo].[ThirdPartyType] ([ID])

--ALTER TABLE [dbo].[InvestorContact] CHECK CONSTRAINT [FK_InvestorContact_ThirdPartyType]




ALTER TABLE [dbo].[InvestorContactAddress] ADD  CONSTRAINT [DF_InvestorContactAddress_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorContactAddress] ADD  CONSTRAINT [DF_InvestorContactAddress_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[InvestorContactAddress] ADD  CONSTRAINT [DF_InvestorContactAddress_CreateNode]  DEFAULT ('') FOR [CreateNode]

ALTER TABLE [dbo].[InvestorContactAddress] ADD  CONSTRAINT [DF_InvestorContactAddress_UpdateID]  DEFAULT ('') FOR [UpdateID]

ALTER TABLE [dbo].[InvestorContactAddress] ADD  CONSTRAINT [DF_InvestorContactAddress_UpdateNode]  DEFAULT ('') FOR [UpdateNode]

--ALTER TABLE [IRIA].[InvestorContactAddress]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContactAddress_Address] FOREIGN KEY([AddressID])
--REFERENCES [dbo].[Address] ([ID])

--ALTER TABLE [IRIA].[InvestorContactAddress] CHECK CONSTRAINT [FK_InvestorContactAddress_Address]

--ALTER TABLE [IRIA].[InvestorContactAddress]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContactAddress_InvestorContact] FOREIGN KEY([InvestorContactID])
--REFERENCES [IRIA].[InvestorContact] ([ID])

--ALTER TABLE [IRIA].[InvestorContactAddress] CHECK CONSTRAINT [FK_InvestorContactAddress_InvestorContact]

ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF_LPInvestment_Deleted]  DEFAULT ((0)) FOR [Deleted]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF_LPInvestment_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF_LPInvestment_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF_LPInvestment_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF_LPInvestment_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF_LPInvestment_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF_LPInvestment_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__CoInv__6AAF4FA9]  DEFAULT ((0)) FOR [CoInvestInterest]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__ReInv__6BA373E2]  DEFAULT ((0)) FOR [ReInvestGains]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__OnePa__6C97981B]  DEFAULT ((0)) FOR [OnePageSummary]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__Inves__6D8BBC54]  DEFAULT ((0)) FOR [InvestorPress]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__Offer__6E7FE08D]  DEFAULT ((0)) FOR [OfferMemo]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__WebAc__6F7404C6]  DEFAULT ((0)) FOR [WebAccess]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__Inves__706828FF]  DEFAULT ((0)) FOR [InvestSummary]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__Appro__5455FA36]  DEFAULT ((0)) FOR [ApprovedMarketing]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__Strat__06AC6FD9]  DEFAULT ((0)) FOR [StrategicPartnership]
ALTER TABLE [dbo].[LPInvestment] ADD  CONSTRAINT [DF__LPInvestm__ZcapI__56934863]  DEFAULT ((0)) FOR [OFTInvestor]

--ALTER TABLE [dbo].[LPInvestment]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestment_GeneralFundID] FOREIGN KEY([GeneralFundID])
--REFERENCES [Accounting].[GeneralFund] ([ID])

--ALTER TABLE [dbo].[LPInvestment] CHECK CONSTRAINT [FK_LPInvestment_GeneralFundID]

--ALTER TABLE [dbo].[LPInvestment]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestment_InvestmentPriority] FOREIGN KEY([InvestmentPriorityID])
--REFERENCES [dbo].[InvestmentPriority] ([ID])

--ALTER TABLE [dbo].[LPInvestment] CHECK CONSTRAINT [FK_LPInvestment_InvestmentPriority]

--ALTER TABLE [dbo].[LPInvestment]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestment_InvestmentStatusID] FOREIGN KEY([InvestmentStatusID])
--REFERENCES [dbo].[InvestmentStatus] ([ID])

--ALTER TABLE [dbo].[LPInvestment] CHECK CONSTRAINT [FK_LPInvestment_InvestmentStatusID]

--ALTER TABLE [dbo].[LPInvestment]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestment_Investor] FOREIGN KEY([InvestorID])
--REFERENCES [dbo].[Investor] ([ID])

--ALTER TABLE [dbo].[LPInvestment] CHECK CONSTRAINT [FK_LPInvestment_Investor]

--ALTER TABLE [dbo].[LPInvestment]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestment_Investor1] FOREIGN KEY([InvestorID])
--REFERENCES [dbo].[Investor] ([ID])

--ALTER TABLE [dbo].[LPInvestment] CHECK CONSTRAINT [FK_LPInvestment_Investor1]

--ALTER TABLE [dbo].[LPInvestment]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestment_InvStrategyID] FOREIGN KEY([InvStrategyID])
--REFERENCES [dbo].[InvStrategy] ([ID])

--ALTER TABLE [dbo].[LPInvestment] CHECK CONSTRAINT [FK_LPInvestment_InvStrategyID]

--ALTER TABLE [dbo].[LPInvestment]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestment_PlacementAgentID] FOREIGN KEY([PlacementAgentID])
--REFERENCES [dbo].[PlacementAgent] ([ID])

--ALTER TABLE [dbo].[LPInvestment] CHECK CONSTRAINT [FK_LPInvestment_PlacementAgentID]



ALTER TABLE [dbo].[LPInvestmentContactNote] ADD  CONSTRAINT [DF_InvestmentContactNote_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[LPInvestmentContactNote] ADD  CONSTRAINT [DF_InvestmentContactNote_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[LPInvestmentContactNote] ADD  CONSTRAINT [DF_InvestmentContactNote_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[LPInvestmentContactNote] ADD  CONSTRAINT [DF_InvestmentContactNote_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[LPInvestmentContactNote] ADD  CONSTRAINT [DF_InvestmentContactNote_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
ALTER TABLE [dbo].[LPInvestmentContactNote] ADD  CONSTRAINT [DF_InvestmentContactNote_UpdateNode]  DEFAULT ('') FOR [UpdateNode]

--ALTER TABLE [dbo].[LPInvestmentContactNote]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentContactNote_ContactPersonID] FOREIGN KEY([ContactPersonID])
--REFERENCES  [dbo].[ContactPerson] ([ID])

--ALTER TABLE [dbo].[LPInvestmentContactNote] CHECK CONSTRAINT [FK_LPInvestmentContactNote_ContactPersonID]

--ALTER TABLE [dbo].[LPInvestmentContactNote]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentContactNote_CoverageContactPersonID] FOREIGN KEY([CoverageContactPersonID])
--REFERENCES  [dbo].[ContactPerson] ([ID])

--ALTER TABLE [dbo].[LPInvestmentContactNote] CHECK CONSTRAINT [FK_LPInvestmentContactNote_CoverageContactPersonID]

--ALTER TABLE [dbo].[LPInvestmentContactNote]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentContactNote_investorID] FOREIGN KEY([InvestorID])
--REFERENCES  [dbo].[Investor] ([ID])

--ALTER TABLE [dbo].[LPInvestmentContactNote] CHECK CONSTRAINT [FK_LPInvestmentContactNote_investorID]

--ALTER TABLE [dbo].[LPInvestmentContactNote]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentContactNote_LPInvestmentID] FOREIGN KEY([LPInvestmentID])
--REFERENCES  [dbo].[LPInvestment] ([ID])

--ALTER TABLE [dbo].[LPInvestmentContactNote] CHECK CONSTRAINT [FK_LPInvestmentContactNote_LPInvestmentID]

--ALTER TABLE [dbo].[LPInvestmentContactNote]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentContactNote_ONoteID] FOREIGN KEY([ONoteID])
--REFERENCES  [dbo].[ONote] ([ID])

--ALTER TABLE [dbo].[LPInvestmentContactNote] CHECK CONSTRAINT [FK_LPInvestmentContactNote_ONoteID]


ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF_LPInvestmentContact_CoverageTypeID]  DEFAULT ((1)) FOR [CoverageTypeID]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF_InvestmentContact_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF_InvestmentContact_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF_InvestmentContact_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF_InvestmentContact_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF_InvestmentContact_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF_InvestmentContact_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF__LPInvestm__BiWee__64F67653]  DEFAULT ((0)) FOR [WeeklyDistribution]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF__LPInvestm__OnePa__65EA9A8C]  DEFAULT ((0)) FOR [OnePageSumDistribution]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF__LPInvestmen__AGM__66DEBEC5]  DEFAULT ((0)) FOR [AGM]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF__LPInvestm__UnSub__67D2E2FE]  DEFAULT ((0)) FOR [UnSubscribe]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF__LPInvestm__ShowI__68C70737]  DEFAULT ((0)) FOR [ShowInInvSum]
ALTER TABLE [dbo].[LPInvestmentContact] ADD  CONSTRAINT [DF__LPInvestm__Offer__69BB2B70]  DEFAULT ((0)) FOR [OfferMemo]

--ALTER TABLE [dbo].[LPInvestmentContact]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentContact_CoverageTypeID] FOREIGN KEY([CoverageTypeID])
--REFERENCES  [dbo].[CoverageType] ([ID])

--ALTER TABLE [dbo].[LPInvestmentContact] CHECK CONSTRAINT [FK_LPInvestmentContact_CoverageTypeID]

--ALTER TABLE [dbo].[LPInvestmentContact]  WITH CHECK ADD  CONSTRAINT [FK_PInvestmentContact_investorcontactID] FOREIGN KEY([InvestorContactID])
--REFERENCES  [dbo].[InvestorContact] ([ID])

--ALTER TABLE [dbo].[LPInvestmentContact] CHECK CONSTRAINT [FK_PInvestmentContact_investorcontactID]

--ALTER TABLE [dbo].[LPInvestmentContact]  WITH CHECK ADD  CONSTRAINT [FK_PInvestmentContact_LPInvestmentID] FOREIGN KEY([LPInvestmentID])
--REFERENCES  [dbo].[LPInvestment] ([ID])

--ALTER TABLE [dbo].[LPInvestmentContact] CHECK CONSTRAINT [FK_PInvestmentContact_LPInvestmentID]


ALTER TABLE [dbo].[InvestorContactLegalEntity] ADD  CONSTRAINT [DF_InvestorContactLegalEntity_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorContactLegalEntity] ADD  CONSTRAINT [DF_InvestorContactLegalEntity_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[InvestorContactLegalEntity] ADD  CONSTRAINT [DF_InvestorContactLegalEntity_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[InvestorContactLegalEntity] ADD  CONSTRAINT [DF_InvestorContactLegalEntity_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[InvestorContactLegalEntity] ADD  CONSTRAINT [DF_InvestorContactLegalEntity_UpdateNode]  DEFAULT ('') FOR [UpdateNode]

--ALTER TABLE [dbo].[InvestorContactLegalEntity]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContactLegalEntity_InvestorContact] FOREIGN KEY([InvestorContactID])
--REFERENCES [dbo].[InvestorContact] ([ID])

--ALTER TABLE [dbo].[InvestorContactLegalEntity] CHECK CONSTRAINT [FK_InvestorContactLegalEntity_InvestorContact]

--ALTER TABLE [dbo].[InvestorContactLegalEntity]  WITH CHECK ADD  CONSTRAINT [FK_InvestorContactLegalEntity_InvestorLegalEntity] FOREIGN KEY([InvestorLegalEntityID])
--REFERENCES [dbo].[InvestorLegalEntity] ([ID])

--ALTER TABLE [dbo].[InvestorContactLegalEntity] CHECK CONSTRAINT [FK_InvestorContactLegalEntity_InvestorLegalEntity]

