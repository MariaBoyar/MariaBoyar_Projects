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
