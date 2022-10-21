select * from sales_data

select * from returned_data

---inner join---
select sales_data.*, returned_data.returned
from sales_data inner join returned_data
on sales_data.customerID=returned_data.customerID

---left join---
select sales_data.*, returned_data.returned
into abc from sales_data left join returned_data
on sales_data.customerID=returned_data.customerID

select * from abc
update abc
set returned='No'
where returned is null

select * from abc

