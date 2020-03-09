
/*******************************************************************************/
/*             Extract Agencies In XML Format                                  */
/*             Keep Compnies Hierarchy                                         */
/*******************************************************************************/

-- Raw By Raw version
SELECT A.Agc_Code, A.Agc_Name, A.Agc_Address_FullText, A.Agc_Phone
FROM Agencies A
WHERE Agc_ParentCompany_ID is Null
FOR XML RAW ('Agency'), ROOT ('Companies'), ELEMENTS;

-- Hierarchy version

with Agencies_Structure (Agc_ID, Agc_ParentCompany_ID, Agc_Name)  as 
(
    select Agc_ID, Agc_ParentCompany_ID, Agc_Name
	from dbo.Agencies
	where Agc_ParentCompany_ID is null
	Union all
	select A.Agc_ID, A.Agc_ParentCompany_ID, A.Agc_Name
	from dbo.Agencies A
	inner join Agencies_Structure as Structure on A.Agc_ParentCompany_ID = Structure.Agc_ID
)
select Agc_ID, Agc_ParentCompany_ID, Agc_Name
from Agencies_Structure
Order by Agc_ParentCompany_ID


-- Hierarchy version 3

DECLARE @Result_XML XML

with Agencies_Structure (Agc_ID, Agc_ParentCompany_ID, Agc_Name, [level])  as 
(
    select Agc_ID, Agc_ParentCompany_ID, Agc_Name, 1 as [level]
	from dbo.Agencies
	where Agc_ParentCompany_ID is null
	Union all
	select A.Agc_ID, A.Agc_ParentCompany_ID, A.Agc_Name, Structure.[level] + 1 as [level]
	from dbo.Agencies A
	inner join Agencies_Structure as Structure on A.Agc_ParentCompany_ID = Structure.Agc_ID
)
select Agc_ID, Agc_ParentCompany_ID, Agc_Name, [level]
from Agencies_Structure


DECLARE @Result_XML XML

SET @Result_XML = 
(
	Select  
   ( select   
        AStr.Agc_ID as Agc_ID
	  , AStr.[level] as [Level]
	  , AStr.Agc_ParentCompany_ID as Agc_ParentCompany_ID
	  , AStr.Agc_Name as Agc_Name
		
      , CONVERT(XML, 
              (SELECT 
			     r.Agc_ID as Agc_ID
			   , r.[Level]
			   , r.Agc_ParentCompany_ID as Agc_ParentCompany_ID
			   , r.Agc_Name as Agc_Name
	
		   
               FROM  /*Agencies_Structure*/dbo.f_Agencies_Structure() R
               WHERE R.Agc_ParentCompany_ID = AStr.Agc_ID
               FOR XML RAW ('Agency'), ELEMENTS, root('SubAgencies')
              ))


	FROM /*Agencies_Structure*/ dbo.f_Agencies_Structure() as AStr
	where AStr.Agc_ParentCompany_ID is null
	for xml raw('Agency'), elements, type
	)
	For xml raw('Agencies'), elements, type
)


	select @Result_XML








-- Hierarchy version 2

with Agencies_Structure (Agc_ID, Agc_ParentCompany_ID, Agc_Name) as 
(
    select Agc_ID, Agc_ParentCompany_ID, Agc_Name
	from dbo.Agencies
	where Agc_ParentCompany_ID is null
	Union all
	select A.Agc_ID, A.Agc_ParentCompany_ID, A.Agc_Name
	from dbo.Agencies A
	inner join Agencies_Structure as Structure on A.Agc_ParentCompany_ID = Structure.Agc_ID
	
)

select Agc_ID, Agc_ParentCompany_ID, Agc_Name
 ,(select Agc_Name
  from Agencies_Structure  Sub
  where Sub.Agc_ParentCompany_ID = Par.Agc_ID
  --FOR XML RAW ('Agency'), ELEMENTS
  for xml auto, type
  )
from Agencies_Structure Par
WHERE Agc_ParentCompany_ID is Null
FOR XML RAW ('Agency'), ROOT ('Companies'), ELEMENTS;
