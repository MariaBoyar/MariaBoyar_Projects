
/*******************************************************************************/
/*             Extract Agencies In XML Format                                  */
/*             Keep Compnies Hierarchy                                         */
/*******************************************************************************/


SELECT A.Agc_Code, A.Agc_Name, A.Agc_Address_FullText, A.Agc_Phone
FROM Agencies A
WHERE Agc_ParentCompany_ID is Null
FOR XML RAW ('Agency'), ROOT ('Companies'), ELEMENTS;
