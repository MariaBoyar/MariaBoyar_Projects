/***************   Policy_Transaction_Type ****************************/
-- drop table if exists lkp.Policy_Transaction_Type
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
