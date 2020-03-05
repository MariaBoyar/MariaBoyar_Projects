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
