/****************************************************************/
/*   Create dbo Schema tables*/
/****************************************************************/

/****** Object:  Table dbo.Policy_CoreData    ******/
/* drop table Policy_CoreData */

IF OBJECT_ID(N'dbo.Policy_CoreData', N'U') IS NULL 
BEGIN 

CREATE TABLE dbo.Policy_CoreData(
	Pol_ID int not null,
	Pol_Code varchar(50) not null,
	Pol_TermCode varchar(50) not null,
	Pol_TermEffectiveDate date not null,
	Pol_TermExpirationDate date not null,
	Pol_TransEffectiveDate date not null,
	Pol_TransEntryDate datetime not null,
	Pol_PrimaryHolder_ID int not null,
	L_ID int not null,
	Form_ID int not null,
	Pol_TransOrder int not null,
	Term_ID int not null,
	Pol_TransType_ID int not null,
	Pol_RateDate datetime not null,
	Agency_ID int not null,
	Agent_ID int not null,
	State_Code varchar(5) not null,
	Primary_insured_ID int not null
) 


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Producer/Agency/Company' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Policy_CoreData', @level2type=N'COLUMN',@level2name=N'Agency_ID'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Producer/User' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Policy_CoreData', @level2type=N'COLUMN',@level2name=N'Agent_ID'

print 'Table dbo.Policy_CoreData is created'+ char (13)
END
ELSE print 'Table dbo.Policy_CoreData already exists' + char (13)



/****** Object:  Table dbo.Policy_CoreData    ******/
/* drop table Insureds */

IF OBJECT_ID(N'dbo.Insureds', N'U') IS NULL 
BEGIN
CREATE TABLE dbo.Insureds(
	Ins_ID int not null,
	Ins_Code varchar(50) not null,
	Ins_IsPrimary bit not null,
	Ins_FirstName varchar(250) not null,
	Ins_LastName varchar(250) not null,
	Ins_DoB date not null,

	Ins_Phys_Address1 varchar(250) not null,
	Ins_Phys_Address2 varchar(250) not null,
	Ins_Phys_City varchar(150) not null,
	Ins_Phys_County varchar(150) not null,
	Ins_Phys_State varchar(5) not null,
	Ins_Phys_Zip varchar(50) not null,

	Ins_Mail_Address1 date null,
	Ins_Mail_Address2 date null,
	Ins_Mail_City datetime null,
	Ins_Mail_County int null,
	Ins_Mail_State int null,
	Ins_Mail_Zip int null,
) 
print 'Table dbo.Insureds is created' + char (13)
END
else Print 'Table dbo.Insureds already exists' + char (13)
