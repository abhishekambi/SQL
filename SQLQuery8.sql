---## Union & union all operator

select * from df1
select * from df2

--union all
select * from df1
union all --add data row wise & keep duplicate
select * from df2

---Union
select * from df1
union -- add data rwo wise & remove duplicate row
select * from df2

---Single Column Union
select city from customers  --91 rows
union all
select city from Suppliers --29 rows
order by city

select city from customers --91
union
select city from suppliers --29
order by city

--Union All
--Use Union All to also selec duplicate values!
--Union all with where

select city, country from Customers
where country='germany' ---11 rows
Union all --add row wise & keep duplicate
select city, country from Suppliers
where country='Germany' ---3 rows
order by city

select city, country from customers
where country='Germany'
Union --Add row wise and Remove duplicate
select city, country from Suppliers
where country='Germany'
order by city

---Advanced Union
select * into abcd
from (
	select city, country from customers
	where country='germany'  --11rows
	union all
	select city, country from Suppliers
	where country ='germany') as tmp   --3 rows

select * from abcd