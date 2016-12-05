
USE HM_skitserver
GO

/* Signs the user in */
ALTER Procedure uspLogin @UserName nvarchar(100), @Password nvarchar(25)
AS
BEGIN
	SELECT top 100 U.UserID
	FROM dbo.[User] AS U
	WHERE U.UserName = @UserName And U.[Password] = @Password
END
GO

/* Gets/collects picture and name to gallery */
ALTER Procedure uspGallery @GalleryID int
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
	@ReservationTypeID int, @SchemeStartDate datetime, @SchemeEndDate datetime
AS
BEGIN
	INSERT INTO [dbo].[Reservation]
           ([UserID]
           ,[ArtistID]
           ,[ReservationTypeID]
           ,[CreatedBy])
     VALUES
           (@UserID
           ,@ArtistID
           ,@ReservationTypeID
           ,@UserID)

	INSERT INTO [dbo].[Scheme]
			([SchemeStartDate]
           ,[SchemeEndDate])
	VALUES
			(@SchemeStartDate
			,@SchemeEndDate)

END
GO

/* Makes/collects a confirmation */
ALTER Procedure uspConfirmation @ReservationID int
AS
BEGIN
	SELECT top 100 C.ConfirmationID
			, S.SchemeStartDate
			, S.SchemeEndDate
	FROM dbo.Confirmation AS C
	JOIN dbo.Reservation R ON C.ReservationID = R.ReservationID
	JOIN dbo.Scheme S ON C.ReservationID = S.ReservationID
	WHERE C.ReservationID = @ReservationID
END
GO

/* Makes/collects a reminder */
ALTER Procedure uspReminder @ReservationID int
AS
BEGIN
	SELECT top 100 REM.RiminderID
			, S.SchemeStartDate
			, S.SchemeEndDate
	FROM dbo.Reminder AS REM
	JOIN dbo.Reservation RE ON REM.ResverationID = RE.ReservationID
	JOIN dbo.Scheme S ON REM.ResverationID = S.ReservationID
	WHERE REM.ResverationID = @ReservationID
END
GO