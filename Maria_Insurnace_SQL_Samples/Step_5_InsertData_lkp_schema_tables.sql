/*******************************************************************/
/*  Step 5. chema tables  */
-- IF OBJECT_ID(N'dbo.Cars', N'U') IS NULL BEGIN CREATE TABLE dbo.Cars (Name varchar(64) not null); END; – hastrb Oct 3 '17 at 14:16 
use [MariaBoyar_Insurance_Test]
truncate table lkp.Line_of_Business
truncate table lkp.Policy_Form
truncate table lkp.Policy_Term
truncate table lkp.Policy_Transaction_Type
truncate table lkp.States
GO
/********************************************************************/

/***************  Line Of Business ****************************/
 print 'Insert Data lkp.Line_of_Business:'
  insert into lkp.Line_of_Business  (L_Abbreviation, L_Name, L_EntryDate)
  select 'PA', 'Personal Auto', '2018-01-01' union all
  select 'HO', 'Homeowners Insurance', '2018-01-01' 
 print char(13)


 /***************   States ****************************/

print 'Insert Data lkp.States:'
insert into lkp.States (S_State, S_Code)
  select  'Alabama', 'AL' union all
  select  'Alaska', 'AK' union all
  select  'Arizona', 'AZ' union all
  select  'Arkansas', 'AR' union all
  select  'California', 'CA' union all
  select  'Colorado', 'CO' union all
  select  'Connecticut', 'CT' union all
  select  'Delaware', 'DE' union all
  select  'Florida', 'FL' union all
  select  'Georgia', 'GA' union all
  select  'Hawaii', 'HI' union all
  select  'Idaho', 'ID' union all
  select  'Illinois', 'IL' union all
  select  'Indiana', 'IN' union all
  select  'Iowa', 'IA' union all
  select  'Kansas', 'KS' union all
  select  'Kentucky', 'KY' union all
  select  'Louisiana', 'LA' union all
  select  'Maine', 'ME' union all
  select  'Maryland', 'MD' union all
  select  'Massachusetts', 'MA' union all
  select  'Michigan', 'MI' union all
  select  'Minnesota', 'MN' union all
  select  'Mississippi', 'MS' union all
  select  'Missouri', 'MO' union all
  select  'Montana', 'MT' union all
  select  'Nebraska', 'NE' union all
  select  'Nevada', 'NV' union all
  select  'New Hampshire', 'NH' union all
  select  'New Jersey', 'NJ' union all
  select  'New Mexico', 'NM' union all
  select  'New York', 'NY' union all
  select  'North Carolina', 'NC' union all
  select  'North Dakota', 'ND' union all
  select  'Ohio', 'OH' union all
  select  'Oklahoma', 'OK' union all
  select  'Oregon', 'OR' union all
  select  'Pennsylvania', 'PA' union all
  select  'Rhode Island', 'RI' union all
  select  'South Carolina', 'SC' union all
  select  'South Dakota', 'SD' union all
  select  'Tennessee', 'TN' union all
  select  'Texas', 'TX' union all
  select  'Utah', 'UT' union all
  select  'Vermont', 'VT' union all
  select  'Virginia', 'VA' union all
  select  'Washington', 'WA' union all
  select  'West Virginia', 'WV' union all
  select  'Wisconsin', 'WI' union all
  select  'Wyoming', 'WY' 

print char(13)



/***************   Policy_Form ****************************/
print 'Insert Data lkp.Policy_Form:'

 insert into lkp.Policy_Form (L_ID, S_Code, Form_Abbreviation, Form_Name , Form_EntryDate)
   select (select top 1 L_ID from lkp.Line_of_Business where L_Abbreviation = 'PA'), 'NC', 'PA-NC', 'Personal Auto', '2018-01-01'

print char(13)


/***************   Policy_Term ****************************/
print 'Insert Data lkp.Policy_Term:'

insert into lkp.Policy_Term  (Term_Abbreviation, Term_Name, Term_Months, Term_EntryDate)
select '6MO', '6 Monts', 6, '2018-01-01' union all
select '12MO', '12 Monts', 12, '2018-01-01'

print char(13)

/***************   Policy_Transaction_Type ****************************/
print 'Insert Data lkp.Policy_Transaction_Type:'

insert into lkp.Policy_Transaction_Type (Pol_TransType_Abbreviation, Pol_TransType_Name, Pol_TransType_IsQuote)
select 'NB', 'New Business', 0 union all
select 'EN', 'Endorsement ', 0 union all
select 'CN', 'Cancellation', 0 union all
select 'CR', 'Cancel/Rewrite', 0 union all
select 'RI', 'Reinstatement', 0 union all
select 'QQ', 'Quick Quote', 1 union all
select 'FQ', 'Full Quote', 1
print char(13)

