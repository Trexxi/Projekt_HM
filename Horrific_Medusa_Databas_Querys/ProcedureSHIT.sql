
USE Horrific_Medusa_Database
GO

/* Signs the user in */
CREATE Procedure uspLogin @UserName nvarchar(100), @Password nvarchar(25)
AS
BEGIN
	SELECT top 100 U.UserID
	FROM dbo.[User] AS U
	WHERE U.UserName = @UserName And U.[Password] = @Password
END
GO

/* Gets/collects picture and name to gallery */
CREATE Procedure uspGallery @GalleryID int
AS
BEGIN
	SELECT top 100 GA.GalleryID
			, GA.PictureID
			, G.GalleryName
	FROM dbo.GalleryAssembly AS GA
	JOIN dbo.Gallery G ON GA.GalleryID = G.GalleryID
	WHERE GA.GalleryID = @GalleryID
END 
GO

/* Makes/creates a new resevation */
CREATE Procedure uspReservation @UserID int, @ArtistID int, 
	@ReservationTypeID int, @StartDate datetime, @EndTime datetime
AS
BEGIN
	INSERT INTO [dbo].[Reservation]
           ([UserID]
           ,[ArtistID]
           ,[ReservationTypeID]
           ,[StartDate]
           ,[EndTime]
           ,[CreatedBy])
     VALUES
           (@UserID
           ,@ArtistID
           ,@ReservationTypeID
           ,@StartDate
           ,@EndTime
           ,@UserID)
END
GO

/* Makes/collects a confirmation */
CREATE Procedure uspConfirmation @ReservationID int
AS
BEGIN
	SELECT top 100 C.ConfirmationID
			, R.StartDate
			, R.EndTime
	FROM dbo.Confirmation AS C
	JOIN dbo.Reservation R ON C.ReservationID = R.ReservationID
	WHERE C.ReservationID = @ReservationID
END
GO

/* Makes/collects a reminder */
CREATE Procedure uspReminder @ReservationID int
AS
BEGIN
	SELECT top 100 REM.RiminderID
			, RE.StartDate
			, RE.EndTime
	FROM dbo.Reminder AS REM
	JOIN dbo.Reservation RE ON REM.ResverationID = RE.ReservationID
	WHERE ReservationID = @ReservationID
END
GO