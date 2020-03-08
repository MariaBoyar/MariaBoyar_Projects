USE [MariaBoyar_Insurance_Test]
GO

/*************  dbo.Policy_CoreData ****************************************************/
ALTER TABLE dbo.Policy_CoreData DROP CONSTRAINT IF EXISTS FK_Policy_CoreData_Line_of_Business
ALTER TABLE dbo.Policy_CoreData WITH CHECK ADD CONSTRAINT FK_Policy_CoreData_Line_of_Business FOREIGN KEY(L_ID) REFERENCES lkp.Line_of_Business (L_ID)
ALTER TABLE dbo.Policy_CoreData CHECK CONSTRAINT FK_Policy_CoreData_Line_of_Business


ALTER TABLE dbo.Policy_CoreData DROP CONSTRAINT IF EXISTS FK_Policy_CoreData_States
ALTER TABLE dbo.Policy_CoreData WITH CHECK ADD CONSTRAINT FK_Policy_CoreData_States FOREIGN KEY(State_Code) REFERENCES lkp.States (S_Code)
ALTER TABLE dbo.Policy_CoreData CHECK CONSTRAINT FK_Policy_CoreData_States


ALTER TABLE dbo.Policy_CoreData DROP CONSTRAINT IF EXISTS FK_Policy_CoreData_Policy_Form
ALTER TABLE dbo.Policy_CoreData WITH CHECK ADD CONSTRAINT FK_Policy_CoreData_Policy_Form FOREIGN KEY(Form_ID) REFERENCES lkp.Policy_Form (Form_ID)
ALTER TABLE dbo.Policy_CoreData CHECK CONSTRAINT FK_Policy_CoreData_Policy_Form


ALTER TABLE dbo.Policy_CoreData DROP CONSTRAINT IF EXISTS FK_Policy_CoreData_Policy_Term
ALTER TABLE dbo.Policy_CoreData WITH CHECK ADD CONSTRAINT FK_Policy_CoreData_Policy_Term FOREIGN KEY(Term_ID) REFERENCES lkp.Policy_Term (Term_ID)
ALTER TABLE dbo.Policy_CoreData CHECK CONSTRAINT FK_Policy_CoreData_Policy_Term


ALTER TABLE dbo.Policy_CoreData DROP CONSTRAINT IF EXISTS FK_Policy_CoreData_Policy_Transaction_Type
ALTER TABLE dbo.Policy_CoreData WITH CHECK ADD CONSTRAINT FK_Policy_CoreData_Policy_Transaction_Type FOREIGN KEY(Pol_TransType_ID) REFERENCES lkp.Policy_Transaction_Type (Pol_TransType_ID)
ALTER TABLE dbo.Policy_CoreData CHECK CONSTRAINT FK_Policy_CoreData_Policy_Transaction_Type


ALTER TABLE dbo.Policy_CoreData DROP CONSTRAINT IF EXISTS FK_Policy_CoreData_Agencies
ALTER TABLE dbo.Policy_CoreData WITH CHECK ADD  CONSTRAINT FK_Policy_CoreData_Agencies FOREIGN KEY(Agency_ID) REFERENCES dbo.Agencies (Agc_ID)
ALTER TABLE dbo.Policy_CoreData CHECK CONSTRAINT FK_Policy_CoreData_Agencies


ALTER TABLE dbo.Policy_CoreData DROP CONSTRAINT IF EXISTS FK_Policy_CoreData_Agents
ALTER TABLE dbo.Policy_CoreData WITH CHECK ADD  CONSTRAINT FK_Policy_CoreData_Agents FOREIGN KEY(Agent_ID) REFERENCES dbo.Agents (Agt_ID)
ALTER TABLE dbo.Policy_CoreData CHECK CONSTRAINT FK_Policy_CoreData_Agents


ALTER TABLE dbo.Policy_CoreData DROP CONSTRAINT IF EXISTS FK_Policy_CoreData_Insureds
ALTER TABLE dbo.Policy_CoreData WITH CHECK ADD  CONSTRAINT FK_Policy_CoreData_Insureds FOREIGN KEY(Primary_Insured_ID) REFERENCES dbo.Insureds (Ins_ID)
ALTER TABLE dbo.Policy_CoreData CHECK CONSTRAINT FK_Policy_CoreData_Insureds


