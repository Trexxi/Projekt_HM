/*USE master;
GO
CREATE DATABASE Horrific_Medusa_Database;*/

USE Horrific_Medusa_Database;
GO

CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[SSN] [bigint] NOT NULL,
	[SchemeID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL, 

PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[TattooArtist](
	[ArtistID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[GalleryID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[SchemeID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL, 
PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[Gallery](
	[GalleryID] [int] NOT NULL,
	[GalleryName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GalleryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[GalleryAssembly](
	[GalleryID] [int] NOT NULL,
	[PictureID] [int]  NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Pictures](
	[PictureID] [int] NOT NULL,
	[Picture] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PictureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[Reservation](
	[ReservationID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ArtistID] [int] NOT NULL,
	[ReservationTypeID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK__Reservat__B7EE5F04124B815B] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[ReservationScheme](
	[ReservationID] [int] NOT NULL,
	[SchemeID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Scheme](
	[SchemeID] [int] NOT NULL,
	[AvailableTime] [bit] NULL,
	[InformationBox] [nvarchar](max) NULL,
	[ArtistID] [int] NOT NULL,
	[SchemeStartDate] [datetime] NOT NULL,
	[SchemeEndDate] [datetime] NOT NULL,
	[ReservationID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SchemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[ReservationType](
	[ReservationTypeID] [int] NOT NULL,
	[ReservationName] [nvarchar](max) NULL,
	[ReservationTypeTime] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [int] NULL,
	[AddressID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Confirmation](
	[ConfirmationID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ArtistID] [int] NOT NULL,
	[ReservationID] [int] NOT NULL,
	[ReservationTypeID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ConfirmationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[ConfirmationAssembly](
	[ConfirmationID] [int] NOT NULL,
	[ConfirmationTypeID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[ConfirmationType](
	[ConfirmationTypeID] [int] NOT NULL,
	[ConfirmationName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ConfirmationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[Reminder](
	[RiminderID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[ResverationID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RiminderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[ReminderAssembly](
	[ReminderID] [int] NULL,
	[ReminderTypID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[ReminderType](
	[ReminderTypeID] [int] NOT NULL,
	[ReminderName] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReminderTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[Person](
	[SSN] [bigint] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PhoneNumber] [bigint] NULL,
	[Email] [nvarchar](max) NULL,
	[AddressID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[AddressPerson](
	[AddressID] [int] NOT NULL,
	[PersonID] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Address](
	[AddressID] [int] NOT NULL,
	[Street] [nvarchar](max) NULL,
	[ZIP] [int] NOT NULL,
	[County] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL DEFAULT(getdate()),
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Person] FOREIGN KEY([SSN])
REFERENCES [dbo].[Person] ([SSN])
GO

ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Person]
GO

ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Scheme] FOREIGN KEY([SchemeID])
REFERENCES [dbo].[Scheme] ([SchemeID])
GO

ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Scheme]
GO

ALTER TABLE [dbo].[TattooArtist]  WITH CHECK ADD  CONSTRAINT [FK_TattooArtist_Gallery] FOREIGN KEY([GalleryID])
REFERENCES [dbo].[Gallery] ([GalleryID])
GO

ALTER TABLE [dbo].[TattooArtist] CHECK CONSTRAINT [FK_TattooArtist_Gallery]
GO

ALTER TABLE [dbo].[TattooArtist]  WITH CHECK ADD  CONSTRAINT [FK_TattooArtist_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[TattooArtist] CHECK CONSTRAINT [FK_TattooArtist_User]
GO

ALTER TABLE [dbo].[GalleryAssembly]  WITH CHECK ADD  CONSTRAINT [FK_GalleryAssembly_Gallery] FOREIGN KEY([GalleryID])
REFERENCES [dbo].[Gallery] ([GalleryID])
GO

ALTER TABLE [dbo].[GalleryAssembly] CHECK CONSTRAINT [FK_GalleryAssembly_Gallery]
GO

ALTER TABLE [dbo].[GalleryAssembly]  WITH CHECK ADD  CONSTRAINT [FK_GalleryAssembly_Pictures] FOREIGN KEY([PictureID])
REFERENCES [dbo].[Pictures] ([PictureID])
GO

ALTER TABLE [dbo].[GalleryAssembly] CHECK CONSTRAINT [FK_GalleryAssembly_Pictures]
GO

ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_ReservationType] FOREIGN KEY([ReservationTypeID])
REFERENCES [dbo].[ReservationType] ([ReservationTypeID])
GO

ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_ReservationType]
GO

ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_TattooArtist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[TattooArtist] ([ArtistID])
GO

ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_TattooArtist]
GO

ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_User]
GO

ALTER TABLE [dbo].[ReservationScheme]  WITH CHECK ADD  CONSTRAINT [FK_ReservationScheme_Reservation] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservation] ([ReservationID])
GO

ALTER TABLE [dbo].[ReservationScheme] CHECK CONSTRAINT [FK_ReservationScheme_Reservation]
GO

ALTER TABLE [dbo].[ReservationScheme]  WITH CHECK ADD  CONSTRAINT [FK_ReservationScheme_Scheme] FOREIGN KEY([SchemeID])
REFERENCES [dbo].[Scheme] ([SchemeID])
GO

ALTER TABLE [dbo].[ReservationScheme] CHECK CONSTRAINT [FK_ReservationScheme_Scheme]
GO

ALTER TABLE [dbo].[Scheme]  WITH CHECK ADD  CONSTRAINT [FK_Scheme_Reservation] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservation] ([ReservationID])
GO

ALTER TABLE [dbo].[Scheme] CHECK CONSTRAINT [FK_Scheme_Reservation]
GO

ALTER TABLE [dbo].[Scheme]  WITH CHECK ADD  CONSTRAINT [FK_Scheme_TattooArtist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[TattooArtist] ([ArtistID])
GO

ALTER TABLE [dbo].[Scheme] CHECK CONSTRAINT [FK_Scheme_TattooArtist]
GO

ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO

ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Address]
GO

ALTER TABLE [dbo].[Confirmation]  WITH CHECK ADD  CONSTRAINT [FK_Confirmation_Reservation] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservation] ([ReservationID])
GO

ALTER TABLE [dbo].[Confirmation] CHECK CONSTRAINT [FK_Confirmation_Reservation]
GO

ALTER TABLE [dbo].[Confirmation]  WITH CHECK ADD  CONSTRAINT [FK_Confirmation_ReservationType] FOREIGN KEY([ReservationTypeID])
REFERENCES [dbo].[ReservationType] ([ReservationTypeID])
GO

ALTER TABLE [dbo].[Confirmation] CHECK CONSTRAINT [FK_Confirmation_ReservationType]
GO

ALTER TABLE [dbo].[Confirmation]  WITH CHECK ADD  CONSTRAINT [FK_Confirmation_TattooArtist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[TattooArtist] ([ArtistID])
GO

ALTER TABLE [dbo].[Confirmation] CHECK CONSTRAINT [FK_Confirmation_TattooArtist]
GO

ALTER TABLE [dbo].[Confirmation]  WITH CHECK ADD  CONSTRAINT [FK_Confirmation_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[Confirmation] CHECK CONSTRAINT [FK_Confirmation_User]
GO

ALTER TABLE [dbo].[ConfirmationAssembly]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmationAssembly_Confirmation] FOREIGN KEY([ConfirmationID])
REFERENCES [dbo].[Confirmation] ([ConfirmationID])
GO

ALTER TABLE [dbo].[ConfirmationAssembly] CHECK CONSTRAINT [FK_ConfirmationAssembly_Confirmation]
GO

ALTER TABLE [dbo].[ConfirmationAssembly]  WITH CHECK ADD  CONSTRAINT [FK_ConfirmationAssembly_ConfirmationType] FOREIGN KEY([ConfirmationTypeID])
REFERENCES [dbo].[ConfirmationType] ([ConfirmationTypeID])
GO

ALTER TABLE [dbo].[ConfirmationAssembly] CHECK CONSTRAINT [FK_ConfirmationAssembly_ConfirmationType]
GO

ALTER TABLE [dbo].[Reminder]  WITH CHECK ADD  CONSTRAINT [FK_Reminder_Reservation] FOREIGN KEY([ResverationID])
REFERENCES [dbo].[Reservation] ([ReservationID])
GO

ALTER TABLE [dbo].[Reminder] CHECK CONSTRAINT [FK_Reminder_Reservation]
GO

ALTER TABLE [dbo].[Reminder]  WITH CHECK ADD  CONSTRAINT [FK_Reminder_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[Reminder] CHECK CONSTRAINT [FK_Reminder_User]
GO

ALTER TABLE [dbo].[ReminderAssembly]  WITH CHECK ADD  CONSTRAINT [FK_ReminderAssembly_Reminder] FOREIGN KEY([ReminderID])
REFERENCES [dbo].[Reminder] ([RiminderID])
GO

ALTER TABLE [dbo].[ReminderAssembly] CHECK CONSTRAINT [FK_ReminderAssembly_Reminder]
GO

ALTER TABLE [dbo].[ReminderAssembly]  WITH CHECK ADD  CONSTRAINT [FK_ReminderAssembly_ReminderType] FOREIGN KEY([ReminderTypID])
REFERENCES [dbo].[ReminderType] ([ReminderTypeID])
GO

ALTER TABLE [dbo].[ReminderAssembly] CHECK CONSTRAINT [FK_ReminderAssembly_ReminderType]
GO

ALTER TABLE [dbo].[AddressPerson]  WITH CHECK ADD  CONSTRAINT [FK_AddressPerson_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO

ALTER TABLE [dbo].[AddressPerson] CHECK CONSTRAINT [FK_AddressPerson_Address]
GO

ALTER TABLE [dbo].[AddressPerson]  WITH CHECK ADD  CONSTRAINT [FK_AddressPerson_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([SSN])
GO

ALTER TABLE [dbo].[AddressPerson] CHECK CONSTRAINT [FK_AddressPerson_Person]
GO




























