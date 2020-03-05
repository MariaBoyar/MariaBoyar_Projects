USE [MariaBoyar_Insurance_Test]
GO

/***************   Policy_Form ****************************/

ALTER TABLE lkp.Policy_Form DROP CONSTRAINT IF EXISTS FK_Policy_Form_Line_of_Business
ALTER TABLE lkp.Policy_Form WITH CHECK ADD CONSTRAINT FK_Policy_Form_Line_of_Business FOREIGN KEY(L_ID) REFERENCES lkp.Line_of_Business (L_ID)
ALTER TABLE lkp.Policy_Form CHECK CONSTRAINT FK_Policy_Form_Line_of_Business


