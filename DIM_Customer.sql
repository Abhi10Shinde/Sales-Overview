SELECT c.customerkey as CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.firstname as [FirstName],
      --,[MiddleName]
      c.lastname as [LastName],
	  c.firstname + ' ' + lastname as [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
CASE  c.gender when 'M' then 'Male' when 'F' then 'Female' end as [Gender],
/*      ,[EmailAddress]
      ,[YearlyIncome]
      ,[TotalChildren]
      ,[NumberChildrenAtHome]
      ,[EnglishEducation]
      ,[SpanishEducation]
      ,[FrenchEducation]
      ,[EnglishOccupation]
      ,[SpanishOccupation]
      ,[FrenchOccupation]
      ,[HouseOwnerFlag]
      ,[NumberCarsOwned]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Phone]*/
     c.datefirstpurchase as [DateFirstPurchase],
      --,[CommuteDistance]
	  g.City as [Customer City]
  FROM 
	dbo.DimCustomer as c
	LEFT JOIN dbo.DimGeography as g on g.GeographyKey = c.geographykey
ORDER BY 
	CustomerKey asc