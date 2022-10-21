--##Any and All Operators
---Any
select * from [Order Details]
where UnitPrice>250

---Any = or
Select * from products
where ProductID=any (select distinct ProductID
from [Order Details] where UnitPrice>250)

select * from products
where ProductID= any (Select distinct ProductID
from [Order Details] where Quantity>110)

--All = And
Select * from products
where ProductID= All (Select Distinct ProductID
from [Order Details] where Quantity>110)