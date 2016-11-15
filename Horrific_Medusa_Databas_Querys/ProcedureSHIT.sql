
USE Horrific_Medusa_Database
GO

CREATE Procedure uspLogin @UserName nvarchar(max), @Password nvarchar(max)
AS
BEGIN
	SELECT top 100 []