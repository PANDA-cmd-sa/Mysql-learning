
Suppliers(SupplierID PK, Name)
Products(ProductID PK, Name, SupplierID FK)
Stock(StockID PK, ProductID FK, Quantity)

SELECT Products.Name, Stock.Quantity
FROM Products
JOIN Stock ON Products.ProductID = Stock.ProductID;
