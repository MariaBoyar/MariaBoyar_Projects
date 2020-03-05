/***************   Policy_Form ****************************/
-- drop table if exists lkp.Policy_Form
if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'lkp' and t.name = 'Policy_Form') 
begin
  create table lkp.Policy_Form 
 (
  Form_ID int not null identity (1,1) CONSTRAINT [PK_Policy_Form] PRIMARY KEY,
  L_ID int not null,
  S_Code varchar (5) not null,
  Form_Abbreviation varchar (5) not null,
  Form_Name varchar (250) not null,
  Form_EntryDate date not null
 )
 print 'Table lkp.Policy_Form created'+char(13)
end
else print 'Table lkp.Policy_Form already exists' +char(13)
