/*******************************************************************/
/*  Step 3. Create "lkp" (lookup) Schema tables  */
-- DROP IF EXISTS - DIE new thing in SQL Server 2016
drop table if exists lkp.Line_of_Business 
drop table if exists lkp.Policy_Form
drop table if exists lkp.Policy_Term
drop table if exists lkp.Policy_Transaction_Type
drop table if exists lkp.States
/********************************************************************/

/***************  Line Of Business ****************************/

if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'lkp' and t.name = 'Line_of_Business') 
begin
  create table lkp.Line_of_Business 
 (
  L_ID int not null identity (1,1) CONSTRAINT [PK_Line_of_Business] PRIMARY KEY,
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
  Form_ID int not null identity (1,1) CONSTRAINT [PK_Policy_Form] PRIMARY KEY,
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
  Term_ID int not null identity (1,1) CONSTRAINT [PK_Policy_Term] PRIMARY KEY,
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
  Pol_TransType_ID int not null identity (1,1) CONSTRAINT [PK_Policy_Transaction_Type] PRIMARY KEY,
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
  S_ID int not null identity (1,1), 
  s_Code varchar(5) not null,
  S_State varchar (250) not null,
  CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
  ([S_ID] ASC) WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
  )
 print 'Table lkp.States created'+char(13)
end
else print 'Table lkp.States already exists' +char(13)