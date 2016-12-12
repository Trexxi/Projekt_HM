/*
===============================================================================
	Procedure Name..........: uspScheme
	Parameters..............: SchemeID, ArtistID, InformationBox, ReservationID, 
							  SchemeStartDate, SchemeEndDate
	Return Value............:
	Database................: HM_skitserver
	Server..................: 10.17.6.144
	Date....................: 2016-12-07
	By......................: Beatrice Vilhelmsson
	Used On.................:
	Components..............:
	Change Date, By.........: 2016-12-12, Beatrice Vilhelmsson
	Change..................: Parameteters
	===========================================================================
	Description: Fetches the Scheme
	Kontrollerar: 
	===========================================================================
*/
ALTER PROCEDURE uspScheme @WeekNumber int, @Artist int
AS
BEGIN
	SELECT TOP 100 s.SchemeID,
				s.ArtistID,
				p.firstName AS ArtistName,
				s.InformationBox,
				s.ReservationID,
				s.SchemeStartDate,
				s.SchemeEndDate,
				DATEPART(ww, SchemeStartDate) AS WeekNumber,
				DATEPART(dd, SchemeStartDate) AS [Date]
	FROM dbo.Scheme AS s
	JOIN dbo.TattooArtist ta ON s.ArtistID = ta.ArtistID
	JOIN dbo.[User] u ON ta.UserID = u.UserID
	JOIN dbo.Person p on u.SSN = p.SSN
	where @WeekNumber = DATEPART(ww, SchemeStartDate) AND @Artist = s.ArtistID
	END

	GO
	
	EXEC uspScheme @WeekNumber = 47 , @Artist = 2