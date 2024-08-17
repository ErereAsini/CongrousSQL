--- Assignment 1.---

SELECT Name AS ProductName,
       ListPrice,
       ProductID
FROM SalesLT.Product
WHERE ListPrice < 1000

--- Assignment 2.---

SELECT Name AS ProductName,
       StandardCost
FROM SalesLT.Product
Where StandardCost <= 1600

--- Assignment 3.---

SELECT Name,
       ListPrice,
       (StandardCost * 20)/500 AS PremiumCost
FROM SalesLT.Product
WHERE ListPrice BETWEEN 30 AND 500 AND
      (StandardCost * 20)/500 <= 3000

--- Assignment 4.---

SELECT TOP 40
       Name,
       Color,
       Weight
FROM SalesLT.Product
WHERE Color IS NULL
ORDER BY Weight ASC

--- Assignment 5.---

SELECT ProductID,
       Name AS ProductName,
       ListPrice As Price,
       SellStartDate,
       SellEndDate
FROM SalesLT.Product
WHERE SellEndDate IS NULL
ORDER BY Price ASC
OFFSET 100 ROWS
FETCH NEXT 100 ROWS ONLY

--- Assignment 6.---

SELECT Name ProductModelName,
       ModifiedDate, 
       CatalogDescription
FROM SalesLT.ProductModel
WHERE ModifiedDate > '1998' AND
      CatalogDescription IS NOT NULL

--- Assignment 7.---

SELECT TOP 1
       ProductID,
       Name AS ProductName,
       Weight AS LightestWeight
FROM SalesLT.Product
WHERE Weight IS NOT NULL
ORDER BY Weight ASC

--- Assignment 8.---

SELECT Name AS ProductName,
       Color,
       SellEndDate
FROM SalesLT.Product
WHERE Color IN ('Black', 'Blue') AND 
      SellEndDate IS NOT NULL

--- Assignment 9.---

SELECT Top 20
       Name ProductName,
       ListPrice
FROM SalesLT.Product
WHERE ListPrice > 560 
ORDER BY ListPrice DESC

--- Assignment 10.---

SELECT Name AS ProductName,
       ProductID,
       SellStartDate,
       SellEndDate
FROM SalesLT.Product
WHERE YEAR(SellStartDate) = YEAR(SellEndDate) AND 
      SellEndDate IS NOT NULL
      
--- Assignment 11.---

SELECT SalesOrderID,
       UnitPrice,
       UnitPriceDiscount,
       (UnitPrice - UnitPriceDiscount) AS Discount
FROM SalesLT.SalesOrderDetail 
WHERE (UnitPrice - UnitPriceDiscount) = UnitPrice

--- Assignment 12.---

SELECT COUNT(DISTINCT 
       Size) AS NumberOfSizes                   
FROM SalesLT.Product