/****** Object:  Table dbo.Agents    ******/
/* drop table dbo.Agents */

IF OBJECT_ID(N'dbo.Agents', N'U') IS NULL 
BEGIN
CREATE TABLE dbo.Agents(
	Agt_ID int not null identity (1,1) CONSTRAINT [PK_Agents] PRIMARY KEY,
	Agc_ID  int not null,
	Agt_Code varchar(50) not null,
	Agt_Manager_ID int null,
	Agt_FirstName varchar(250) not null,
	Agt_LastName varchar(250) not null,
	Agt_DoB date not null,
	Agt_Phone varchar(20) null,
	Agt_EntryDate datetime
) 
print 'Table dbo.Agents is created' 
END
else Print 'Table dbo.Agents already exists' 
