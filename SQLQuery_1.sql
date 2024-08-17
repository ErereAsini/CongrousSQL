-- SELECT *
-- FROM SalesLT.Product

-----------------------------

-- SELECT  Name,
--         ProductID, 
--         ProductNumber,
--         ProductCategoryID,
--         ModifiedDate,
--         Size, 
--         Weight,
--         Color,
--         ListPrice      
-- FROM SalesLT.Product

-- WHERE ProductID >= 680
-- GROUP BY ProductNumber


----Expressions

SELECT  Name,
        ID = ProductID, 
        ProductNumber,
        ProductCategoryID,
        ModifiedDate,
        Size,
        Weight,
        Color,
        ListPrice,
        SellStartDate,
        (ListPrice * 2) AS Simply_Multiply, 
        (StandardCost * ListPrice) AS Multiply,
        (StandardCost / ListPrice * 2) AS [Divide Multiply]   
FROM SalesLT.Product


-- SELECT *
-- FROM SalesLT.Product
-- ORDER BY ProductNumber
-- LIMIT 10; --SQL VERSION

SELECT TOP 20 *
FROM SalesLT.Product
ORDER BY ProductNumber;


---SQL CLASS 2---

Select ProductID, 
       Name As ProductName,
       Size As [Product Size], 
       ListPrice,
       (ListPrice * 2) As [MultiPrice], 
	   (StandardCost / 500 * 2) As [Multi Cost], 
	   SellStartDate,
       ProductWeight = Weight
From SalesLT.Product

---------------------------------------------------

Select Distinct Top 5
       Name,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Order by Price Desc

----------------------------------------------

Select Distinct
       Name,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Order by Price Desc
Offset 5 Rows
Fetch Next 5 Rows Only
       
---------------------------------

Select Distinct
       Name,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Order by Price Desc
Offset 5 Rows
Fetch First 5 Rows Only


---- SQL CLASS 3 ----


Select Name,
       SellEndDate,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Where Color IN ('Red', 'Black', 'White')
Where ListPrice BETWEEN 500 AND 1000
--Where ListPrice > (ListPrice - StandardCost)
--Where ListPrice > (ListPrice - StandardCost)
--Where (ListPrice - StandardCost) > 300
--Where Color = 'Red'
--Where Size = '58'
--Where Color IN ('Red', 'Black', 'White')
Order by Profit Asc


Select Name,
       SellEndDate,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
--Where ListPrice BETWEEN 500 AND 1000
Where Color = 'Black' OR ---one conditions must be true to return 
      Weight < 500 
--Where ListPrice > (ListPrice - StandardCost)
Order by Profit Asc


Select Name,
       SellEndDate,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
--Where ListPrice BETWEEN 500 AND 1000
Where Color = 'Black' AND --both conditions must be true to return
      Weight < 500 
--Where ListPrice > (ListPrice - StandardCost)
Order by Profit Asc


Select Name,
       SellEndDate,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
--Where ListPrice BETWEEN 500 AND 1000
Where Color = 'Black' OR --Any one conditions must be true to return
      Weight < 500 OR
      SellStartDate < '2001-07-01' 
--Where ListPrice > (ListPrice - StandardCost)
Order by Profit Asc


Select Name,
       SellEndDate,
       SellStartDate,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
--Where ListPrice BETWEEN 500 AND 1000
Where Color = 'Black' AND --Any one conditions must be true to return
      SellStartDate < '2001-07-01' 
--Where ListPrice > (ListPrice - StandardCost)
Order by Profit Asc

Select Name,
       SellEndDate,
       SellStartDate,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
WHERE Weight IS NOT NULL AND 
      Size IS NOT NULL
--Where NOT ListPrice BETWEEN 500 AND 1000
--Where NOT Color = 'Black' 


-- Class Work

Select Name,
       SellEndDate,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Where (ListPrice - StandardCost) >= 40 AND
      Size = 'M'

Select Name,
       SellEndDate,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Where Color = 'Red' OR
      Weight IS NULL    


Select Name,
       Color,
       Weight,
       Size,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Where Size != 'M' OR
      Size != 'L'

--Where ListPrice BETWEEN 500 AND 1000
--Where Color = 'Black' OR ---one conditions must be true to return 
      Weight < 500 
--Where ListPrice > (ListPrice - StandardCost)
--Where ListPrice > (ListPrice - StandardCost)
--Where ListPrice > (ListPrice - StandardCost)
 
