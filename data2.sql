--checking the total records
SELECT count (*) FROM [Products (1)]  
SELECT  count (*)  FROM [Customers (1)]  
SELECT  count (*) FROM [Sales (1)]  
SELECT  count (*) FROM [Marketing_Campaign]

--previewing the first 5 records

SELECT TOP 5 * FROM [Products (1)]  
SELECT TOP 5 * FROM [Customers (1)]  
SELECT TOP 5 * FROM [Sales (1)]  
SELECT TOP 5 * FROM [Marketing_Campaign]

--checking for duplictes

select ProductID, count(*) from [Products (1)]
group by ProductID
having count(*)>1


--checking for missing values 

select * from [Products (1)] where ProductName is null or Price is null
select * from [Customers (1)] where CustomerId is null or Email is null

--Finding products within a specific price range

select ProductName from [Products (1)] where Price between 12 and 19