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
	Change Date, By.........: -
	Change..................: -
	===========================================================================
	Description: Fetches the Scheme
	Kontrollerar:
	===========================================================================
*/

CREATE PROCEDURE uspScheme @SchemeID int, @ArtistID int, @InformationBox nvarchar(MAX), @ReservationID int, @SchemeStartDate datetime , @SchemeEndDate datetime
AS
BEGIN
	SELECT TOP 100 s.SchemeID,
				s.ArtistID,
				p.firstName,
				s.InformationBox,
				s.ReservationID,
				s.SchemeStartDate,
				s.SchemeEndDate,
	FROM dbo.Scheme AS s
	JOIN dbo.TattooArtist ta ON s.ArtistID = ta.ArtistID
	JOIN dbo.[User] u ON ta.UserID on u.UserID
	JOIN dbo Person p on u.SS on p.SSN

	END

	GO
	