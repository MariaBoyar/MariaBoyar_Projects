USE [MariaBoyar_Insurance]
GO

/*************  dbo.Agencies ****************************************************/
ALTER TABLE dbo.Agencies DROP CONSTRAINT FK_Agencies_Agencies
ALTER TABLE dbo.Agencies WITH CHECK ADD  CONSTRAINT FK_Agencies_Agencies FOREIGN KEY(Agc_ParentCompany_ID) REFERENCES dbo.Agencies (Agc_ID)
ALTER TABLE dbo.Agencies CHECK CONSTRAINT FK_Agencies_Agencies


ALTER TABLE dbo.Agencies DROP CONSTRAINT IF EXISTS FK_Agencies_States
ALTER TABLE dbo.Agencies WITH CHECK ADD CONSTRAINT FK_Agencies_States FOREIGN KEY(Agc_Phys_State) REFERENCES lkp.States (S_Code)
ALTER TABLE dbo.Agencies CHECK CONSTRAINT FK_Agencies_States


ALTER TABLE dbo.Agencies DROP CONSTRAINT IF EXISTS FK_Agencies_States_Mail
ALTER TABLE dbo.Agencies WITH CHECK ADD CONSTRAINT FK_Agencies_States_Mail FOREIGN KEY(Agc_Mail_State) REFERENCES lkp.States (S_Code)
ALTER TABLE dbo.Agencies CHECK CONSTRAINT FK_Agencies_States_Mail
