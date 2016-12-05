
USE HM_skitserver
GO

/*
===============================================================================
	Procedure Name..........: uspLogin
	Parameters..............: UserName, Password
	Return Value............: UserID
	Database................: Horrific_Medusa_Database
	Server..................: DESKTOP-IKIRSNC\SQLEXPRESS
	Date....................: 2016-11-14
	By......................: Sofia Andersson
	Used On.................:
	Components..............:
	Change Date, By.........: 2016-11-15, Sofia Andersson
	Change Date, By.........: 2016-11-18, Sofia Andersson
	Change Date, By.........: 2016-11-21, Sofia Andersson
	Change Date, By.........: 2016-11-22, Sofia Andersson
	Change Date, By.........: 2016-11-23, Sofia Andersson
	Change Date, By.........: 2016-12-2, Sofia Andersson
	Change..................: Imported the procedure to the new server
		Database............: HM_skitserver
		Server..............: 10.17.6.144
	Change Date, By.........: 2016-12-5, Sofia Andersson
	Change..................: Added better comments
	===========================================================================
	Description: Takes UserName and Password, and sign in the person by 
				 returning the right UserID
	Kontrollerar:
	===========================================================================
*/
ALTER Procedure uspLogin @UserName nvarchar(100), @Password nvarchar(25)
AS
BEGIN
	SELECT top 100 U.UserID
	FROM dbo.[User] AS U
	WHERE U.UserName = @UserName And U.[Password] = @Password
END
GO

/*
===============================================================================
	Procedure Name..........: uspGallery
	Parameters..............: GalleryID
	Return Value............: GalleryID, PictureID, GalleryName
	Database................: Horrific_Medusa_Database
	Server..................: DESKTOP-IKIRSNC\SQLEXPRESS
	Date....................: 2016-11-14
	By......................: SofiaAndersson
	Used On.................:
	Components..............:
	Change Date, By.........: 2016-11-15, Sofia Andersson
	Change Date, By.........: 2016-11-18, Sofia Andersson
	Change Date, By.........: 2016-11-21, Sofia Andersson
	Change Date, By.........: 2016-11-22, Sofia Andersson
	Change Date, By.........: 2016-11-23, Sofia Andersson
	Change Date, By.........: 2016-12-2, Sofia Andersson
	Change..................: Imported the procedure to the new server
		Database............: HM_skitserver
		Server..............: 10.17.6.144
	Change Date, By.........: 2016-12-5, Sofia Andersson
	Change..................: Added better comments
	===========================================================================
	Description: Gets/collects picture and name to gallery, by reciveing the
				 the galleryID
	Kontrollerar:
	===========================================================================
*/
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

/*
===============================================================================
	Procedure Name..........: uspReservation
	Parameters..............: UserID, ArtistID, ReservationTypeID, 
							  SchemeStartDate, SchemeEndDate
	Return Value............:
	Database................: Horrific_Medusa_Database
	Server..................: DESKTOP-IKIRSNC\SQLEXPRESS
	Date....................: 2016-11-14
	By......................: Sofia Andersson
	Used On.................:
	Components..............:
	Change Date, By.........: 2016-11-15, Sofia Andersson
	Change Date, By.........: 2016-11-18, Sofia Andersson
	Change Date, By.........: 2016-11-21, Sofia Andersson
	Change Date, By.........: 2016-11-22, Sofia Andersson
	Change Date, By.........: 2016-11-23, Sofia Andersson
	Change Date, By.........: 2016-12-2, Sofia Andersson
	Change..................: Imported the procedure to the new server
		Database............: HM_skitserver
		Server..............: 10.17.6.144
	Change Date, By.........: 2016-12-5, Sofia Andersson
	Change..................: Added better comments and fixed an other insert
	===========================================================================
	Description: Makes / creates a new reservation
	Kontrollerar:
	===========================================================================
*/
ALTER Procedure uspReservation @UserID int, @ArtistID int, 
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

/*
===============================================================================
	Procedure Name..........: uspConfirmation
	Parameters..............: ReservationID
	Return Value............: ConfirmationID, SchemeStartDate, SchemeEndDate
	Database................: Horrific_Medusa_Database
	Server..................: DESKTOP-IKIRSNC\SQLEXPRESS
	Date....................: 2016-11-14
	By......................: Sofia Andersson
	Used On.................:
	Components..............:
	Change Date, By.........: 2016-11-15, Sofia Andersson
	Change Date, By.........: 2016-11-18, Sofia Andersson
	Change Date, By.........: 2016-11-21, Sofia Andersson
	Change Date, By.........: 2016-11-22, Sofia Andersson
	Change Date, By.........: 2016-11-23, Sofia Andersson
	Change Date, By.........: 2016-12-2, Sofia Andersson
	Change..................: Imported the procedure to the new server
		Database............: HM_skitserver
		Server..............: 10.17.6.144
	Change Date, By.........: 2016-12-5, Sofia Andersson
	Change..................: Added better comments
	===========================================================================
	Description: Makes/ collects a confirmation
	Kontrollerar:
	===========================================================================
*/
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

/*
===============================================================================
	Procedure Name..........: uspReminder
	Parameters..............: ReservationID
	Return Value............: RiminderID, SchemeStartDate, SchemeEndDate
	Database................: Horrific_Medusa_Database
	Server..................: DESKTOP-IKIRSNC\SQLEXPRESS
	Date....................: 2016-11-14
	By......................: Sofia Andersson
	Used On.................:
	Components..............:
	Change Date, By.........: 2016-11-15, Sofia Andersson
	Change Date, By.........: 2016-11-18, Sofia Andersson
	Change Date, By.........: 2016-11-21, Sofia Andersson
	Change Date, By.........: 2016-11-22, Sofia Andersson
	Change Date, By.........: 2016-11-23, Sofia Andersson
	Change Date, By.........: 2016-12-2, Sofia Andersson
	Change..................: Imported the procedure to the new server
		Database............: HM_skitserver
		Server..............: 10.17.6.144
	Change Date, By.........: 2016-12-5, Sofia Andersson
	Change..................: Added better comments
	===========================================================================
	Description: Makes / collects a reminder
	Kontrollerar:
	===========================================================================
*/
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