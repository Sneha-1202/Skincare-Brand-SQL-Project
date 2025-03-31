

--Listing products by category:
select ProductName, category from [Products (1)] 
order by category

--Finding customers from a specific city

select CustomerID, FirstName,LastName from [Customers (1)] where city='New York'

--Getting customer details by phone number
SELECT customerid, firstname, lastname, city,email
FROM [Customers (1)]
WHERE phone = 1234567890

--Finding the customer with the longest name (in case you want to explore data by length of names):

select top 1 customerId, firstname,lastname, LEN(firstname)+LEN(Lastname) as full_length from  [Customers (1)]
order by full_length desc

--Finding campaigns with budget exceeding a specific amount

select campaignname, budget from [Marketing_Campaign] where budget=10000