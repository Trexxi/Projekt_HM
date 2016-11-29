use Horrific_Medusa_Database
GO
SELECT [SchemeID]
      ,[AvailableTime]
      ,[InformationBox]
      ,[ArtistID]
      ,[SchemeStartDate]
      ,[SchemeEndDate]
      ,[ReservationID]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[UpdatedDate]
      ,[UpdatedBy]
	  into dbo.Scheme
  FROM[Kollpas].dbo.Schemesak
GO

INSERT INTO Confirmation(ReservationID) VALUES (1)
INSERT INTO Confirmation(ReservationID) VALUES (3)
INSERT INTO Confirmation(ReservationID) VALUES (10)
INSERT INTO Confirmation(ReservationID) VALUES (2)

INSERT INTO ConfirmationAssembly(ConfirmationID, ConfirmationTypeID) VALUES (1, 1)
INSERT INTO ConfirmationAssembly(ConfirmationID, ConfirmationTypeID) VALUES (1, 2)
INSERT INTO ConfirmationAssembly(ConfirmationID, ConfirmationTypeID) VALUES (2, 1)
INSERT INTO ConfirmationAssembly(ConfirmationID, ConfirmationTypeID) VALUES (3, 2)
INSERT INTO ConfirmationAssembly(ConfirmationID, ConfirmationTypeID) VALUES (4, 1)
INSERT INTO ConfirmationAssembly(ConfirmationID, ConfirmationTypeID) VALUES (4, 2)

INSERT INTO Reminder(ResverationID) VALUES (1)
INSERT INTO Reminder(ResverationID) VALUES (3)
INSERT INTO Reminder(ResverationID) VALUES (10)
INSERT INTO Reminder(ResverationID) VALUES (2)

INSERT INTO ReminderAssembly(ReminderID, ReminderTypID) VALUES (1, 1)
INSERT INTO ReminderAssembly(ReminderID, ReminderTypID) VALUES (1, 2)
INSERT INTO ReminderAssembly(ReminderID, ReminderTypID) VALUES (2, 1)
INSERT INTO ReminderAssembly(ReminderID, ReminderTypID) VALUES (3, 2)
INSERT INTO ReminderAssembly(ReminderID, ReminderTypID) VALUES (4, 1)
INSERT INTO ReminderAssembly(ReminderID, ReminderTypID) VALUES (4, 2)