--Order by Profit AsC


Select Size
From SalesLT.Product


--- Like Operator ---

Select Name
From SalesLT.Product
Where Name LIKE '%Logo%'  --% means no xter, multiple xters ex: AWC Logo Cap; _Logo means only one xter before logo


SELECT TOP 40
       Name,
       Color,
       Weight
FROM SalesLT.Product
WHERE Color IS NULL
ORDER BY Weight ASC

---------------------------------------------------

SELECT TOP 3 *
FROM SalesLT.Product
WHERE Weight IS NULL AND Size IS NULL
AND ModifiedDate BETWEEN ('2004-01-01') and ('2004-3-31') OR
    ModifiedDate BETWEEN ('2004-10-01') and ('2004-12-31')
AND Name like '%Helmet%'



SELECT *
FROM SalesLT.Product
WHERE Name LIKE '%Helmet%' AND
      (Weight IS NULL AND
      Size IS NULL) AND
      (ModifiedDate BETWEEN '2004-01-01' AND
      '2004-03-31') OR (ModifiedDate BETWEEN '2004-10-01' AND
      '2004-12-31')


SELECT *
FROM SalesLT.Product
WHERE Weight IS NULL AND
      Size IS NULL AND
      (ModifiedDate BETWEEN '2004-01-01' AND
      '2004-03-31' OR ModifiedDate BETWEEN '2004-10-01' AND
      '2004-12-31') AND
      Name LIKE '%Helmet%'

-----------------------------------------------------------------
SELECT *
FROM SalesLT.Product
WHERE Name LIKE '%Hel[_]met%' AND
      (Weight IS NULL AND
      Size IS NULL) AND
      (ModifiedDate BETWEEN '2004-01-01' AND
      '2004-03-31' OR ModifiedDate BETWEEN '2004-10-01' AND
      '2004-12-31')
      
--Query below produces same result as above

SELECT *
FROM 
    SalesLT.Product
WHERE 
    (Weight IS NULL OR Size IS NULL)  -- Weightless or size-free products
    AND (
        (DATEPART(year, ModifiedDate) = 2004 AND DATEPART(quarter, ModifiedDate) IN (1))  -- First quarter of 2004
        OR
        (DATEPART(year, ModifiedDate) = 2004 AND DATEPART(quarter, ModifiedDate) IN (4))  -- Last quarter of 2004
    )
    AND Name LIKE '%Helmet%'  -- Products containing the word 'Helmet'





--- CASE CLAUSE: used for data categorization
--- creates a new column in the output

-- You can only use a column existing in table to filter in 
-- the WHERE Clause. Use expressions for created column in slelect statement


SELECT Name,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit,
       Color,
       Size, CASE
       WHEN Size IS NOT NULL THEN 'SIZED PROCUCTS' --N.B: A sized product must have a size
       ELSE 'NON-SIZED PRODUCTS'
       END ProductCategory
FROM SalesLT.Product
WHERE Color = 'Black' AND
      (ListPrice - StandardCost) < 1000
ORDER BY Price DESC


Select Name,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit,
       Size, 
       CASE
            WHEN Size IS NOT NULL THEN 'SIZED PROCUCTS' --N.B: A sized product must have a size
            WHEN Size IS NULL THEN 'NON-SIZED PRODUCTS'
       END AS ProductCategory
From SalesLT.Product
Where Color = 'Black' AND
      (ListPrice - StandardCost) < 1000
Order by Price Desc


Select Name,
       Size,
       CASE
       WHEN SellEndDate IS NULL AND Color = 'Black' THEN 'On Sale'
       ELSE 'Not on Sale'
       END AS SizeCategory,
       Color,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Where CASE
       WHEN SellEndDate IS NULL AND Color = 'Black' THEN 'On Sale'
       ELSE 'Not on Sale'
       END = 'Not on Sale'

Where Color = 'Black' AND
      (ListPrice - StandardCost) < 1000
Order by Price Desc



Select Name,
       Size,
       Color,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit
From SalesLT.Product
Where  CASE
       WHEN SellEndDate IS NULL AND Color = 'Black' THEN 'On Sale'
       ELSE 'Not on Sale'
       END = 'Not on Sale'
Order By CASE
       WHEN SellEndDate IS NULL AND Color = 'Black' THEN 'On Sale'
       ELSE 'Not on Sale'
       END 


