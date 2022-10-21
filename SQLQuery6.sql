create database Test2

--drop database test2

use test2

create table demo
(First_name varchar(255), --Alphabet
Gender nvarchar(255), --Alphabet & numbers
age int, ---without decimal number
salary float, --- with decimal number
DOB date) --Date

Select * from Demo

Insert into demo values ('Irfan', 'M', '27', '2000.0','1992-06-26')
insert into demo values ('Nikita', 'F','31', '1500.5', '1996-01-06')
insert into demo values ('Deeksha','f','28','2000.4','1997-02-20')
insert into demo values ('Hardik','M','37','6500.8','1992-03-26')
insert into demo values ('Komal','F','21','8500.34','1996-04-06')
insert into demo values ('Imran','M','24', '4500','1997-07-20')
insert into demo values ('Rohini','F','22','1000.456', '1997-01-20')

select * from Demo
--Drop table Demo

use Northwind
---Important of ;go----------
select * from orders
where orderi=10248;
go

select * from customers
where country='uk';
go

select * from customers

---sub query------
--It required 2 table for analysis
--first table output will be input of second table

select * from orders
where CustomerID in (select distinct CustomerID
					from Customers
					where country='uk')
order by CustomerID

---q1
---orderid wise total bill amount for poland country

select *  from [Order Details]

select orderid, sum (unitprice*quantity) as total_cost,
				count (orderId) as No_Product_purchase
			into poland_Data
			from [Order Details]
			where OrderID in (select distinct OrderID	
								from orders	
								where ShipCountry='Poland')
group by OrderID

select * from poland_Data

select * from Orders

alter table orders
add Delivery_day float

select * from Orders

update Orders
set delivery_day= datediff(d,orderdate,ShippedDate)

select * from orders

alter table poland_data
add shipping_cost float, Product_cost float,Delivery_days float

Select * from poland_Data

select * from Orders

Update poland_Data
set shipping_cost=orders.Freight,
delivery_days= orders.delivery_days
from Orders inner join poland_Data
on poland_Data.OrderID = orders.OrderID

--select freight,Delivery_day from orders
--where orderID=10374

select * from poland_Data

Update poland_Data
Set Product_cost=Total_cost - shipping_cost
where OrderID in (select orderId from poland_data
					where total_cost > 300);

select * from poland_Data

Update poland_Data
set product_cost=Total_cost
where product_cost is null

select * from poland_Data

delete from poland_Data
where orderId in (select orderId
					from orders
					where Freight <=10 )

select * from poland_Data


select * from [Order Details]

select orderid, quantity,
case --IF
	when quantity > 30 then 'high'
	when quantity = 30 then 'equal'
	else 'other'
End as QuantityText
into backup1 ---saving data
from [Order Details] ---Main File data

select * from backup1