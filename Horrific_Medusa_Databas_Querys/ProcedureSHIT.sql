
USE Horrific_Medusa_Database
GO

CREATE Procedure uspLogin @UserName nvarchar(max), @Password nvarchar(max)
AS
BEGIN
	SELECT top 100 [UserID]
	FROM Horrific_Medusa_Database.dbo.[User]
	WHERE UserName = @UserName And [Password] = @Password
END
GO

CREATE Procedure uspGallery @GalleryID int
AS
BEGIN
	SELECT top 100 [GalleryID]
			, [PictureID]
	FROM Horrific_Medusa_Database.dbo.[GalleryAssembly]
	WHERE GalleryID = @GalleryID
	SELECT top 100 [GalleryName]
	FROM Horrific_Medusa_Database.dbo.[Gallery]


END 
GO

CREATE Procedure uspReservation @UserID int, @ArtistID int, @ReservationTypeID int, @StartDate datetime, @EndTime datetime
AS
BEGIN
	SELECT top 100 [ReservationID]
	FROM Horrific_Medusa_Database.dbo.[Reservation]
	WHERE UserID = @UserID And ArtistID = @ArtistID And ReservationTypeID = @ReservationTypeID And StartDate = @StartDate And EndTime = @EndTime
END
GO

CREATE Procedure uspConfirmation @ReservationID int
AS
BEGIN
	SELECT top 100 [ConfirmationID]
	FROM Horrific_Medusa_Database.dbo.[Confirmation]
	SELECT top 100 [StartDate]
			, [EndTime]
	FROM Horrific_Medusa_Database.dbo.[Reservation]
	WHERE ReservationID = @ReservationID
END
GO

CREATE Procedure uspReminder @ReservationID int
AS
BEGIN
	SELECT top 100 [RiminderID]
	FROM Horrific_Medusa_Database.dbo.[Reminder]
	SELECT top 100 [StartDate]
			, [EndTime]
	FROM Horrific_Medusa_Database.dbo.[Reservation]
	WHERE ReservationID = @ReservationID
END
GO