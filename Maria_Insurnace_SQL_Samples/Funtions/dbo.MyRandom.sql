USE [MariaBoyar_Insurance_Test]
GO

/****** Object:  UserDefinedFunction [dbo].[MyRandom]    Script Date: 3/5/2020 1:03:15 PM ******/
DROP FUNCTION IF EXISTS [dbo].[MyRandom]
GO

/****** Object:  UserDefinedFunction [dbo].[MyRandom]    Script Date: 3/5/2020 1:03:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[MyRandom] (@Upper INT,@Lower INT, @randomvalue numeric(18,10))
RETURNS INT
AS
 
/**  function MyRandom is used only for generating test Data **/
/* Function is from here:
https://social.msdn.microsoft.com/Forums/sqlserver/en-US/783033b1-255f-49f6-82cd-e8d5c315f21e/generate-random-number-between-two-number?forum=transactsql
*/

BEGIN
DECLARE @Random INT
SELECT @Random = ROUND(((@Upper - @Lower -1) * @randomvalue + @Lower), 0)
RETURN @Random
END;

GO


