/*******************************************************************/
/*  Step 3. Create "lkp" (lookup) Schema tables  */
-- IF OBJECT_ID(N'dbo.Cars', N'U') IS NULL BEGIN CREATE TABLE dbo.Cars (Name varchar(64) not null); END; – hastrb Oct 3 '17 at 14:16 
drop table lkp.Line_of_Business
drop table lkp.Policy_Form
drop table lkp.Policy_Term
drop table lkp.Policy_Transaction_Type
drop table lkp.States
/********************************************************************/

/***************  Line Of Business ****************************/

if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'lkp' and t.name = 'Line_of_Business') 
begin
  create table lkp.Line_of_Business 
 (
  L_ID int not null,
  L_Abbreviation varchar (5) not null,
  L_Name varchar (250) not null,
  L_EntryDate date not null
 )
 print 'Table lkp.Line_of_Business created'+char(13)
end
else print 'Table lkp.Line_of_Business already exists' +char(13)


/***************   Policy_Form ****************************/

if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'lkp' and t.name = 'Policy_Form') 
begin
  create table lkp.Policy_Form 
 (
  Form_ID int not null,
  L_ID int not null,
  Form_Abbreviation varchar (5) not null,
  Form_Name varchar (250) not null,
  Form_EntryDate date not null
 )
 print 'Table lkp.Policy_Form created'+char(13)
end
else print 'Table lkp.Policy_Form already exists' +char(13)


/***************   Policy_Term ****************************/

if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'lkp' and t.name = 'Policy_Term') 
begin
  create table lkp.Policy_Term 
 (
  Term_ID int not null,
  Term_Abbreviation varchar (5) not null,
  Term_Name varchar (250) not null,
  Term_Months int not null,
  Term_EntryDate date not null
 )
 print 'Table lkp.Policy_Term created'+char(13)
end
else print 'Table lkp.Policy_Term already exists' +char(13)


/***************   Policy_Transaction_Type ****************************/

if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'lkp' and t.name = 'Policy_Transaction_Type') 
begin
  create table lkp.Policy_Transaction_Type 
 (
  Pol_TransType_ID int not null,
  Pol_TransType_Abbreviation varchar (5) not null,
  Pol_TransType_Name varchar (250) not null,
  Pol_TransType_IsQuote bit not null,
 )
 print 'Table lkp.Policy_Transaction_Type created'+char(13)
end
else print 'Table lkp.Policy_Transaction_Type already exists' +char(13)


/***************   States ****************************/


if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'lkp' and t.name = 'States') 
begin
  create table lkp.States (
  S_ID int not null,
  s_Code varchar(5) not null,
  S_State varchar (250) not null,
 )
 print 'Table lkp.States created'+char(13)
end
else print 'Table lkp.States already exists' +char(13)