select * into Test_classroom.dbo.customer from Northwind.dbo.Customers

select * into Test_customer from Customers
where ContactTitle = 'owner'

select * into Test_tech_Phone from Customers
where ContactTitle = 'owner' and City = 'london'

select * from Customers
where Region in ('sp','or','rj')

select * from customers
