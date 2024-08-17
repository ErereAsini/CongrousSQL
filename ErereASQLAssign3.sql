------ SQL ASSIGNMENT 3 -------


---1.---

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


---2.---

SELECT Name,
       ProductID,
       Weight,
       SellEndDate,
       CASE
            WHEN SellEndDate IS NULL AND Weight < 1000 THEN 'Under-Weight'
            WHEN SellEndDate IS NULL AND Weight BETWEEN 1001 AND 6000 THEN 'Moderate-Weight'
            WHEN SellEndDate IS NULL AND Weight >= 6000 THEN 'Over-Weight'
       END AS WeightSuspensionList
FROM SalesLT.Product
WHERE CASE
            WHEN SellEndDate IS NULL AND Weight < 1000 THEN 'Under-Weight'
            WHEN SellEndDate IS NULL AND Weight >= 6000 THEN 'Over-Weight'
        END IN ('Under-Weight', 'Over-Weight')


---3.---

SELECT SUM(StandardCost) AS TotalCost,
       STDEV(ListPrice) AS ListPriceStrdDev
FROM SalesLT.Product
WHERE CASE
            WHEN SellEndDate IS NULL AND Weight < 1000 THEN 'Under-Weight'
            WHEN SellEndDate IS NULL AND Weight BETWEEN 1001 AND 6000 THEN 'Moderate-Weight'
            WHEN SellEndDate IS NULL AND Weight >= 6000 THEN 'Over-Weight'
       END IN ('Under-Weight', 'Over-Weight')
HAVING SUM(StandardCost) >= 2000


