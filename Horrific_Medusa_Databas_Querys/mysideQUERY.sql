/*
===============================================================================
	Procedure Name..........: uspMySide
	Parameters..............: UserID
	Return Value............:
	Database................: HM_skitserver
	Server..................: 10.17.6.144
	Date....................: 2016-12-12
	By......................: Beatrice Vilhelmsson
	Used On.................:
	Components..............:
	Change Date, By.........:
	Change..................: 
	===========================================================================
	Description: Fetches information for User 4 and up
	Kontrollerar: 
	===========================================================================
*/

ALTER PROCEDURE uspMySide @UserId int 
AS
BEGIN
SELECT u.UserName,
p.FirstName AS Förnamn,
p.LastName AS Efternamn,
p.PhoneNumber AS Telefonummer,
a.County AS Ort,
a.Street AS Gata,
a.ZIP AS Postkod,
rt.ReservationName AS Mö,
sc.SchemeStartDate AS Börjar,
sc.SchemeEndDate AS Slutar,
p2.FirstName AS Tattuerare
FROM [User] AS u
JOIN Person p ON (u.SSN = p.SSN)
JOIN AddressPerson ap ON (p.SSN = ap.PersonID)
JOIN [Address] a ON (ap.AddressID = a.AddressID)
JOIN Reservation rv ON (u.UserID = rv.UserID)
JOIN Scheme sc ON (rv.ReservationID = sc.ReservationID)
JOIN ReservationType rt ON(rv.ReservationTypeID = rt.ReservationTypeID)
JOIN TattooArtist ta ON(sc.ArtistID = ta.ArtistID)
JOIN [User] u2 ON(ta.UserID = u2.UserID)
JOIN Person p2 ON (u2.SSN = p2.SSN)
WHERE @UserId = u.UserID
END
GO

EXEC uspMySide @UserId = 6