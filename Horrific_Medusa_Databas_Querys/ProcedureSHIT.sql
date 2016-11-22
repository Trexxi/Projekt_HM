
USE Horrific_Medusa_Database
GO

CREATE Procedure uspLogin @UserName nvarchar(max), @Password nvarchar(max)
AS
BEGIN
	SELECT top 100 U.UserID
	FROM Horrific_Medusa_Database.dbo.[User] AS U
	WHERE U.UserName = @UserName And U.[Password] = @Password
END
GO

CREATE Procedure uspGallery @GalleryID int
AS
BEGIN
	SELECT top 100 GA.GalleryID
			, GA.PictureID
			, G.GalleryName
	FROM Horrific_Medusa_Database.dbo.GalleryAssembly AS GA
	JOIN Horrific_Medusa_Database.dbo.Gallery G ON GA.GalleryID = G.GalleryID
	WHERE GA.GalleryID = @GalleryID
END 
GO

CREATE Procedure uspReservation @UserID int, @ArtistID int, 
	@ReservationTypeID int, @StartDate datetime, @EndTime datetime
AS
BEGIN
	SELECT top 100 RE.ReservationID
	FROM Horrific_Medusa_Database.dbo.Reservation AS RE
	WHERE RE.UserID = @UserID And RE.ArtistID = @ArtistID And 
		RE.ReservationTypeID = @ReservationTypeID And RE.StartDate = @StartDate 
		And RE.EndTime = @EndTime
END
GO

CREATE Procedure uspConfirmation @ReservationID int
AS
BEGIN
	SELECT top 100 C.ConfirmationID
			, R.StartDate
			, R.EndTime
	FROM Horrific_Medusa_Database.dbo.Confirmation AS C
	JOIN Horrific_Medusa_Database.dbo.Reservation R ON C.ReservationID = R.ReservationID
	WHERE C.ReservationID = @ReservationID
END
GO

CREATE Procedure uspReminder @ReservationID int
AS
BEGIN
	SELECT top 100 REM.RiminderID
			, RE.StartDate
			, RE.EndTime
	FROM Horrific_Medusa_Database.dbo.Reminder AS REM
	JOIN Horrific_Medusa_Database.dbo.Reservation RE ON REM.ResverationID = RE.ReservationID
	WHERE ReservationID = @ReservationID
END
GO