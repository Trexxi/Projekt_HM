use Horrific_Medusa_Database
GO

INSERT INTO [dbo].[Scheme]
           ([AvailableTime]
           ,[InformationBox]
           ,[ArtistID]
           ,[SchemeStartDate]
           ,[SchemeEndDate]
           ,[ReservationID]
           ,[CreatedDate]
           ,[CreatedBy]
           ,[UpdatedDate]
           ,[UpdatedBy])
SELECT [AvailableTime]
      ,[InformationBox]
      ,[ArtistID]
      ,[SchemeStartDate]
      ,[SchemeEndDate]
      ,[ReservationID]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[UpdatedDate]
      ,[UpdatedBy]

  FROM[Kollpas].dbo.Schemesak








