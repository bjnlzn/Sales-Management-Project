-- Cleansed DIM_CustomerTable --
SELECT 
  [CustomerKey] as CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName as [First Name], 
  --,[MiddleName]
  c.LastName as [Last Name], 
  c.FirstName + ' ' + c.LastName as [Full Name] 
  -- Combined First Name and Last Name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  CASE c.Gender when 'M' then 'Male' when 'F' then 'Female' END As Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.DateFirstPurchase, 
  --,[CommuteDistance]
  g.city as [Customer City] -- Joined in Customer City
FROM 
  dbo.DimCustomer as c 
  left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
Order by 
  customerkey asc --ordered list by CustomerKey
