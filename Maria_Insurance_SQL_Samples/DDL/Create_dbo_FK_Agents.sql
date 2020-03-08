USE [MariaBoyar_Insurance_Test]
GO

/*************  dbo.Agents ****************************************************/
ALTER TABLE dbo.Agents DROP CONSTRAINT IF EXISTS FK_Agents_Agencies
ALTER TABLE dbo.Agents WITH CHECK ADD  CONSTRAINT FK_Agents_Agencies FOREIGN KEY(Agc_ID) REFERENCES dbo.Agencies (Agc_ID)
ALTER TABLE dbo.Agents CHECK CONSTRAINT FK_Agents_Agencies

ALTER TABLE dbo.Agents DROP CONSTRAINT IF EXISTS FK_Agents_Agents
ALTER TABLE dbo.Agents WITH CHECK ADD  CONSTRAINT FK_Agents_Agents FOREIGN KEY(Agt_Manager_ID) REFERENCES dbo.Agents (Agt_ID)
ALTER TABLE dbo.Agents CHECK CONSTRAINT FK_Agents_Agents