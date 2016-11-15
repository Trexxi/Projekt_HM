use Horrific_Medusa_Database
GO

INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19890909, 'Andreas', 'Andreasson', 46705678912, 'andreas@gmail.com')
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19760606, 'J�rgen', 'J�rgensson', 46706789123, 'jorgen@gmail.com') 
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19770909, 'Malin', 'Malinsson', 46707891234, 'malin@gmail.com')
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email, AddressID) VALUES (19800102, 'Anna', 'Annasson', 46701234567, 'anna@gmail.com', 1)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email, AddressID) VALUES (19850505, 'Bert', 'Bertsson', 46702345678, 'bert@gmail.com', 2)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email, AddressID) VALUES (19901010, 'Carl', 'Carlsson', 46703456789, 'carl@gmail.com', 3)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email, AddressID) VALUES (19930606, 'Diana', 'Dianasson', 46704567891, 'diana@gmail.com', 4)

INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (1, 'Gata 33', 12345, 'Boda')
INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (2, 'V�gen 44', 23456, 'Hulta')
INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (3, 'Gatav�gen 55', 34567, 'Tulla')
INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (4, 'V�gengatan 66', 45678, 'Torpa')
INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (5, 'Antilopv�gen 5', 67821, 'Bjarreryd')

INSERT INTO ReservationType (ReservationTypeID, ReservationName, ReservationTypeTime) VALUES (1, 'M�testid', 30)
INSERT INTO ReservationType (ReservationTypeID, ReservationName, ReservationTypeTime) VALUES (2, 'Tattueringstid', 60)

INSERT INTO ReminderType (ReminderTypeID, ReminderName) VALUES (1, 'Email')
INSERT INTO ReminderType (ReminderTypeID, ReminderName) VALUES (2, 'Message')

INSERT INTO Contact (PhoneNumber, AddressID) VALUES (46708912345, 5)

INSERT INTO ConfirmationType (ConfirmationTypeID, ConfirmationName) VALUES (1, 'Email')
INSERT INTO ConfirmationType (ConfirmationTypeID, ConfirmationName) VALUES (2, 'Message')


INSERT INTO [User] (UserID, UserName, [Password], SSN, SchemeID) VALUES (1, 'AndreasArtist', 'password', 19890909, 1)

INSERT INTO TattooArtist (ArtistID, UserID, GalleryID, SchemeID) VALUES (1, 1, 1, 1)


