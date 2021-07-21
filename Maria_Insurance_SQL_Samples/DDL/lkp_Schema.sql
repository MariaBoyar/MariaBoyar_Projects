/***********************************************************************/
/*******  Step_2  Create [lkp] schema fofr look-up tables *****************/

/* TO see list of Existing schemas:

select s.name as schema_name, 
    s.schema_id,
    u.name as schema_owner
from sys.schemas s
inner join sys.sysusers u on u.uid = s.principal_id
order by s.name 
*/

/***********************************************************************/
use [MariaBoyar_Insurance_Test]
go 

-- IF NOT EXISTS ( SELECT  schema_name FROM    information_schema.schemata  WHERE   schema_name = 'lkp' ) 

if schema_id('lkp') is null
Begin
  EXEC sp_executesql N'CREATE SCHEMA [lkp] AUTHORIZATION [dbo]'
end
else print 'schema "lkp" already exists. '