Where (ListPrice - StandardCost) < 7



Select Name,
       ListPrice As Price,
       (StandardCost * 20)/500 As PremiumCost,
       ProductPrice = ListPrice,
       Cost = StandardCost,
       (ListPrice - StandardCost) As Profit,
       Size, 
       CASE
            WHEN Size IS NOT NULL THEN 'SIZED PROCUCTS' --N.B: A sized product must have a size
            WHEN Size IS NULL THEN 'NON-SIZED PRODUCTS'
       END AS ProductCategory
From SalesLT.Product
Where Color = 'Black' AND
      (ListPrice - StandardCost) < 1000
Order by Price Desc


---- SQL WEEK 3 CLASS 2 ASSIGNMENT ---

SELECT Name,
       Size,
       ListPrice,
       ProductPrice = ListPrice,
       StandardCost,
       Color,
       (StandardCost * 20)/500 As PremiumCost,
       (ListPrice - StandardCost) As Profit,
       SellEndDate,
       CASE
            WHEN (ListPrice - StandardCost) < 500 THEN 'Common'
            WHEN (ListPrice - StandardCost) BETWEEN 501 AND 1000 THEN 'Gold'
            WHEN (ListPrice - StandardCost) BETWEEN 1001 AND 3000 AND SellEndDate IS NULL AND Color = 'Black' THEN 'Platinum'
            WHEN (ListPrice - StandardCost) > 3000 AND 
            SellEndDate IS NULL AND 
            (StandardCost * 20)/500 > (ListPrice - StandardCost) THEN 'Emerald'
       END AS ProductClass
FROM SalesLT.Product
WHERE CASE
            WHEN (ListPrice - StandardCost) BETWEEN 1001 AND 3000 AND SellEndDate IS NULL AND Color = 'Black' THEN 'Platinum'
       END = 'Platinum'





---------- SQL CLASS 4.1 ----------
--FUNCTIONS--


SELECT color, 
    Len(Color) AS ColorCount, 
    Name, 
    Trim(Name) AS Trimmed, 
    Lower(Name) AS LowerName,
    Upper(Trim(Name)) AS LowerTrimmed,
    Lower(Color) AS LowerColor,
    Len(Left(Name, 5)) AS Extracted
FROM SalesLT.Product
WHERE Len(Color) = 5

WHERE lower(Color) = 'black'


---Some Logical Functions --> ISNULL(), ISNUMERIC(), 
---COALESCE(), CAST() --> Convert the datatype of a column to another

SELECT color, 
       Len(Color) AS ColorCount, 
       Name, 
       Trim(Name) AS Trimmed,
       Size, 
       ISNULL(Size, 'Unknown')
FROM SalesLT.Product
WHERE ISNULL(Size, 'Unknown') = 'Unkno'


SELECT color, 
       Len(Color) AS ColorCount, 
       Name, 
       Trim(Name) AS Trimmed,
       Size, 
       ISNULL(Size, 'Unknown'),
       SellEndDate
FROM SalesLT.Product
WHERE SellEndDate IS NULL


SELECT color, 
       Len(Color) AS ColorCount, 
       Name, 
       Trim(Name) AS Trimmed,
       Size, 
       ISNULL(Size, 'Unknown'),
       ProductID,
       ISNULL(ProductID, 'Unknown'),
       CAST(Size AS varchar), -- Converts nvarchart datatype to integer/varchar
       CAST(ProductID AS nvarchar)
FROM SalesLT.Product
WHERE CAST(ProductID AS nvarchar) = '680'


---Date Functions DAY(), MONTH(), YEAR(), DateAdd(), 
----Datediff(), GetDate() --> to get current date and time,
--DateName() --> Requires 2 parameters

SELECT Name, SellStartDate, Year(SellStartDate) AS SellStartDay
FROM SalesLT.Product
WHERE Year(SellStartDate) = 1998

SELECT Name, SellStartDate, Month(SellStartDate) AS SellStartDay
FROM SalesLT.Product
WHERE Month(SellStartDate) = 7

SELECT Name, SellStartDate, Month(SellStartDate) AS SellStartMonth, GetDate() AS CurrentDate
FROM SalesLT.Product
WHERE Year(SellStartDate) = 1998

SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(mm, SellStartDate)
FROM SalesLT.Product
WHERE Year(SellStartDate) = 1998

SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(mm, SellStartDate) --Extracts the name of the month from SellStartDate
FROM SalesLT.Product
WHERE Year(SellStartDate) = 1998

SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(dw, SellStartDate)
FROM SalesLT.Product
WHERE DateName(dw, SellStartDate) = 'Sunday'


SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(dw, SellStartDate),
       DateAdd(dd, 2, SellStartDate) AS AddedDate --> add 2 days to sell start date
FROM SalesLT.Product
WHERE DateName(dw, SellStartDate) = 'Sunday'

SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(dw, SellStartDate),
       DateAdd(mm, 3, SellStartDate) AS AddedDate --> add 3 months to sell start date
FROM SalesLT.Product
WHERE DateName(dw, SellStartDate) = 'Sunday'

SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(dw, SellStartDate),
       DateAdd(qq, 3, SellStartDate) AS AddedDate --> add 3 quarters to sell start date
FROM SalesLT.Product
WHERE DateName(dw, SellStartDate) = 'Sunday'

--OR

SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(dw, SellStartDate),
       DateAdd(MM, 9, SellStartDate) AS AddedDate --> add 3 quarters to sell start date
FROM SalesLT.Product
WHERE DateName(dw, SellStartDate) = 'Sunday'


SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(dw, SellStartDate),
       DateAdd(MM, 9, SellStartDate) AS AddedDate, --> add 3 quarters to sell start date
       Datediff(mm, SellStartDate, SellEndDate) AS DIFF --> difference in sellstart/sellend dates ex: get age of a product
FROM SalesLT.Product
WHERE DateName(dw, SellStartDate) = 'Sunday'

SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(dw, SellStartDate),
       DateAdd(MM, 9, SellStartDate) AS AddedDate, --> add 3 quarters to sell start date
       Datediff(yy, SellStartDate, GetDate()) AS DIFF --> ex: get age of a product
FROM SalesLT.Product
WHERE Datediff(yy, SellStartDate, GetDate()) < 5
WHERE DateName(dw, SellStartDate) = 'Sunday'



--aggragate Functions SUM(), MIN(), MAX(), STDEV(), COUNT()--


SELECT *
FROM SalesLT.Product

SELECT SUM(ListPrice)
FROM SalesLT.Product

SELECT Name,
       Color,
       Size,
       SUM(ListPrice) AS Aggregate --> an aggregate function, and at least 1 dimension column must have a GROUP BY Clause     
FROM SalesLT.Product
GROUP BY Color, Name, Size


SELECT Name,
       Color,
       Size,
       SUM(ListPrice) AS Aggregate, --> an aggregate function, and at least 1 dimension column must have a GROUP BY Clause     
       DateName(mm, SellStartDate) AS SellStartMonth--> aggregate for product sell start month
FROM SalesLT.Product
GROUP BY Color, Name, Size, DateName(mm, SellStartDate)


SELECT MIN(ListPrice)
FROM SalesLT.Product

SELECT MAX(ListPrice)
FROM SalesLT.Product

SELECT COUNT(ListPrice)
FROM SalesLT.Product

SELECT COUNT(Size) ---> counts the non-null values
FROM SalesLT.Product

SELECT AVG(ListPrice) --> Mainly Used for Integer datatype columns
FROM SalesLT.Product


---HAVING CLAUSE ---

SELECT Name, 
       SellStartDate, 
       Month(SellStartDate) AS SellStartMonth, 
       GetDate() AS CurrentDate,
       DateName(dw, SellStartDate),
       DateAdd(MM, 9, SellStartDate) AS AddedDate, --> add 3 quarters to sell start date
       Datediff(yy, SellStartDate, GetDate()) AS DIFF --> ex: get age of a product FROM Sell Start to Current years
FROM SalesLT.Product
WHERE Datediff(yy, SellStartDate, GetDate()) = 26

--Only columns generated by aggregates can be used with HAVING Clause

--EX:

SELECT Name,
       Color,
       Size,
       SUM(ListPrice) AS Aggregate, --> an aggregate function, and at least 1 dimension column must have a GROUP BY Clause     
       DateName(mm, SellStartDate) AS SellStartMonth--> aggregate for product sell start month
FROM SalesLT.Product
GROUP BY Color, Name, Size, DateName(mm, SellStartDate)
HAVING SUM(ListPrice) > 3000

