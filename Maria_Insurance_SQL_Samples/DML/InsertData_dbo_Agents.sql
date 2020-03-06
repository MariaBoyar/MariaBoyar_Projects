
/***************  Agents ****************************/
-- truncate table dbo.Agents
 print 'Insert Data dbo.Agents'

 USE [MariaBoyar_Insurance_Test]
GO

INSERT INTO [dbo].[Agents]
    (       [Agc_ID]
           ,[Agt_Code]
           ,[Agt_Manager_ID]
           ,[Agt_FirstName]
           ,[Agt_LastName]
           ,[Agt_DoB]
           ,[Agt_Phone]

	)

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Amica Mutual'), 'x21', null, 'Maren', 'Friska', '1970-05-03', '(800) 892-6423', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Amica Mutual'), 'x22', null, 'William', 'Lane', '1970-05-12', '(800) 892-6424', union all 

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'ACF Insurance Services'), 'x31', null, 'Joseph', 'Mordini', '1971-04-06', '(919) 661-1101', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'ACF Insurance Services'), 'x32', null, 'Maren', 'Friska', '1976-06-18', '(919) 661-1102', union all 

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Carolina Capital Insurance Group'), 'x41', null, 'Angie', 'Patrivk', '1965-02-14', '(919) 747-9003', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Carolina Capital Insurance Group'), 'x42', null, 'Kevin', 'Ruffin', '1983-08-15', '(919) 747-9004', union all      

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Blackmon Insurance Agency of North Carolina, Inc'), 'x51', null, 'Ismail', 'Sardar', '1984-08-12', '(919) 875-8501', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Blackmon Insurance Agency of North Carolina, Inc'), 'x52', null, 'Mohammed', 'Usman', '1970-03-03', '(919) 875-8502', union all      

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Insurance Doctor of Raleigh NC'), 'x61', null, 'Mike', 'Lee', '1990-05-30', '(919) 578-9620', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Insurance Doctor of Raleigh NC'), 'x62', null, 'Carol', 'King', '1962-12-17', '(919) 578-9621', union all      

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Snotherly Insurance Agency'), 'x71', null, 'Megan', 'Goetics', '1979-09-22', '(919) 832-5833', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Snotherly Insurance Agency'), 'x72', null, 'Jane', 'Erikson', '1981-08-02', '(919) 832-5834', union all      

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Brown Phillips Insurance'), 'x81', null, 'Julia', 'Markova', '1960-03-08', '(919) 874-0406', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Brown Phillips Insurance'), 'x82', null, 'Kostantin', 'Vershinin', '1988-11-28', '(919) 874-0407', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Builders Mutual Insurance Company'), 'x91', null, 'Julie', 'Melson', '1964-06-30', '(800) 809-4859', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Builders Mutual Insurance Company'), 'x92', null, 'Simon', 'Nianci', '1970-10-10', '(800) 809-4860', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Stonewood Insurance Co'), 'x101', null, 'Georgia', 'Lockhart', '1970-02-22', '(919) 882-3501', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Stonewood Insurance Co'), 'x102', null, '', '', '1970-05-03', '(919) 882-3502', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Direct Auto Insurance'), 'x11', null, '', '', '1970-05-03', '(919) 326-6441', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Direct Auto Insurance'), 'x12', null, '', '', '1970-05-03', '(919) 326-6442', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Discovery Insurance Company'), 'x121', null, '', '', '1970-05-03', '(800) 876-1493', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Discovery Insurance Company'), 'x122', null, '', '', '1970-05-03', '(800) 876-1494', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Lipstone Insurance Group'), 'x131', null, '', '', '1970-05-03', '(919) 463-5301', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Lipstone Insurance Group'), 'x132', null, '', '', '1970-05-03', '(919) 463-5302', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Direct Auto Insurance'), 'x141', null, '', '', '1970-05-03', '(919) 231-3545', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Direct Auto Insurance'), 'x142', null, '', '', '1970-05-03', '(919) 231-3546', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Triangle Insurance Alliance'), 'x151', null, '', '', '1970-05-03', '(919) 322-3641', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Triangle Insurance Alliance'), 'x152', null, '', '', '1970-05-03', '(919) 322-3642', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Amistad Insurance Services'), 'x161', null, '', '', '1970-05-03', '(919) 926-7167', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Amistad Insurance Services'), 'x162', null, '', '', '1970-05-03', '(919) 926-7168', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Horace Mann Insurance Company'), 'x171', null, '', '', '1970-05-03', '(919) 562-0176', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Horace Mann Insurance Company'), 'x172', null, '', '', '1970-05-03', '(919) 562-0177', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Blackmon Insurance Agency of North Carolina, Inc'), 'x181', null, '', '', '1970-05-03', '(919) 231-8132', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Blackmon Insurance Agency of North Carolina, Inc'), 'x182', null, '', '', '1970-05-03', '(919) 231-8133', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Liberty Mutual Insurance'), 'x191', null, '', '', '1970-05-03', '(919) 985-8800', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Liberty Mutual Insurance'), 'x192', null, '', '', '1970-05-03', '(919) 985-8801', union all

select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'NC Mutual Life Insurance Company'), 'x201', null, 'Maren', 'Friska', '1970-05-03', '(800) 626-1900', union all 
select (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'NC Mutual Life Insurance Company'), 'x202', null, 'Maren', 'Friska', '1970-05-03', '(800) 626-1901'


GO

update dbo.Agents set Agc_EntryDate = '2018-01-01'

/*  Assigning Parent Manager ID*/

update dbo.Agents
set Agt_Manager_ID = 
   (select )

--update dbo.Agencies set Agc_ParentCompany_ID = Null where Agc_Name = 'Amica Mutual'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Amica Mutual') where Agc_Name = 'ACF Insurance Services'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Amica Mutual') where Agc_Name = 'Carolina Capital Insurance Group'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'ACF Insurance Services') where Agc_Name = 'Blackmon Insurance Agency of North Carolina, Inc'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'ACF Insurance Services') where Agc_Name = 'Insurance Doctor of Raleigh NC'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Carolina Capital Insurance Group') where Agc_Name = 'Snotherly Insurance Agency'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Carolina Capital Insurance Group') where Agc_Name = 'Brown Phillips Insurance'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Insurance Doctor of Raleigh NC') where Agc_Name = 'Builders Mutual Insurance Company'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Insurance Doctor of Raleigh NC') where Agc_Name = 'Stonewood Insurance Co'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Brown Phillips Insurance') where Agc_Name = 'Direct Auto Insurance'
--update dbo.Agencies set Agc_ParentCompany_ID = Null where Agc_Name = 'Discovery Insurance Company'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Discovery Insurance Company') where Agc_Name = 'Lipstone Insurance Group'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Discovery Insurance Company') where Agc_Name = 'Direct Auto Insurance'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Lipstone Insurance Group') where Agc_Name = 'Triangle Insurance Alliance'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Direct Auto Insurance') where Agc_Name = 'Amistad Insurance Services'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Lipstone Insurance Group') where Agc_Name = 'Horace Mann Insurance Company'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Triangle Insurance Alliance') where Agc_Name = 'Blackmon Insurance Agency of North Carolina, Inc'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Horace Mann Insurance Company') where Agc_Name = 'Liberty Mutual Insurance'
--update dbo.Agencies set Agc_ParentCompany_ID = (select top 1 AGC_ID From dbo.Agencies where Agc_Name = 'Liberty Mutual Insurance') where Agc_Name = 'NC Mutual Life Insurance Company'

