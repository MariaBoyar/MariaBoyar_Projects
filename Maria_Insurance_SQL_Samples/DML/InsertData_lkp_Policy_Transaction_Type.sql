/***************   Policy_Transaction_Type ****************************/
-- truncate table lkp.Policy_Transaction_Type
print 'Insert Data lkp.Policy_Transaction_Type:'

insert into lkp.Policy_Transaction_Type (Pol_TransType_Abbreviation, Pol_TransType_Name, Pol_TransType_IsQuote)
select 'NB', 'New Business', 0 union all
select 'EN', 'Endorsement ', 0 union all
select 'CN', 'Cancellation', 0 union all
select 'CR', 'Cancel/Rewrite', 0 union all
select 'RI', 'Reinstatement', 0 union all
select 'QQ', 'Quick Quote', 1 union all
select 'FQ', 'Full Quote', 1
