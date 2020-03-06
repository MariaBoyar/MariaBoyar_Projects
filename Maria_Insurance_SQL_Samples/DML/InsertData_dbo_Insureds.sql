
/***************  Insureds ****************************/
-- truncate table dbo.Insureds
 print 'Insert Data dbo.Insureds'

 USE [MariaBoyar_Insurance_Test]
GO

INSERT INTO [dbo].[Insureds]
  ( [Ins_Name]
  , [Ins_Code]
  , [Ins_Address_FullText]
  , [Ins_Phys_Address1]
  , [Ins_Phys_City]
  , [Ins_Phys_State]
  , [Ins_Phys_Zip]
  , [Ins_Phone]

)        
SELECT 'Amica Mutual', '3457896', '8537 Six Forks Rd Suite 100, Raleigh, NC 27615', '8537 Six Forks Rd Suite 100', 'Raleigh', 'NC', '27615', '(800) 892-6422' union all 
SELECT 'ACF Insurance Services', '4968405', '1545 US-70, Garner, NC 27529', '1545 US-70', 'Garner', 'NC', '27529', '(919) 661-1100' union all
SELECT 'Carolina Capital Insurance Group', '456756562', '1009 Bullard Ct Ste 201, Raleigh, NC 27615', '1009 Bullard Ct Ste 201', 'Raleigh', 'NC', '27615', '(919) 747-9002' union all 
SELECT 'Blackmon Insurance Agency of North Carolina, Inc', '85678', '4280 Louisburg Rd, Raleigh, NC 27604', '4280 Louisburg Rd', 'Raleigh', 'NC', '27604', '(919) 875-8500' union all 
SELECT 'Insurance Doctor of Raleigh NC', '5678578', '4237 Louisburg Rd #101, Raleigh, NC 27604', '4237 Louisburg Rd #101', 'Raleigh', 'NC', '27604', '(919) 578-9619' union all 
SELECT 'Snotherly Insurance Agency', '64754', '2308 Wake Forest Rd, Raleigh, NC 27608', '2308 Wake Forest Rd', 'Raleigh', 'NC', '27608', '(919) 832-5832' union all 
SELECT 'Brown Phillips Insurance', '96789678', '4940 Windy Hill Dr ste b, Raleigh, NC 27609', '4940 Windy Hill Dr ste b', 'Raleigh', 'NC', '27609', '(919) 874-0405' union all 
SELECT 'Builders Mutual Insurance Company', '234563', '5580 Centerview Dr, Raleigh, NC 27606', '5580 Centerview Dr', 'Raleigh', 'NC', '27606', '(800) 809-4858' union all 
SELECT 'Stonewood Insurance Co', '7564676', '6131 Falls of Neuse Rd, Raleigh, NC 27609', '6131 Falls of Neuse Rd', 'Raleigh', 'NC', '27609', '(919) 882-3500' union all 
SELECT 'Direct Auto Insurance', '867858', '3231 Avent Ferry Rd #101, Raleigh, NC 27606', '3231 Avent Ferry Rd #101', 'Raleigh', 'NC', '27606', '(919) 326-6440' union all 
SELECT 'Discovery Insurance Company', '5787343', '604 N Queen St, Kinston, NC 28501', '604 N Queen St', 'Kinston', 'NC', '28501', '(800) 876-1492' union all 
SELECT 'Lipstone Insurance Group', '23546', '208 New Edition Ct, Cary, NC 27511', '208 New Edition Ct', 'Cary', 'NC', '27511', '(919) 463-5300' union all 
SELECT 'Direct Auto Insurance', '54677642', '3627 New Bern Ave, Raleigh, NC 27610', '3627 New Bern Ave', 'Raleigh', 'NC', '27610', '(919) 231-3544' union all 
SELECT 'Triangle Insurance Alliance', '87655', '2530 Meridian Pkwy #300, Durham, NC 27713', '2530 Meridian Pkwy #300', 'Durham', 'NC', '27713', '(919) 322-3640' union all 
SELECT 'Amistad Insurance Services', '98765', '421-114 Chapanoke Rd, Raleigh, NC 27603', '421-114 Chapanoke Rd', 'Raleigh', 'NC', '27603', '(919) 926-7166' union all 
SELECT 'Horace Mann Insurance Company', '34524', '853 Durham Rd, Wake Forest, NC 27587', '853 Durham Rd', 'Wake Forest', 'NC', '27587', '(919) 562-0175' union all 
SELECT 'Blackmon Insurance Agency of North Carolina, Inc', '5756690', '3416 Poole Rd #110, Raleigh, NC 27610', '3416 Poole Rd #110', 'Raleigh', 'NC', '27610', '(919) 231-8131' union all 
SELECT 'Liberty Mutual Insurance', '456767', '1511 Sunday Dr Suite 200, Raleigh, NC 27607', '1511 Sunday Dr Suite 200', 'Raleigh', 'NC', '27607', '(919) 985-8799' union all 
SELECT 'NC Mutual Life Insurance Company', '878756', '411 W Chapel Hill St, Durham, NC 27701', '411 W Chapel Hill St', 'Durham', 'NC', '27701', '(800) 626-1899'  


GO

update dbo.Insureds set Ins_EntryDate = '2018-01-01'
/*  Assigning Parent Compnay ID*/

update dbo.Insureds set Ins_ParentCompany_ID = Null where Ins_Name = 'Amica Mutual'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Amica Mutual') where Ins_Name = 'ACF Insurance Services'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Amica Mutual') where Ins_Name = 'Carolina Capital Insurance Group'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'ACF Insurance Services') where Ins_Name = 'Blackmon Insurance Agency of North Carolina, Inc'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'ACF Insurance Services') where Ins_Name = 'Insurance Doctor of Raleigh NC'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Carolina Capital Insurance Group') where Ins_Name = 'Snotherly Insurance Agency'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Carolina Capital Insurance Group') where Ins_Name = 'Brown Phillips Insurance'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Insurance Doctor of Raleigh NC') where Ins_Name = 'Builders Mutual Insurance Company'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Insurance Doctor of Raleigh NC') where Ins_Name = 'Stonewood Insurance Co'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Brown Phillips Insurance') where Ins_Name = 'Direct Auto Insurance'
update dbo.Insureds set Ins_ParentCompany_ID = Null where Ins_Name = 'Discovery Insurance Company'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Discovery Insurance Company') where Ins_Name = 'Lipstone Insurance Group'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Discovery Insurance Company') where Ins_Name = 'Direct Auto Insurance'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Lipstone Insurance Group') where Ins_Name = 'Triangle Insurance Alliance'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Direct Auto Insurance') where Ins_Name = 'Amistad Insurance Services'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Lipstone Insurance Group') where Ins_Name = 'Horace Mann Insurance Company'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Triangle Insurance Alliance') where Ins_Name = 'Blackmon Insurance Agency of North Carolina, Inc'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Horace Mann Insurance Company') where Ins_Name = 'Liberty Mutual Insurance'
update dbo.Insureds set Ins_ParentCompany_ID = (select top 1 Ins_ID From dbo.Insureds where Ins_Name = 'Liberty Mutual Insurance') where Ins_Name = 'NC Mutual Life Insurance Company'

