/***************   States ****************************/
--drop table if exists lkp.States

if not exists (select * from sys.tables t join sys.schemas s on (t.schema_id = s.schema_id) where s.name = 'lkp' and t.name = 'States') 
begin
  create table lkp.States (
  S_ID int not null identity (1,1), 
  S_Code varchar(5) not null,
  S_State varchar (250) not null,
  CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
  ([S_ID] ASC) WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
  )
 print 'Table lkp.States created'+char(13)
end
else print 'Table lkp.States already exists' +char(13)

GO

ALTER TABLE lkp.States ADD CONSTRAINT CK_S_Code UNIQUE (S_Code)

GO