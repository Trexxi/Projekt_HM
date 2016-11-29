use Horrific_Medusa_Database
GO

INSERT INTO Gallery (GalleryName) VALUES ('Andreas Galleri')
INSERT INTO Gallery (GalleryName) VALUES ('J�rgens Galleri')
Insert INTO Gallery (GalleryName) VALUES ('Malins Galleri')

INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19890909, 'Andreas', 'Andreasson', 46705678912, 'andreas@gmail.com')
INSERT INTO [User] (UserName, [Password], SSN) VALUES ('AndreasArtist', 'password', 19890909)
INSERT INTO [TattooArtist] (ArtistID, UserID, GalleryID) VALUES (1, 1, 1)

INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19760606, 'J�rgen', 'J�rgensson', 46706789123, 'jorgen@gmail.com') 
INSERT INTO [User] (UserName, [Password], SSN) VALUES ('JorgenArtist', 'password',19760606) 
INSERT INTO [TattooArtist] (ArtistID, UserID, GalleryID) VALUES (2, 2, 2)

INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19770909, 'Malin', 'Malinsson', 46707891234, 'malin@gmail.com')
INSERT INTO [User] (UserName, [Password], SSN) VALUES ('MalinArtist', 'password',19770909)
INSERT INTO [TattooArtist] (ArtistID, UserID, GalleryID) VALUES (3, 3, 3)

INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19800102, 'Anna', 'Annasson', 46701234567, 'anna@gmail.com')
INSERT INTO [User] (UserName, [Password], SSN) VALUES ('AnnaUser', 'password', 19800102)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19850505, 'Bert', 'Bertsson', 46702345678, 'bert@gmail.com')
INSERT INTO [User] (UserName, [Password], SSN) VALUES ('BertUser', 'password', 19850505)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19901010, 'Carl', 'Carlsson', 46703456789, 'carl@gmail.com')
INSERT INTO [User] (UserName, [Password], SSN) VALUES ('CarlUser', 'password', 19901010)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19930606, 'Diana', 'Dianasson', 46704567891, 'diana@gmail.com')
INSERT INTO [User] (UserName, [Password], SSN) VALUES ('DianaUser', 'password', 19930606)

INSERT INTO [Address] (Street, ZIP, County) VALUES ('Gata 33', 12345, 'Boda')
INSERT INTO [Address] (Street, ZIP, County) VALUES ('V�gen 44', 23456, 'Hulta')
INSERT INTO [Address] (Street, ZIP, County) VALUES ('Gatav�gen 55', 34567, 'Tulla')
INSERT INTO [Address] (Street, ZIP, County) VALUES ('V�gengatan 66', 45678, 'Torpa')
INSERT INTO [Address] (Street, ZIP, County) VALUES ('Antilopv�gen 5', 67821, 'Bjarreryd')

INSERT INTO [AddressPerson] (AddressID, PersonID) VALUES (1, 19800102)
INSERT INTO [AddressPerson] (AddressID, PersonID) VALUES (2, 19850505)
INSERT INTO [AddressPerson] (AddressID, PersonID) VALUES (3, 19901010)
INSERT INTO [AddressPerson] (AddressID, PersonID) VALUES (4, 19930606)

INSERT INTO ReservationType (ReservationTypeID, ReservationName, ReservationTypeTime) VALUES (1, 'M�testid', 30)
INSERT INTO ReservationType (ReservationTypeID, ReservationName, ReservationTypeTime) VALUES (2, 'Tattueringstid', 60)
INSERT INTO ReservationType (ReservationTypeID, ReservationName, ReservationTypeTime) VALUES (3, 'Drop In', 30)

INSERT INTO ReminderType (ReminderTypeID, ReminderName) VALUES (1, 'Email')
INSERT INTO ReminderType (ReminderTypeID, ReminderName) VALUES (2, 'Message')

INSERT INTO Contact (PhoneNumber, AddressID) VALUES (46708912345, 5)

INSERT INTO ConfirmationType (ConfirmationTypeID, ConfirmationName) VALUES (1, 'Email')
INSERT INTO ConfirmationType (ConfirmationTypeID, ConfirmationName) VALUES (2, 'Message')

INSERT INTO Reservation(UserID, ArtistID, ReservationTypeID) VALUES (4, 1, 1)
INSERT INTO Reservation(UserID, ArtistID, ReservationTypeID) VALUES (5, 1, 2)
INSERT INTO Reservation(UserID, ArtistID, ReservationTypeID) VALUES (4, 1, 1)
INSERT INTO Reservation(UserID, ArtistID, ReservationTypeID) VALUES (4, 1, 1)
INSERT INTO Reservation(UserID, ArtistID, ReservationTypeID) VALUES (6, 1, 1)
INSERT INTO Reservation(UserID, ArtistID, ReservationTypeID) VALUES (5, 1, 1)
INSERT INTO Reservation(UserID, ArtistID, ReservationTypeID) VALUES (4, 1, 2)
INSERT INTO Reservation(ReservationTypeID) VALUES (3)
INSERT INTO Reservation (UserID, ArtistID, ReservationTypeID) VALUES (4, 2, 1)
INSERT INTO Reservation (UserID, ArtistID, ReservationTypeID) VALUES (5, 2, 1)
INSERT INTO Reservation (UserID, ArtistID, ReservationTypeID) VALUES (6, 3, 1)
INSERT INTO Reservation (UserID, ArtistID, ReservationTypeID) VALUES (7, 3, 1)
/** K�r filen INSERT_DATA 2 **/


-------------------------------------------------------------------------------------------------------------------------------




