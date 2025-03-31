

--Sales count for each product:
select Productid,count(*)as [total sales ] from [Sales (1)]
group by productid
order by [total sales] desc

--Total sales by customer
select customerid, sum (totalprice)[Total spent] from  [Sales (1)]
group by customerid 
order by [Total spent] desc

--Finding the most recent campaign

select  top 1 CampaignName, startdate,enddate from [Marketing_Campaign] 
order by startdate desc

--Finding when and which customer bought the product and at what price along with the product name

select s.saledate, c.firstname, c.lastname,p.productname, s.totalprice from [Customers (1)] c join [Sales (1)] s on c.CustomerID=s.CustomerID
join [Products (1)] p on p.productid=s.productid

-- Finding total amount by each marketing campaign
select m.campaignname, sum(s.totalprice) [Total Revenue] from [Marketing_Campaign] m left join [Sales (1)]s on m.CampaignID=s.productid
group by m.campaignname

--Finding the most popular product based on quantity sold

select p.productname , sum (s.quantity) [Total Sold] from [Products (1)] p join [Sales (1)]s on p.ProductID=s.ProductID
group by p.productname 
order by [Total Sold] desc

--Finding the total revenue for each customer by combining sales and customer data
select c.firstname,c.lastname, sum(s.totalprice) [Total revenue] from [Customers (1)]c join [Sales (1)]s on 
c.CustomerID=s.CustomerID
group by c.firstname, c.lastname
order by [Total revenue] desc


