 /***************   States ****************************/
-- truncate table lkp.States
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
