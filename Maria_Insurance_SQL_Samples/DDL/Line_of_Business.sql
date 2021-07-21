/***************  Line Of Business ****************************/
-- drop table if exists lkp.Line_of_Business 
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