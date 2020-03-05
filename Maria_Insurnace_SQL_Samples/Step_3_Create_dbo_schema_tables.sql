/****************************************************************/
/*   Create dbo Schema tables*/
-- DROP IF EXISTS - DIE new thing in SQL Server 2016
-- drop table if exists Policy_CoreData
-- drop table if exists Insureds
-- drop table if exists Agencies
-- drop table if exists Agents

/****************************************************************/

USE MariaBoyar_Insurance_Test
GO 

/****** Object:  Table dbo.Policy_CoreData    ******/
/* drop table Policy_CoreData */

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



/****** Object:  Table dbo.Insureds    ******/
/* drop table dbo.Insureds */

IF OBJECT_ID(N'dbo.Insureds', N'U') IS NULL 
BEGIN
CREATE TABLE dbo.Insureds(
	Ins_ID int not null identity (1,1) CONSTRAINT [PK_Insureds] PRIMARY KEY,
	Ins_Code varchar(50) not null,
	Ins_IsPrimary bit not null,
	Ins_FirstName varchar(250) not null,
	Ins_LastName varchar(250) not null,
	Ins_DoB date not null,

	Ins_Phys_Address1 varchar(250) not null,
	Ins_Phys_Address2 varchar(250) not null,
	Ins_Phys_City varchar(150) not null,
	Ins_Phys_County varchar(150) null,
	Ins_Phys_State varchar(5) not null,
	Ins_Phys_Zip varchar(50) not null,

	Ins_Mail_Address1 date null,
	Ins_Mail_Address2 date null,
	Ins_Mail_City datetime null,
	Ins_Mail_County int null,
	Ins_Mail_State int null,
	Ins_Mail_Zip int null,

	Ins_Phone varchar(20) null,
	Ins_EntryDate datetime
) 
print 'Table dbo.Insureds is created' + char (13)
END
else Print 'Table dbo.Insureds already exists' + char (13)


/****** Object:  Table dbo.Agencies    ******/
/* drop table dbo.Agencies */

IF OBJECT_ID(N'dbo.Agencies', N'U') IS NULL 
BEGIN
  CREATE TABLE dbo.Agencies(
  	Agc_ID int NOT NULL identity (1,1) CONSTRAINT [PK_Agencies] PRIMARY KEY,
	Agc_Code varchar(50) NOT NULL,
	Agc_ParentCompany_ID int NULL,
	Agc_Name varchar(250) NOT NULL,

	Agc_Phys_Address1 varchar(250) NOT NULL,
	Agc_Phys_Address2 varchar(250) NULL,
	Agc_Phys_City varchar(250) NOT NULL,
	Agc_Phys_State varchar(5) NOT NULL,
	Agc_Phys_Zip varchar(20) NOT NULL,

	Agc_Mail_Address1 varchar(250) NULL,
	Agc_Mail_Address2 varchar(250) NULL,
	Agc_Mail_City varchar(250) NULL,
	Agc_Mail_State varchar(5) NULL,
	Agc_Mail_Zip varchar(20) NULL,

	Agc_Phone varchar(20) NULL,
	Agc_EntryDate datetime,
	Agc_Address_FullText varchar (500)
  ) 
print 'Table dbo.Agencies is created' + char (13)
END
else Print 'Table dbo.Agencies already exists' + char (13)



/****** Object:  Table dbo.Agents    ******/
/* drop table dbo.Agents */

IF OBJECT_ID(N'dbo.Agents', N'U') IS NULL 
BEGIN
CREATE TABLE dbo.Agents(
	Agt_ID int not null identity (1,1) CONSTRAINT [PK_Agents] PRIMARY KEY,
	Agt_Code varchar(50) not null,
	Agt_Manager_ID bit not null,
	Agt_FirstName varchar(250) not null,
	Agt_LastName varchar(250) not null,
	Agt_DoB date not null,
	Agt_Phone varchar(20) null,
	Agt_EntryDate datetime
) 
print 'Table dbo.Agents is created' + char (13)
END
else Print 'Table dbo.Agents already exists' + char (13)