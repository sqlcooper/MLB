
CREATE PROCEDURE dbo.LoadDates @Season INT

AS

BEGIN

/*********
Insert all dates from March 28 to October 1 for season (year)
**********/

SET NOCOUNT ON

DECLARE @GameDate DATE, @EndDate DATE

SELECT @GameDate = CAST(@Season AS CHAR(4)) + '-03-28'
SELECT @EndDate = CAST(@Season AS CHAR(4)) + '-10-01'

WHILE (@GameDate <= @EndDate)
	BEGIN
		IF NOT EXISTS (SELECT * FROM dbo.Dates WHERE gamedate = @GameDate)
			BEGIN
				INSERT INTO dbo.Dates (gamedate)
				VALUES (@GameDate)
			END

		SELECT @GameDate = DATEADD(dd,1,@GameDate)
	END

END


