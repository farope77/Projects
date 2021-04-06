/****** Script for Select Products  ******/
SELECT 
  p.[ProductKey] AS Product_Key, 
  p.[ProductAlternateKey] AS Product_Code, 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode] 
  p.[EnglishProductName] AS Product_Name, 
  ps.[EnglishProductSubcategoryName] AS Product_Subcategory, -- Joined in from Sub Category Table
  pc.[EnglishProductCategoryName] AS Product_Category, -- Joined in from Category Table
  p.[StandardCost] AS Product_Cost, 
  --,[FinishedGoodsFlag]
  --,[Color]
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  --,[Size]
  --,[Weight]
  --,[DaysToManufacture]
  --,[ProductLine]
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  --,[ModelName]
  --,[EnglishDescription]
  --,[StartDate]
  --,[EndDate]
  --,p.[Status]
  ISNULL (p.Status, 'Outdated') AS Product_Status 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  LEFT JOIN [dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN [dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY 
  p.ProductKey ASC