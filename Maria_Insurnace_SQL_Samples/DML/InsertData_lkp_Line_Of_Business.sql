/***************  Line Of Business ****************************/
-- truncate table lkp.Line_of_Business
 print 'Insert Data lkp.Line_of_Business:'
  insert into lkp.Line_of_Business  (L_Abbreviation, L_Name, L_EntryDate)
  select 'PA', 'Personal Auto', '2018-01-01' union all
  select 'HO', 'Homeowners Insurance', '2018-01-01' 
 print char(13)