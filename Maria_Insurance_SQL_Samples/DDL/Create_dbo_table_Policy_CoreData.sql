/****** Object:  Table dbo.Policy_CoreData    ******/
/* drop table if exists Policy_CoreData */

IF OBJECT_ID(N'dbo.Policy_CoreData', N'U') IS NULL 
BEGIN 

CREATE TABLE dbo.Policy_CoreData(
	Pol_ID int not null identity (1,1) CONSTRAINT [PK_Policy_CoreData] PRIMARY KEY,
	Pol_Code varchar(50) not null,
	Pol_TermCode varchar(50) not null,
	Pol_TermEffectiveDate date not null,
	Pol_TermExpirationDate date not null,
	Pol_TransEffectiveDate date not null,
	Pol_TransEntryDate datetime not null,
	Primary_Insured_ID int not null,
	L_ID int not null,
	Form_ID int not null,
	Pol_TransOrder int not null,
	Term_ID int not null,
	Pol_TransType_ID int not null,
	Pol_RateDate datetime not null,
	Agency_ID int not null,
	Agent_ID int not null,
	State_Code varchar(5) not null
) 


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Producer/Agency/Company' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Policy_CoreData', @level2type=N'COLUMN',@level2name=N'Agency_ID'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Producer/User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Policy_CoreData', @level2type=N'COLUMN',@level2name=N'Agent_ID'

print 'Table dbo.Policy_CoreData is created'+ char (13)
END
ELSE print 'Table dbo.Policy_CoreData already exists' + char (13)
