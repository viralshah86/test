/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
 [SHP_NM]
      ,[SERVICE]
      ,[DESTZIP]
      ,[ORIGZIP]
      ,[TNT]
      ,[Zone]
  FROM [UPS ZONES].[dbo].[TNT11]
  WHERE SERVICE LIKE 'LASERSHIP%'