SELECT 
       SUM(ListPrice) AS Aggregate, --> an aggregate function, and at least 1 dimension column must have a GROUP BY Clause     
       DateName(mm, SellStartDate) AS SellStartMonth --> aggregate for product sell start month
FROM SalesLT.Product
GROUP BY DateName(mm, SellStartDate)
HAVING SUM(ListPrice) > 3000


---- SQL CLASS 4.2 ----

---VIEW OBJECT TYPE---
-- An Object type within a database --> Ensure every column has a header, always mention
-- the name of the schema

CREATE VIEW SalesLT.vAggreg AS --the select sataement will be created into SalesLT.vAggreg
SELECT Name,
       Color,
       Size,
       SUM(ListPrice) AS Aggregate, --> an aggregate function, and at least 1 dimension column must have a GROUP BY Clause     
       DateName(mm, SellStartDate) AS SellStartMonth--> aggregate for product sell start month
FROM SalesLT.Product
GROUP BY Color, Name, Size, DateName(mm, SellStartDate)
HAVING SUM(ListPrice) > 3000

SELECT *
FROM SalesLT.vAggreg

--JOIN--
--Two tables must be joinable, having a similar values in a column

--INNER JOIN only records with matching values

-- OUTER JOIN --> 2 types ->LEFT OUTER JOIN & RIGHT OUTER JOIN

--LEFT OUTER JOIN/LEFT JOIN-
--Table on the left side must be taken into consideration
-- The records on left table with no matches will also be returned, having
--- null values with records with matches.

---RIGHT OUTER JOIN/RIGHT JOIN
-- Opposite of LEFT JOIN

---FULL JOIN---
--Combination of all joins --> All records from both tables will be returned

--- The table on the left, look for the Foreign Key, the 
--Check the right table if it's Primary Key is similar with Left table


--INNER JOIN EXAMPLE:

SELECT *
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID



SELECT *
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID
WHERE Color = 'Black'



SELECT ProductID,
       Color,
       StandardCost,
       ListPrice
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID



SELECT ProductID,
       Color,
       StandardCost,
       ListPrice,
       YEAR(SellStartDate) AS SellStartYear
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID

SELECT TOP 50 ProductID,
       Color,
       StandardCost,
       ListPrice
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID



SELECT TOP 50 ProductID,
       Color,
       StandardCost,
       ListPrice
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID
ORDER BY StandardCost ASC


SELECT ProductID,
       SalesLT.Product.Name,
       SalesLT.ProductCategory.Name,
       Color,
       StandardCost,
       ListPrice
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID


SELECT ProductID,
       SalesLT.Product.Name AS ProductName,
       SalesLT.ProductCategory.Name AS CategoryName,
       Color,
       StandardCost,
       ListPrice
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID


SELECT TOP 50 ProductID,
       (SalesLT.Product.Name) AS ProductName,
       (SalesLT.ProductCategory.Name) AS ProdCatName,
       Color,
       StandardCost,
       ListPrice,
       YEAR(SellStartDate) AS SellStartYear,
       Len(SalesLT.Product.Name) AS LengthProductName
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID
WHERE Color = 'Black'
ORDER BY StandardCost DESC


SELECT TOP 50 ProductID,
       (SalesLT.Product.Name) AS ProductName,
       (SalesLT.ProductCategory.Name) AS ProdCatName,
       Color,
       StandardCost,
       ListPrice,
       YEAR(SellStartDate) AS SellStartYear,
       Len(SalesLT.Product.Name) AS LengthProductName
FROM SalesLT.Product INNER JOIN SalesLT.ProductCategory
ON SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID
INNER JOIN SalesLT.ProductModel
ON SalesLT.Product.ProductModelID = ProductModel.ProductModelID
WHERE Color = 'Black'
ORDER BY StandardCost DESC



SELECT TOP 50 ProductID,
       (p.Name) AS ProductName,
       (pc.Name) AS ProdCatName,
       Color,
       StandardCost,
       ListPrice,
       YEAR(SellStartDate) AS SellStartYear,
       Len(p.Name) AS LengthProductName
FROM SalesLT.Product AS p INNER JOIN SalesLT.ProductCategory AS pc
ON p.ProductCategoryID = pc.ProductCategoryID
INNER JOIN SalesLT.ProductModel AS pm
ON p.ProductModelID = pm.ProductModelID
WHERE Color = 'Black'
ORDER BY StandardCost DESC



