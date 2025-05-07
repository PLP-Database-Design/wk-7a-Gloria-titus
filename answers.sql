-- 1NF
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);

INSERT INTO ProductDetail( OrderID, CustomerName, Products)
VALUES 
(101, 'John Doe','Laptop')
(101, 'John Doe','Mouse')
(102, 'Jane Smith', 'Tablet')
(102, 'Jane Smith', 'Keyboard')
(102, 'Jane Smith', 'Mouse')
(103, 'Emily Clark', 'Phone')

-- Question Two -- 
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Orders (OrderID, CustomerName)
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;


INSERT INTO OrderDetails (OrderID, Product, Quantity)
SELECT OrderID, Product, Quantity
FROM OrderDetails;