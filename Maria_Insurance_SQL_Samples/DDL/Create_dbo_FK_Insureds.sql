USE [MariaBoyar_Insurance_Test]
GO

/*************  dbo.Insureds ****************************************************/
ALTER TABLE dbo.Insureds DROP CONSTRAINT IF EXISTS FK_Insureds_States_Phys
ALTER TABLE dbo.Insureds WITH CHECK ADD CONSTRAINT FK_Insureds_States_Phys FOREIGN KEY(Ins_Phys_State) REFERENCES lkp.States (S_Code)
ALTER TABLE dbo.Insureds CHECK CONSTRAINT FK_Insureds_States_Phys


ALTER TABLE dbo.Insureds DROP CONSTRAINT IF EXISTS FK_Insureds_States_Mail
ALTER TABLE dbo.Insureds WITH CHECK ADD CONSTRAINT FK_Insureds_States_Mail FOREIGN KEY(Ins_Mail_State) REFERENCES lkp.States (S_Code)
ALTER TABLE dbo.Insureds CHECK CONSTRAINT FK_Insureds_States_Mail
