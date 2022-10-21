--##select
select * from Northwind.dbo.customers

SELECT * FROM Customers

SELECT City From Customers

select City , companyName from customers

select city, region, country from Customers

select ContactTitle , Address from customers



--##distict
select * from Customers

select country from customers

select distinct country from customers

select country, city from Customers

select distinct country,city from Customers

select COUNT(distinct country) as distinctcountries from Customers
--##where
select * from Customers
where country ='mexico'
select * from Customers
where CustomerID='alfki'
select * from Customers
where city= 'london' --not a case sensitive
select * from products
select * from products
where productname='chai'
select * from products
where UnitPrice=18
SELECT * from products
where unitprice<55
select * from products
where unitprice<=55
select * from products
where UnitPrice<>18 --##not
select * from Products
where UnitPrice between 50 and 60
select * from Customers
where city='paris'
--##and
select distinct city from Customers

select * from Customers
where country='germany' and city='berlin'
                                    

--## or
select * from Customers
where city='berlin' or city='aachen'

select * from customers
where city='germany' or city='spain'

--## not
select * from customers
where not country='germany'
select * from customers
where not country in ('germany', 'spain', 'usa', 'uk')

--## combine == and,or not
select * from customers
where country='germany' and (city='berlin' or city='aachen')
select * from customers 
where not country='germany' and not country='usa'
select * from customers
where country='germany' and not (city='berlin' or city='aachen')

--##order by
select * from customers
order by country
select * from customers
order by country desc
select * from products
order by UnitPrice
select * from Products
order by UnitPrice decs 
select country, city from customers
order by country, city
select country , city from customers
order by country asc, city desc
--## order by 
SELECT * FROM Customers
ORDER BY Country 

SELECT * FROM Customers
ORDER BY Country DESC

select * from products
order by unitprice 

select * from products
order by unitprice desc

SELECT Country,City FROM Customers
ORDER BY Country, City

SELECT Country,City FROM Customers
ORDER BY Country ASC, City DESC

--## null values
--this is null METHOD

select * from Customers

select * from Customers
where Region is NULL

select * from Customers
where Fax is null

select * from Customers
where Region is null and Fax is null
 
--this is not null operator
SELECT CompanyName, ContactName, Region
FROM Customers
WHERE Region IS NOT NULL

SELECT ContactName,Region,Fax
FROM Customers
WHERE Region IS not NULL and Fax is  null

--## sql update statement

--update table
select * from Customers

select * into Customers2 from Customers

select * from Customers2

UPDATE Customers2
SET ContactName='Irfan'
WHERE CustomerID='ALFKI'

select * from Customers2

--update mutiple records

UPDATE Customers2
SET CompanyName = 'ANALYTICS', City= 'Mumbai', Country='India'
WHERE ContactName='Irfan'

select * from Customers2

--update warning
UPDATE Customers2
SET ContactName='Irfan'

select * from Customers2

---## delete statement

-- delete one row 
select * from Customers2

DELETE FROM Customers2 
WHERE CustomerID = 'ALFKI'

select * from Customers2

--- delete one column

alter table customers2
drop column Region

select * from customers2 

--delete all records

DELETE FROM Customers2

select * from Customers2 

--- delete entire table 
drop table Customers2

select * from Customers2 

--## top,limit or rownum clause

SELECT * FROM Customers

SELECT TOP 7 * FROM Customers

---top recent example
SELECT TOP 50 City  FROM Customers

--add a where clause
SELECT TOP 3 * FROM Customers
WHERE Country='Germany'

--## min() and max()

---min() 
select * from Products

SELECT MIN(UnitPrice) FROM Products 

SELECT MIN(UnitPrice) AS SmallestPrice
FROM Products

--max()
SELECT MAX(UnitPrice) AS HighestPrice
FROM Products

--## count(),avg() and sum functions

---count()
select * from Products

SELECT COUNT(UnitPrice) as Total_Count
FROM Products

--avg()
SELECT AVG(UnitPrice) as Avg_Unit_Price
FROM Products

--sum()
SELECT SUM(UnitPrice) AS Sums_Unit_Price 
FROM Products
