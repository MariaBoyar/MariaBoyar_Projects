/***************   Policy_Term ****************************/
-- drop table if exists lkp.Policy_Term
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
