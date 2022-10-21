--##like operator
select * from Customers

select * from customers
where contactname like 'a%' --start with a

select * from customers
where contactname like '%a' ---end with a

select * from customers
where contactname like '%or' --- anywhere in contactname
 
 ---contactname that have "r" in the second position
select * from customers
where ContactName like '_r%'

-- customername that starts with "a" and are at least 3 charactors in length:
select * from customers
where ContactName like 'a__%'

--customers with a contactname that starts with "a" and ends with "o"
select * from customers
where contactname like 'a%o'

--customername that does not start with "a":
select * from customers
where ContactName not like 'a%'

select * from customers
where city like 'ber%'

select * from customers
where city like '%es%'  ---between

select * from customers 
where city like '_ondon'

---##in operator
select * from customers
where country in ('germany', 'france', 'uk')

select * from customers
where country not in ('germany','france','uk')

select * from customers
where country in (select distinct country from suppliers)

--##between operator
select * from products
where UnitPrice between 50 and 60

--not between
select * from products
where UnitPrice not between 10 and 20

--between with in
select * from products
where UnitPrice between 10 and 20
and not CategoryID in (1,2,3)

--between dates
select * from orders
where OrderDate between '1996-07-01' and '1996-07-31'

--alias for culumns
select customerID as ID, contactname AS Customer
from Customers

select customerID AS ID, Contactname AS [Contact person]
from customers

select CustomerID AS ID, ContactName AS Contact_Person
from Customers

select customerID As id, contactname as customer, country into new_customer 
from customers

select * from Customers
where country='usa' and not country='uk'

select top 3 * from Products
where unitprice >100
order by UnitPrice desc

select * from customers
where country='germany'  AND fax is null

select top 3 * from products
where UnitPrice >50

---create a new column in table
---Alter function

select * from products

alter table products
add Amount float  --#data type is mandatory

select * from products

update Products
set Amount = UnitPrice * UnitsInStock   --## +,-,*,/

select * from Products


alter table products
add Total_quantity float, order_ratio float

select * from products

update products
set Total_Quantity = unitsinstock + unitsonorder,
    order_ratio = unitsinstock / unitprice

	select * from Products

	alter table products
    drop column amunt

	select * from products

