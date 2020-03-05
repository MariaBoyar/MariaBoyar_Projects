/***************   Policy_Term ****************************/
-- truncate table lkp.Policy_Term
print 'Insert Data lkp.Policy_Term:'

insert into lkp.Policy_Term  (Term_Abbreviation, Term_Name, Term_Months, Term_EntryDate)
select '6MO', '6 Monts', 6, '2018-01-01' union all
select '12MO', '12 Monts', 12, '2018-01-01'