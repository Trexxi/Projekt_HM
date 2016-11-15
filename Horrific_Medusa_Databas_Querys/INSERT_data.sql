use Horrific_Medusa_Database
GO

INSERT INTO [User] (UserID, UserName, [Password], SSN, SchemeID) VALUES (1, 'AndreasArtist', 'password', 19890909, 1)

INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19890909, 'Andreas', 'Andreasson', 46705678912, 'andreas@gmail.com')
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19760606, 'Jörgen', 'Jörgensson', 46706789123, 'jorgen@gmail.com') 
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email) VALUES (19770909, 'Malin', 'Malinsson', 46707891234, 'malin@gmail.com')
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email, AddressID) VALUES (19800102, 'Anna', 'Annasson', 46701234567, 'anna@gmail.com', 1)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email, AddressID) VALUES (19850505, 'Bert', 'Bertsson', 46702345678, 'bert@gmail.com', 2)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email, AddressID) VALUES (19901010, 'Carl', 'Carlsson', 46703456789, 'carl@gmail.com', 3)
INSERT INTO Person (SSN, FirstName, LastName, PhoneNumber, Email, AddressID) VALUES (19930606, 'Diana', 'Dianasson', 46704567891, 'diana@gmail.com', 4)

INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (1, 'Gata 33', 12345, 'Boda')
INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (2, 'Vägen 44', 23456, 'Hulta')
INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (3, 'Gatavägen 55', 34567, 'Tulla')
INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (4, 'Vägengatan 66', 45678, 'Torpa')
INSERT INTO [Address] (AddressID, Street, ZIP, County) VALUES (5, 'Antilopvägen 5', 67821, 'Bjarreryd')

