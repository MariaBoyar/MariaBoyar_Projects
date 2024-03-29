USE [MariaBoyar_Insurance]
GO

/***************   Policy_Form ****************************/

ALTER TABLE lkp.Policy_Form DROP CONSTRAINT IF EXISTS FK_Policy_Form_Line_of_Business
ALTER TABLE lkp.Policy_Form WITH CHECK ADD CONSTRAINT FK_Policy_Form_Line_of_Business FOREIGN KEY(L_ID) REFERENCES lkp.Line_of_Business (L_ID)
ALTER TABLE lkp.Policy_Form CHECK CONSTRAINT FK_Policy_Form_Line_of_Business


ALTER TABLE lkp.Policy_Form DROP CONSTRAINT IF EXISTS FK_Policy_Form_States
ALTER TABLE lkp.Policy_Form WITH CHECK ADD CONSTRAINT FK_Policy_Form_States FOREIGN KEY(S_Code) REFERENCES lkp.States (S_Code)
ALTER TABLE lkp.Policy_Form CHECK CONSTRAINT FK_Policy_Form_States