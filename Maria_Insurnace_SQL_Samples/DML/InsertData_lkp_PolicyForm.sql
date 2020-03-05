/***************   Policy_Form ****************************/
-- truncate table lkp.Policy_Form
print 'Insert Data lkp.Policy_Form:'

 insert into lkp.Policy_Form (L_ID, S_Code, Form_Abbreviation, Form_Name , Form_EntryDate)
   select (select top 1 L_ID from lkp.Line_of_Business where L_Abbreviation = 'PA'), 'NC', 'PA-NC', 'Personal Auto', '2018-01-01'

