/****** Script for Select Customers  ******/
SELECT 
	   c.[CustomerKey],
     -- ,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.[FirstName] AS First_Name,
      --,[MiddleName]
      c.[LastName] AS Last_Name,
	  c.FirstName + ' ' + c.LastName AS Full_Name,
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[EnglishOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] AS Date_First_Purchase, 
      --,[CommuteDistance]
	  g.City AS City -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN DimGeography AS g
		ON c.GeographyKey = g.GeographyKey
ORDER BY CustomerAlternateKey ASC;