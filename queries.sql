-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select CategoryName, ProductName
from Category
join Product
on Category.Id = Product.CategoryId;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [Order].Id, CompanyName
from [Order]
join Shipper
on Shipper.Id = [Order].ShipVia
where [Order].OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select OrderId, Quantity, ProductName
from OrderDetail
join Product
on Product.Id = OrderDetail.ProductId
where OrderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select [Order].Id as OrderID, [Customer].CompanyName as Company_Name, [Employee].LastName as Employee_Last_Name
from [Order]
join Customer on Customer.Id = [Order].CustomerId
join Employee on Employee.Id = [Order].EmployeeId;