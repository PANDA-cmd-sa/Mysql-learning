
Customers(CustomerID PK, Name)
Products(ProductID PK, Name, Price)
Orders(OrderID PK, CustomerID FK)
OrderDetails(OrderDetailID PK, OrderID FK, ProductID FK, Quantity)

SELECT Customers.Name, SUM(Products.Price * OrderDetails.Quantity) AS Total
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY Customers.Name;
