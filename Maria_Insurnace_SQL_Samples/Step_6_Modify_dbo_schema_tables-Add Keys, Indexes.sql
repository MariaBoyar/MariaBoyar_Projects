/*******************************************************************/
/*  Step 6. Insert data to lkp.schema tables   */
/*******************************************************************/

USE [MariaBoyar_Insurance_Test]
GO

/*************  dbo.Agencies ****************************************************/
ALTER TABLE [dbo].[Agencies] DROP CONSTRAINT [FK_Agencies_Agencies]
GO

ALTER TABLE [dbo].[Agencies]  WITH CHECK ADD  CONSTRAINT [FK_Agencies_Agencies] FOREIGN KEY([Agc_ParentCompany_ID])
REFERENCES [dbo].[Agencies] ([Agc_ID])
GO

ALTER TABLE [dbo].[Agencies] CHECK CONSTRAINT [FK_Agencies_Agencies]
GO


--Agc_ID int NOT NULL identity (1,1) CONSTRAINT [PK_Agencies] PRIMARY KEY,