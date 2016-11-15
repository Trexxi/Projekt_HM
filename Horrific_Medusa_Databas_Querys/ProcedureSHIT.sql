
USE Horrific_Medusa_Database
GO

CREATE Procedure uspLogin @UserName nvarchar(max), @Password nvarchar(max)
AS
BEGIN
	SELECT top 100 [UserID]
	FROM Horrific_Medusa_Database.dbo.[User]
	WHERE UserName = @UserName, [Password] = @Password
END
GO

CREATE Procedure uspGallery @GalleryID int
AS
BEGIN
	SELECT top 100 [GalleryID]
			, [GalleryName]
			, [PictureID]
	FROM Horrific_Medusa_Database.dbo.[GalleryAssembly]
	WHERE GalleryID = @GalleryID
END 
GO

CREATE Procedure uspReservation @UserID int, @ArtistID int, @ReservationTypeID int, @StartDate datetime, @EndTime datetime
AS
BEGIN
	SELECT top 100 [ReservationID]
	FROM Horrific_Medusa_Database.dbo.[Reservation]
	WHERE UserID = @UserID, ArtistID = @ArtistID, ReservationTypeID = @ReservationTypeID, StartDate = @StartDate, EndTime = @EndTime
END
GO

-- CREATE Procedure uspRegistration @UserName nvarchar(max), @Password nvarchar(max), @FirstName 

CREATE Procedure uspConfirmation @ReservationID int
AS
BEGIN
	SELECT top 100 [ConfirmationID]
			, [StartDate]
			, [EndTime]
	FROM Horrific_Medusa_Database.dbo.[Reservation
	WHERE 