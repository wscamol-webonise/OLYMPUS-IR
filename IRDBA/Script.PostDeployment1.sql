﻿/*
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

ALTER TABLE [dbo].[InvestorType] ADD  CONSTRAINT [DF_InvestorType_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
ALTER TABLE [dbo].[InvestorType] ADD  CONSTRAINT [DF_InvestorType_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorType] ADD  CONSTRAINT [DF_InvestorType_DateCreated_1]  DEFAULT (getdate()) FOR [CreateDate]

ALTER TABLE [dbo].[CoveragePerson] ADD  CONSTRAINT [DF_CoveragePerson_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[CoveragePerson] ADD  CONSTRAINT [DF_CoveragePerson_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[CoveragePerson] ADD  CONSTRAINT [DF_CoveragePerson_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[CoveragePerson] ADD  CONSTRAINT [DF_CoveragePerson_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[CoveragePerson] ADD  CONSTRAINT [DF_CoveragePerson_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
ALTER TABLE [dbo].[CoveragePerson] ADD  CONSTRAINT [DF_CoveragePerson_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[CoveragePerson]  WITH CHECK ADD  CONSTRAINT [FK_CoveragePerson_contactperson] FOREIGN KEY([ContactPersonID])
--REFERENCES [dbo].[ContactPerson] ([ID])
--ALTER TABLE [dbo].[CoveragePerson] CHECK CONSTRAINT [FK_CoveragePerson_contactperson]
--ALTER TABLE [dbo].[CoveragePerson]  WITH CHECK ADD  CONSTRAINT [FK_CoveragePerson_User] FOREIGN KEY([UserID])
--REFERENCES [AccessControl].[User] ([ID])
--ALTER TABLE [dbo].[CoveragePerson] CHECK CONSTRAINT [FK_CoveragePerson_User]

ALTER TABLE [dbo].[LPInvestmentCoverage] ADD  CONSTRAINT [DF_InvestmentCoverage_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[LPInvestmentCoverage] ADD  CONSTRAINT [DF_InvestmentCoverage_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[LPInvestmentCoverage] ADD  CONSTRAINT [DF_InvestmentCoverage_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[LPInvestmentCoverage] ADD  CONSTRAINT [DF_InvestmentCoverage_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[LPInvestmentCoverage] ADD  CONSTRAINT [DF_InvestmentCoverage_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
ALTER TABLE [dbo].[LPInvestmentCoverage] ADD  CONSTRAINT [DF_InvestmentCoverage_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[LPInvestmentCoverage]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentCoverage_CoverageContactPersonID] FOREIGN KEY([CoverageContactPersonID])
--REFERENCES [dbo].[ContactPerson] ([ID])
--ALTER TABLE [dbo].[LPInvestmentCoverage] CHECK CONSTRAINT [FK_LPInvestmentCoverage_CoverageContactPersonID]
--ALTER TABLE [dbo].[LPInvestmentCoverage]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentCoverage_LPInvestment] FOREIGN KEY([LPInvestmentID])
--REFERENCES [dbo].[LPInvestment] ([ID])
--ALTER TABLE [dbo].[LPInvestmentCoverage] CHECK CONSTRAINT [FK_LPInvestmentCoverage_LPInvestment]

ALTER TABLE [dbo].[InvestorTypeLink] ADD  CONSTRAINT [DF_InvestorTypeLink_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorTypeLink] ADD  CONSTRAINT [DF_IInvestorTypeLink_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[InvestorTypeLink] ADD  CONSTRAINT [DF_InvestorTypeLink_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[InvestorTypeLink] ADD  CONSTRAINT [DF_InvestorTypeLink_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[InvestorTypeLink] ADD  CONSTRAINT [DF_InvestorTypeLink_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[InvestorTypeLink]  WITH CHECK ADD  CONSTRAINT [FK_InvestorTypeLink_InvestorID] FOREIGN KEY([InvestorID])
--REFERENCES [dbo].[Investor] ([ID])
--ALTER TABLE [dbo].[InvestorTypeLink] CHECK CONSTRAINT [FK_InvestorTypeLink_InvestorID]
--ALTER TABLE [dbo].[InvestorTypeLink]  WITH CHECK ADD  CONSTRAINT [FK_InvestorTypeLink_InvestoryTypeID] FOREIGN KEY([InvestorTypeID])
--REFERENCES [dbo].[InvestorType] ([ID])
--ALTER TABLE [dbo].[InvestorTypeLink] CHECK CONSTRAINT [FK_InvestorTypeLink_InvestoryTypeID]

ALTER TABLE [dbo].[InvestorConsultant] ADD  CONSTRAINT [DF_InvestorConsultant_NaturalOfService]  DEFAULT ('') FOR [NaturalOfService]
ALTER TABLE [dbo].[InvestorConsultant] ADD  CONSTRAINT [DF_InvestorConsultant_CreateId]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorConsultant] ADD  CONSTRAINT [DF_InvestorConsultant_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[InvestorConsultant] ADD  CONSTRAINT [DF_InvestorConsultant_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[InvestorConsultant] ADD  CONSTRAINT [DF_InvestorConsultant_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[InvestorConsultant]  WITH CHECK ADD  CONSTRAINT [FK_InvestorConsultant_Consultant] FOREIGN KEY([ConsultantID])
--REFERENCES [dbo].[Investor] ([ID])
--ALTER TABLE [dbo].[InvestorConsultant] CHECK CONSTRAINT [FK_InvestorConsultant_Consultant]
--ALTER TABLE [dbo].[InvestorConsultant]  WITH CHECK ADD  CONSTRAINT [FK_InvestorConsultant_ConsultantTypeID] FOREIGN KEY([ConsultantTypeID])
--REFERENCES [dbo].[InvestorConsultantType] ([ID])
--ALTER TABLE [dbo].[InvestorConsultant] CHECK CONSTRAINT [FK_InvestorConsultant_ConsultantTypeID]
--ALTER TABLE [dbo].[InvestorConsultant]  WITH CHECK ADD  CONSTRAINT [FK_InvestorConsultant_Investor] FOREIGN KEY([InvestorID])
--REFERENCES [dbo].[Investor] ([ID])
--ALTER TABLE [dbo].[InvestorConsultant] CHECK CONSTRAINT [FK_InvestorConsultant_Investor]

ALTER TABLE [dbo].[InvestorAddress] ADD  CONSTRAINT [DF_InvestorAddress_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorAddress] ADD  CONSTRAINT [DF_InvestorAddress_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[InvestorAddress] ADD  CONSTRAINT [DF_InvestorAddress_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[InvestorAddress] ADD  CONSTRAINT [DF_InvestorAddress_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[InvestorAddress] ADD  CONSTRAINT [DF_InvestorAddress_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[InvestorAddress]  WITH CHECK ADD  CONSTRAINT [FK_InvestorAddress_Address] FOREIGN KEY([AddressID])
--REFERENCES [dbo].[Address] ([ID])
--ALTER TABLE [dbo].[InvestorAddress] CHECK CONSTRAINT [FK_InvestorAddress_Address]
--ALTER TABLE [dbo].[InvestorAddress]  WITH CHECK ADD  CONSTRAINT [FK_InvestorAddress_Investor] FOREIGN KEY([InvestorID])
--REFERENCES [dbo].[Investor] ([ID])
--ALTER TABLE [dbo].[InvestorAddress] CHECK CONSTRAINT [FK_InvestorAddress_Investor]

ALTER TABLE [dbo].[LPInvestmentDetail] ADD  CONSTRAINT [DF_InvestmentDetail_Probability]  DEFAULT ((0)) FOR [Probability]
ALTER TABLE [dbo].[LPInvestmentDetail] ADD  CONSTRAINT [DF_InvestmentDetail_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[LPInvestmentDetail] ADD  CONSTRAINT [DF_IInvestmentDetail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[LPInvestmentDetail] ADD  CONSTRAINT [DF_InvestmentDetail_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[LPInvestmentDetail] ADD  CONSTRAINT [DF_InvestmentDetail_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[LPInvestmentDetail] ADD  CONSTRAINT [DF_InvestmentDetail_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[LPInvestmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_LPInvestmentDetail_Investment] FOREIGN KEY([LPInvestmentID])
--REFERENCES [dbo].[LPInvestment] ([ID])
--ALTER TABLE [dbo].[LPInvestmentDetail] CHECK CONSTRAINT [FK_LPInvestmentDetail_Investment]

ALTER TABLE [dbo].[ThirdPartyType] ADD  CONSTRAINT [DF_ThirdPartyType_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
ALTER TABLE [dbo].[ThirdPartyType] ADD  CONSTRAINT [DF_ThirdPartyType_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[ThirdPartyType] ADD  CONSTRAINT [DF_ThirdPartyType_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[ThirdPartyType] ADD  CONSTRAINT [DF_ThirdPartyType_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[ThirdPartyType] ADD  CONSTRAINT [DF_ThirdPartyType_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[ThirdPartyType] ADD  CONSTRAINT [DF_ThirdPartyType_UpdateNode]  DEFAULT ('') FOR [UpdateNode]

ALTER TABLE [dbo].[ContactPerson] ADD  CONSTRAINT [DF_ContactPerson_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[ContactPerson] ADD  CONSTRAINT [DF_Contact_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[ContactPerson] ADD  CONSTRAINT [DF_ContactPerson_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[ContactPerson] ADD  CONSTRAINT [DF_ContactPerson_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[ContactPerson] ADD  CONSTRAINT [DF_ContactPerson_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[ContactPerson]  WITH CHECK ADD  CONSTRAINT [FK_ContactPerson_GDPRStatus] FOREIGN KEY([GDPRStatus])
--REFERENCES [dbo].[GDPRStatus] ([ID])
--ALTER TABLE [dbo].[ContactPerson] CHECK CONSTRAINT [FK_ContactPerson_GDPRStatus]

ALTER TABLE [dbo].[InvestorContactCategory] ADD  CONSTRAINT [DF_InvestorContactCategory_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
ALTER TABLE [dbo].[InvestorContactCategory] ADD  CONSTRAINT [DF_InvestorContactCategory_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorContactCategory] ADD  CONSTRAINT [DF_InvestorContactCategory_DateCreated]  DEFAULT (getdate()) FOR [CreateDate]

ALTER TABLE [dbo].[InvestorInfoShareType] ADD  CONSTRAINT [DF_InvestorInfoShareType_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
ALTER TABLE [dbo].[InvestorInfoShareType] ADD  CONSTRAINT [DF_InvestorInfoShareType_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestorInfoShareType] ADD  CONSTRAINT [DF_InvestorInfoShareType_DateCreated]  DEFAULT (getdate()) FOR [CreateDate]

ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([CountryID])
--REFERENCES [dbo].[Country] ([ID])
--ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_AddressType] FOREIGN KEY([AddressTypeID])
--REFERENCES [dbo].[AddressType] ([ID])
--ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_AddressType]
--ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_StateProvince] FOREIGN KEY([StateProvinceID])
--REFERENCES [dbo].[StateProvince] ([ID])
--ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_StateProvince]

ALTER TABLE [dbo].[StateProvince] ADD  CONSTRAINT [DF_StateProvince_Name]  DEFAULT ('') FOR [Name]
ALTER TABLE [dbo].[StateProvince] ADD  CONSTRAINT [DF_StateProvince_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
ALTER TABLE [dbo].[StateProvince] ADD  CONSTRAINT [DF_StateProvince_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[StateProvince] ADD  CONSTRAINT [DF_StateProvince_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[StateProvince] ADD  CONSTRAINT [DF_StateProvince_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[StateProvince] ADD  CONSTRAINT [DF_StateProvince_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
--ALTER TABLE [dbo].[StateProvince]  WITH CHECK ADD  CONSTRAINT [FK_StateProvince_Country] FOREIGN KEY([CountryID])
--REFERENCES [dbo].[Country] ([ID])
--ALTER TABLE [dbo].[StateProvince] CHECK CONSTRAINT [FK_StateProvince_Country]

ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_Name]  DEFAULT ('') FOR [Name]
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_DisplayOrder]  DEFAULT ((2)) FOR [DisplayOrder]
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_Deleted]  DEFAULT ((0)) FOR [Deleted]
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_DateCreated]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_LastChangeID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((0)) FOR [IsGDPRCountry]
--ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Currency] FOREIGN KEY([CurrencyID])
--REFERENCES [dbo].[Currency] ([ID])
--ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Currency]

ALTER TABLE [dbo].[InvStrategy] ADD  CONSTRAINT [DF_InvStrategy_Name]  DEFAULT ('') FOR [Name]
ALTER TABLE [dbo].[InvStrategy] ADD  CONSTRAINT [DF_InvStrategy_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
ALTER TABLE [dbo].[InvStrategy] ADD  CONSTRAINT [DF_InvStrategy_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvStrategy] ADD  CONSTRAINT [DF_InvStrategy_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[InvStrategy] ADD  CONSTRAINT [DF_InvStrategy_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[InvStrategy] ADD  CONSTRAINT [DF_InvStrategy_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[InvStrategy] ADD  CONSTRAINT [DF_InvStrategy_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
ALTER TABLE [dbo].[InvStrategy] ADD  DEFAULT ((0)) FOR [Active]

ALTER TABLE [dbo].[InvestmentStatus] ADD  CONSTRAINT [DF_InvestmentStatus_Name]  DEFAULT ('') FOR [Name]
ALTER TABLE [dbo].[InvestmentStatus] ADD  CONSTRAINT [DF_InvestmentStatus_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
ALTER TABLE [dbo].[InvestmentStatus] ADD  CONSTRAINT [DF_InvestmentStatus_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestmentStatus] ADD  CONSTRAINT [DF_InvestmentStatus_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[InvestmentStatus] ADD  CONSTRAINT [DF_InvestmentStatus_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[InvestmentStatus] ADD  CONSTRAINT [DF_InvestmentStatus_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[InvestmentStatus] ADD  CONSTRAINT [DF_InvestmentStatus_UpdateNode]  DEFAULT ('') FOR [UpdateNode]
ALTER TABLE [dbo].[InvestmentStatus] ADD  CONSTRAINT [DF__Investmen__PriorityOrder]  DEFAULT ((100)) FOR [PriorityOrder]

ALTER TABLE [dbo].[InvestmentPriority] ADD  CONSTRAINT [DF_InvestmentPriority_Name]  DEFAULT ('') FOR [Name]
ALTER TABLE [dbo].[InvestmentPriority] ADD  CONSTRAINT [DF_InvestmentPriority_DisplayOrder]  DEFAULT ((1)) FOR [DisplayOrder]
ALTER TABLE [dbo].[InvestmentPriority] ADD  CONSTRAINT [DF_InvestmentPriority_CreateID]  DEFAULT ('') FOR [CreateID]
ALTER TABLE [dbo].[InvestmentPriority] ADD  CONSTRAINT [DF_InvestmentPriority_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
ALTER TABLE [dbo].[InvestmentPriority] ADD  CONSTRAINT [DF_InvestmentPriority_CreateNode]  DEFAULT ('') FOR [CreateNode]
ALTER TABLE [dbo].[InvestmentPriority] ADD  CONSTRAINT [DF_InvestmentPriority_UpdateID]  DEFAULT ('') FOR [UpdateID]
ALTER TABLE [dbo].[InvestmentPriority] ADD  CONSTRAINT [DF_InvestmentPriority_UpdateNode]  DEFAULT ('') FOR [UpdateNode]