--- T-SQL Assignment 1 --
--- Transact-SQL (T-SQL) is a query language and an extension of Structured Query Language (SQL) ---
--- developed by Microsoft and Sybase. It's used to manage and manipulate data in Microsoft SQL Server 
--- databases and software. T-SQL statement execution in procedural, ie: executes procedures as a block 
--- in a logical and structural order.


--- T-SQL Assignment 2 ---

--- 2a1. Tables: Tables are database objects that contain all the data in a database. In tables, data is logically 
---     organized in a row-and-column format similar to a spreadsheet. Each row represents a unique record,
---     and each column represents a field in the record.

--- 2a2. Columns: A column is a list of values, usually belonging to a particular field, displayed vertically in a table. 
---      In a relational database table, values within a column each correspond to a different record. 
---      Values in a column share a data type.

--- 2a3. Rows: A row is a single group of related data within a table. Rows are horizontal elements within a table.
    
--- 2a4. Primary Key: The primary key in T-SQL is a single, or a group of fields or columns that can uniquely identify a row 
---      in a table. It is a column that accepts unique values for each row.

--- 2a5. Foreign Key: is a field (or collection of fields) in one table, that refers to the primary key in another table. The table with 
---      the foreign key is called the child table, and the table with the primary key is called the parent table.

--- 2b. Relational Database Management Systems (RDBMS) are called "relational" because they store and organize data points that are related
---     to one another. The model uses tables to represent data, each row representing a record record and each column containing attributes and values.
---     Tables relationships are established using primary and foreign keys. 

--- T-SQL Assignment 3 ---

--- a. Three(3) databases were created in the DSKV server ---

--- b. DB1, DB2, DB3 means Database1, Database2 and Database3 created in the DSKV Server ---

--- c. Only one(1) schema is under DB2 ---

--- d. DB1 has two(2) tables, and DB3 has two(2) tables ---

--- e. You can only work within one database at a time, but can reference other databases ---

--- f. You can select a database context in two(2) ways: You can select DB1 to query all tables
---    under all schemas under DB1 ([schema.Table]) and query other tables under different schemas
---    in other databases by ([DBn].[Scheman].Tablen), and vice versa under the same instance.


--- g. Database context can be selected in two(2) ways: When you are in DB1 context
---    you can query TabA and TabB under schema/namespace Sc1 and Sc3 by Sc1.TabA and Sc3.TabB,
---    and while still within DB1, other databases can be queried by [DB name].[Schema name].[Table name].
---    ex: DB3.Sc3.TabE and DB3.Sc2.TabD.

--- h. ---

-- SELECT *
-- FROM DB1.Sc3.TabB

--- T-SQL Assignment 4. ---

SELECT *
FROM SalesLT.Customer

--- T-SQL Assignment 5. ---

-- a. There are 5 Attributes/Columns in the CustomerAddress Table ---

--- b. ---

SELECT CustomerID,  --- Integer Datatype ---
       AddressID,   --- Integer Datatype ---
       ModifiedDate --- DateTime Datatype ---
FROM SalesLT.CustomerAddress

---T-SQL Assignment 6. ---

SELECT Name,
       Color,
       ListPrice,
       SellStartDate
FROM SalesLT.Product

--- T-SQL Assignment 7. ---

SELECT Name,
       Weight,
       StandardCost,
       (StandardCost * 20)/500 AS [Premium Cost]
FROM SalesLT.Product