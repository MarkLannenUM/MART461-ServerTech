/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (10) [PlayerID]
      ,[FirstName]
      ,[LastName]
      ,[Address1]
      ,[Address2]
      ,[City]
      ,[StateID]
      ,[Zip]
      ,[Country]
      ,[Phone]
      ,[Email]
      ,[UserName]
      ,[Password]
      ,[GamerTag]
      ,[GamesPlayed]
      ,[SubscribeToCorrespondence]
  FROM [Esports].[dbo].[Players]