/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT  TNT1.[SHP_NM]
      ,TNT1.[SERVICE]
      ,TNT1.[DESTZIP]
      ,TNT1.[ORIGZIP]
      ,TNT1.[TNT]
      ,TNT1.[Zone] AS Z1
	  ,min(TNT11.ZONE) AS Z2
	  into [UPS ZONES].[dbo].[TNTFINAL]
  FROM [UPS ZONES].[dbo].[TNT1]
  LEFT JOIN [UPS ZONES].[dbo].[TNT11]

  ON 
  TNT1.[SERVICE] = TNT11.[SERVICE]
  AND TNT1.[DESTZIP] = TNT11.[DESTZIP]
  AND TNT1.ORIGZIP=TNT11.ORIGZIP
  
  GROUP BY
  TNT1.[SHP_NM]
      ,TNT1.[SERVICE]
      ,TNT1.[DESTZIP]
      ,TNT1.[ORIGZIP]
      ,TNT1.[TNT]
	  ,TNT1.[Zone]
