USE [HM_skitserver]
GO

/****** Object:  StoredProcedure [dbo].[uspPersonalInformation]    Script Date: 2017-01-13 12:47:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/*
===============================================================================
	Procedure Name..........: uspChangePersonalInformation
	Parameters..............: UserID
	Return Value............:
	Database................: HM_skitserver
	Server..................: 10.17.6.144
	Date....................: 2017-01-13
	By......................: Beatrice Vilhelmsson
	Used On.................:
	Components..............:
	===========================================================================
	Description: Fetches information for User 4 and up
	Kontrollerar: 
	===========================================================================
*/

ALTER PROCEDURE [dbo].[uspChangePersonalInformation] @UserId int, @FirstName nvarchar(100), @Lastname nvarchar(100), @PhoneNumber bigint,
@County nvarchar(100), @Street nvarchar(100), @ZIP int
AS
DECLARE @SSN bigint , @AddressID int

SELECT @SSN = SSN FROM [User]
WHERE UserID = @UserId

SELECT @AddressID = AddressID FROM AddressPerson 
WHERE PersonID = @SSN

UPDATE [Person] 
SET FirstName = @FirstName, LastName = @Lastname, PhoneNumber = @PhoneNumber
WHERE SSN = @SSN

UPDATE [Address]
SET County = @County , Street = @Street, ZIP = @ZIP
WHERE AddressID = @AddressID
GO
begin transaction

EXEC uspChangePersonalInformation 7,Diafffna,Leer,0743035222,Tokarp,Vägengatan66,45678

commit transaction
rollback transaction


SELECT TOP 1000 [AddressID]
      ,[Street]
      ,[ZIP]
      ,[County]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[UpdatedDate]
      ,[UpdatedBy]
  FROM [HM_skitserver].[dbo].[Address]

SELECT TOP 1000 [SSN]
      ,[FirstName]
      ,[LastName]
      ,[PhoneNumber]
      ,[Email]
      ,[AddressID]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[UpdatedDate]
      ,[UpdatedBy]
  FROM [HM_skitserver].[dbo].[Person]