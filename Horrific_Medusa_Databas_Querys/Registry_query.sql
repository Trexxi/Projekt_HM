USE [HM_skitserver]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
===============================================================================
		Procedure Name..........: uspRegistry
	Parameters..............: UserID
	Return Value............:
	Database................: HM_skitserver
	Server..................: 10.17.6.144
	Date....................: 2016-12-20
	By......................: Beatrice Vilhelmsson
	Used On.................:
	Components..............:
	Change Date, By.........:
	Change..................: 
	===========================================================================
	Description: Registry a user
	Kontrollerar:
	===========================================================================
*/

ALTER PROCEDURE uspRegistry @UserName nvarchar(50), @FirstName nvarchar(100), @LastName nvarchar(100), @SSN bigint,
@PhoneNumber bigint, @Email nvarchar(50), @Street nvarchar(50), @ZIP int, @County nvarchar(50), @Password nvarchar(100)
AS
BEGIN
DECLARE @AddressId int

INSERT INTO dbo.Person
(FirstName,
LastName,
SSN,
PhoneNumber,
Email
)

VALUES
(@FirstName,
@LastName,
@SSN,
@PhoneNumber,
@Email)

INSERT INTO dbo.[User]
(UserName,
[Password],
SSN)
VALUES
(@UserName,
@Password,
@SSN)


INSERT INTO dbo.[Address]
(Street,
ZIP,
County)

VALUES
(@Street,
@ZIP,
@County)

SELECT @AddressId = @@IDENTITY

INSERT INTO dbo.AddressPerson
(AddressID,
PersonID)

VALUES
(@AddressId,
@SSN)

END


EXEC uspRegistry @UserName = "ErikUser", @FirstName ="Erik", @LastName="Eriksson", @SSN = 199706248765, @PhoneNumber ="0747823454", 
@Email = "erik@sneke.com", @Street ="Vallabo 5", @ZIP = 57712, @County="Köping", @Password = "password"

EXEC uspPersonalInformation @UserId = 12