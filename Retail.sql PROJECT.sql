/*CREATE DATABASE: RetailStore*/

CREATE DATABASE retail_store;

USE retail_store;

-- 1. Customers table

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50),
    State VARCHAR(50),
    JoinDate DATE
);

INSERT INTO Customers VALUES (1,'Amit Sharma','Male',28,'Delhi','Delhi','2024-01-15');
INSERT INTO Customers VALUES (2,'Priya Verma','Female',32,'Mumbai','Maharashtra','2024-02-10');
INSERT INTO Customers VALUES (3,'Rahul Gupta','Male',25,'Gurgaon','Haryana','2024-03-12');
INSERT INTO Customers VALUES (4,'Sneha Jain','Female',29,'Bangalore','Karnataka','2024-01-20');
INSERT INTO Customers VALUES (5,'Vikas Singh','Male',35,'Chennai','Tamil Nadu','2024-04-05');
INSERT INTO Customers VALUES (6,'Neha Arora','Female',27,'Pune','Maharashtra','2024-02-18');
INSERT INTO Customers VALUES (7,'Rohit Kumar','Male',31,'Jaipur','Rajasthan','2024-05-01');
INSERT INTO Customers VALUES (8,'Pooja Mehta','Female',24,'Ahmedabad','Gujarat','2024-03-28');
INSERT INTO Customers VALUES (9,'Karan Malhotra','Male',40,'Delhi','Delhi','2024-01-08');
INSERT INTO Customers VALUES (10,'Anjali Sharma','Female',26,'Noida','UP','2024-04-15');
INSERT INTO Customers VALUES (11,'Deepak Yadav','Male',33,'Lucknow','UP','2024-02-22');
INSERT INTO Customers VALUES (12,'Ritika Kapoor','Female',30,'Chandigarh','Punjab','2024-03-11');
INSERT INTO Customers VALUES (13,'Mohit Bansal','Male',37,'Gurgaon','Haryana','2024-01-27');
INSERT INTO Customers VALUES (14,'Shreya Gupta','Female',22,'Mumbai','Maharashtra','2024-05-12');
INSERT INTO Customers VALUES (15,'Arjun Nair','Male',34,'Kochi','Kerala','2024-04-20');
INSERT INTO Customers VALUES (16,'Simran Kaur','Female',29,'Amritsar','Punjab','2024-03-03');
INSERT INTO Customers VALUES (17,'Nitin Jain','Male',41,'Indore','MP','2024-02-07');
INSERT INTO Customers VALUES (18,'Ayesha Khan','Female',28,'Hyderabad','Telangana','2024-04-25');
INSERT INTO Customers VALUES (19,'Manish Gupta','Male',36,'Patna','Bihar','2024-01-19');
INSERT INTO Customers VALUES (20,'Kavita Singh','Female',27,'Bhopal','MP','2024-05-08');

-- 2. Products table

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    CostPrice DECIMAL(10,2),
    SellingPrice DECIMAL(10,2)
);

INSERT INTO Products VALUES (1,'Laptop Dell','Electronics','Dell',45000,52000);
INSERT INTO Products VALUES (2,'iPhone 15','Electronics','Apple',65000,75000);
INSERT INTO Products VALUES (3,'Samsung TV','Electronics','Samsung',28000,35000);
INSERT INTO Products VALUES (4,'Office Chair','Furniture','GreenSoul',3500,5000);
INSERT INTO Products VALUES (5,'Study Table','Furniture','IKEA',4000,6000);
INSERT INTO Products VALUES (6,'Air Conditioner','Appliances','LG',28000,36000);
INSERT INTO Products VALUES (7,'Refrigerator','Appliances','Whirlpool',22000,29000);
INSERT INTO Products VALUES (8,'Washing Machine','Appliances','IFB',18000,25000);
INSERT INTO Products VALUES (9,'Headphones','Electronics','Sony',1500,2500);
INSERT INTO Products VALUES (10,'Smart Watch','Electronics','Noise',1800,3000);
INSERT INTO Products VALUES (11,'Mixer Grinder','Appliances','Philips',2000,3500);
INSERT INTO Products VALUES (12,'Microwave Oven','Appliances','Samsung',6000,9000);
INSERT INTO Products VALUES (13,'Sofa Set','Furniture','Urban Ladder',18000,25000);
INSERT INTO Products VALUES (14,'Wardrobe','Furniture','Godrej',12000,18000);
INSERT INTO Products VALUES (15,'Dining Table','Furniture','IKEA',15000,22000);
INSERT INTO Products VALUES (16,'Bluetooth Speaker','Electronics','JBL',2500,4500);
INSERT INTO Products VALUES (17,'Monitor','Electronics','LG',8000,12000);
INSERT INTO Products VALUES (18,'Keyboard','Electronics','Logitech',700,1200);
INSERT INTO Products VALUES (19,'Mouse','Electronics','HP',300,700);
INSERT INTO Products VALUES (20,'Power Bank','Electronics','Mi',600,1200);

-- 3. Stores table

CREATE TABLE Stores (
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50)
);

INSERT INTO Stores VALUES (1,'Delhi Central Store','Delhi','Delhi');
INSERT INTO Stores VALUES (2,'Mumbai Mall Store','Mumbai','Maharashtra');
INSERT INTO Stores VALUES (3,'Gurgaon Hub','Gurgaon','Haryana');
INSERT INTO Stores VALUES (4,'Bangalore Tech Store','Bangalore','Karnataka');
INSERT INTO Stores VALUES (5,'Chennai Retail','Chennai','Tamil Nadu');
INSERT INTO Stores VALUES (6,'Pune Plaza','Pune','Maharashtra');
INSERT INTO Stores VALUES (7,'Jaipur Outlet','Jaipur','Rajasthan');
INSERT INTO Stores VALUES (8,'Ahmedabad Center','Ahmedabad','Gujarat');
INSERT INTO Stores VALUES (9,'Noida Store','Noida','UP');
INSERT INTO Stores VALUES (10,'Lucknow Store','Lucknow','UP');
INSERT INTO Stores VALUES (11,'Hyderabad Store','Hyderabad','Telangana');
INSERT INTO Stores VALUES (12,'Kochi Store','Kochi','Kerala');
INSERT INTO Stores VALUES (13,'Indore Store','Indore','MP');
INSERT INTO Stores VALUES (14,'Patna Store','Patna','Bihar');
INSERT INTO Stores VALUES (15,'Bhopal Store','Bhopal','MP');
INSERT INTO Stores VALUES (16,'Amritsar Store','Amritsar','Punjab');
INSERT INTO Stores VALUES (17,'Chandigarh Store','Chandigarh','Punjab');
INSERT INTO Stores VALUES (18,'Nagpur Store','Nagpur','Maharashtra');
INSERT INTO Stores VALUES (19,'Surat Store','Surat','Gujarat');
INSERT INTO Stores VALUES (20,'Mysore Store','Mysore','Karnataka');

-- 4. Employee table

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Designation VARCHAR(50),
    StoreID INT,
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);

INSERT INTO Employees VALUES (1,'Rajesh Kumar','Manager',1);
INSERT INTO Employees VALUES (2,'Pankaj Sharma','Sales Executive',2);
INSERT INTO Employees VALUES (3,'Ritu Verma','Sales Executive',3);
INSERT INTO Employees VALUES (4,'Karan Gupta','Cashier',4);
INSERT INTO Employees VALUES (5,'Neha Singh','Manager',5);
INSERT INTO Employees VALUES (6,'Ankit Jain','Sales Executive',6);
INSERT INTO Employees VALUES (7,'Sonia Mehta','Cashier',7);
INSERT INTO Employees VALUES (8,'Rohit Arora','Manager',8);
INSERT INTO Employees VALUES (9,'Pooja Sharma','Sales Executive',9);
INSERT INTO Employees VALUES (10,'Amit Yadav','Cashier',10);
INSERT INTO Employees VALUES (11,'Vivek Gupta','Manager',11);
INSERT INTO Employees VALUES (12,'Priyanka Kapoor','Sales Executive',12);
INSERT INTO Employees VALUES (13,'Rahul Bansal','Cashier',13);
INSERT INTO Employees VALUES (14,'Deepika Jain','Manager',14);
INSERT INTO Employees VALUES (15,'Mohit Verma','Sales Executive',15);
INSERT INTO Employees VALUES (16,'Anjali Gupta','Cashier',16);
INSERT INTO Employees VALUES (17,'Nitin Sharma','Manager',17);
INSERT INTO Employees VALUES (18,'Kavita Mehta','Sales Executive',18);
INSERT INTO Employees VALUES (19,'Manoj Singh','Cashier',19);
INSERT INTO Employees VALUES (20,'Rakesh Kumar','Manager',20);

-- 5. Orders table

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    StoreID INT,
    EmployeeID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Orders VALUES (1,1,'2025-01-05',1,1);
INSERT INTO Orders VALUES (2,2,'2025-01-08',2,2);
INSERT INTO Orders VALUES (3,3,'2025-01-12',3,3);
INSERT INTO Orders VALUES (4,4,'2025-01-15',4,4);
INSERT INTO Orders VALUES (5,5,'2025-01-18',5,5);
INSERT INTO Orders VALUES (6,6,'2025-01-20',6,6);
INSERT INTO Orders VALUES (7,7,'2025-01-25',7,7);
INSERT INTO Orders VALUES (8,8,'2025-02-02',8,8);
INSERT INTO Orders VALUES (9,9,'2025-02-05',9,9);
INSERT INTO Orders VALUES (10,10,'2025-02-08',10,10);
INSERT INTO Orders VALUES (11,11,'2025-02-12',11,11);
INSERT INTO Orders VALUES (12,12,'2025-02-15',12,12);
INSERT INTO Orders VALUES (13,13,'2025-02-20',13,13);
INSERT INTO Orders VALUES (14,14,'2025-02-22',14,14);
INSERT INTO Orders VALUES (15,15,'2025-03-01',15,15);
INSERT INTO Orders VALUES (16,16,'2025-03-05',16,16);
INSERT INTO Orders VALUES (17,17,'2025-03-10',17,17);
INSERT INTO Orders VALUES (18,18,'2025-03-15',18,18);
INSERT INTO Orders VALUES (19,19,'2025-03-20',19,19);
INSERT INTO Orders VALUES (20,20,'2025-03-25',20,20);

-- 6. Order Details table

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails VALUES (1,1,1,1,52000);
INSERT INTO OrderDetails VALUES (2,2,2,1,75000);
INSERT INTO OrderDetails VALUES (3,3,3,2,35000);
INSERT INTO OrderDetails VALUES (4,4,4,3,5000);
INSERT INTO OrderDetails VALUES (5,5,5,1,6000);
INSERT INTO OrderDetails VALUES (6,6,6,1,36000);
INSERT INTO OrderDetails VALUES (7,7,7,1,29000);
INSERT INTO OrderDetails VALUES (8,8,8,2,25000);
INSERT INTO OrderDetails VALUES (9,9,9,4,2500);
INSERT INTO OrderDetails VALUES (10,10,10,2,3000);
INSERT INTO OrderDetails VALUES (11,11,11,3,3500);
INSERT INTO OrderDetails VALUES (12,12,12,1,9000);
INSERT INTO OrderDetails VALUES (13,13,13,1,25000);
INSERT INTO OrderDetails VALUES (14,14,14,1,18000);
INSERT INTO OrderDetails VALUES (15,15,15,1,22000);
INSERT INTO OrderDetails VALUES (16,16,16,2,4500);
INSERT INTO OrderDetails VALUES (17,17,17,1,12000);
INSERT INTO OrderDetails VALUES (18,18,18,5,1200);
INSERT INTO OrderDetails VALUES (19,19,19,3,700);
INSERT INTO OrderDetails VALUES (20,20,20,4,1200);

-- 7. Inventory Table

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    StoreID INT,
    StockQty INT,
    LastUpdated DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);

INSERT INTO Inventory VALUES (1,1,1,15,'2025-06-01');
INSERT INTO Inventory VALUES (2,2,2,10,'2025-06-01');
INSERT INTO Inventory VALUES (3,3,3,8,'2025-06-01');
INSERT INTO Inventory VALUES (4,4,4,25,'2025-06-01');
INSERT INTO Inventory VALUES (5,5,5,20,'2025-06-01');
INSERT INTO Inventory VALUES (6,6,6,12,'2025-06-01');
INSERT INTO Inventory VALUES (7,7,7,18,'2025-06-01');
INSERT INTO Inventory VALUES (8,8,8,22,'2025-06-01');
INSERT INTO Inventory VALUES (9,9,9,50,'2025-06-01');
INSERT INTO Inventory VALUES (10,10,10,45,'2025-06-01');
INSERT INTO Inventory VALUES (11,11,11,30,'2025-06-01');
INSERT INTO Inventory VALUES (12,12,12,16,'2025-06-01');
INSERT INTO Inventory VALUES (13,13,13,5,'2025-06-01');
INSERT INTO Inventory VALUES (14,14,14,7,'2025-06-01');
INSERT INTO Inventory VALUES (15,15,15,9,'2025-06-01');
INSERT INTO Inventory VALUES (16,16,16,40,'2025-06-01');
INSERT INTO Inventory VALUES (17,17,17,28,'2025-06-01');
INSERT INTO Inventory VALUES (18,18,18,60,'2025-06-01');
INSERT INTO Inventory VALUES (19,19,19,75,'2025-06-01');
INSERT INTO Inventory VALUES (20,20,20,35,'2025-06-01');

-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*SALES PERFORMANCE*/

SELECT 
       SUM(orderdetails.Quantity*orderdetails.UnitPrice) AS TOTALSALES,
	   COUNT(DISTINCT ORDERS.ORDERID) AS TOTALORDER,
	   SUM(orderdetails.Quantity) AS TOTALQUANTITYSOLD
FROM ORDERS
JOIN orderdetails ON ORDERS.OrderID = orderdetails.OrderID;

/*CUSTOMER BEHAVIOR*/

SELECT 
    C.CustomerID,
    C.CustomerName,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(od.Quantity * od.UnitPrice) AS TotalSpent
FROM Customers C
JOIN Orders O ON c.CustomerID = O.CustomerID
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
GROUP BY C.CustomerID, C.CustomerName
ORDER BY TotalSpent DESC;

/*PRODUCT PROFITABILITY*/

SELECT 
    P.ProductID,
    P.ProductName,
    P.Category,
    SUM((OD.UnitPrice - P.CostPrice) * OD.Quantity) AS Profit
FROM Products P
JOIN OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductID, P.ProductName, P.Category
ORDER BY Profit DESC;

/*REGIONAL PERFORMANCE*/

SELECT 
    S.State,
    S.City,
    SUM(OD.Quantity * OD.UnitPrice) AS TotalRevenue
FROM Stores S
JOIN Orders O ON S.StoreID = O.StoreID
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
GROUP BY S.State, S.City
ORDER BY TotalRevenue DESC;

/*INVENTORY STATUS*/

SELECT 
    P.ProductName,
    S.StoreName,
    I.StockQty,
    I.LastUpdated
FROM Inventory I
JOIN Products P ON I.ProductID = P.ProductID
JOIN Stores S ON I.StoreID = S.StoreID
ORDER BY i.StockQty ASC;

/*EMPLOYEE SALES PREFORMANCE*/

SELECT 
    E.EmployeeID,
    E.EmployeeName,
    E.Designation,
    S.StoreName,
    COUNT(O.OrderID) AS Totalorders,
    SUM(OD.Quantity * OD.UnitPrice) AS TotalSales
FROM Employees E
JOIN Stores S ON E.StoreID = S.StoreID
JOIN Orders O ON E.EmployeeID = O.EmployeeID
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
GROUP BY E.EmployeeID, E.EmployeeName, E.Designation, S.StoreName
ORDER BY TotalSales DESC;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*REVENUE BY STATE*/

SELECT s.State, SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM Orders o
JOIN Stores s ON o.StoreID = s.StoreID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY s.State
ORDER BY Revenue DESC;

/*REVENUE BY STORE*/

SELECT s.StoreID, s.StoreName, s.City, s.State,
       SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM Orders o
JOIN Stores s ON o.StoreID = s.StoreID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY s.StoreID, s.StoreName, s.City, s.State
ORDER BY Revenue DESC;

/*TOP CUSTOMERS*/

SELECT c.CustomerID, c.CustomerName, c.City, c.State,
       SUM(od.Quantity * od.UnitPrice) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CustomerName, c.City, c.State
ORDER BY TotalSpent DESC;

/*CUSTOMER LIFETIME VALUE (CLV)*/

SELECT c.CustomerID, c.CustomerName,
       SUM(od.Quantity * od.UnitPrice) AS CLV
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CustomerName
ORDER BY CLV DESC;

/*PRODUCT PROFITABILITY*/

SELECT p.ProductID, p.ProductName, p.Category, p.Brand,
       SUM(od.Quantity) AS UnitsSold,
       SUM(od.Quantity * od.UnitPrice) AS Revenue,
       SUM(od.Quantity * p.CostPrice) AS TotalCost,
       SUM(od.Quantity * (od.UnitPrice - p.CostPrice)) AS Profit
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName, p.Category, p.Brand
ORDER BY Profit DESC;

/*CATEGORY WISE REVENUE*/

SELECT p.Category,
       SUM(od.Quantity) AS UnitsSold,
       SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Category
ORDER BY Revenue DESC;

/*MONTHLY SALES TREND*/

SELECT DATE_FORMAT(o.OrderDate, '%Y-%m') AS SalesMonth,
       SUM(od.Quantity * od.UnitPrice) AS Revenue,
       COUNT(DISTINCT o.OrderID) AS TotalOrders
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY DATE_FORMAT(o.OrderDate, '%Y-%m')
ORDER BY SalesMonth;

/*REGIONAL SALES DASHBOARD*/

SELECT s.State,
       COUNT(DISTINCT s.StoreID) AS TotalStores,
       COUNT(DISTINCT o.OrderID) AS TotalOrders,
       SUM(od.Quantity) AS UnitsSold,
       SUM(od.Quantity * od.UnitPrice) AS Revenue
FROM Stores s
LEFT JOIN Orders o ON s.StoreID = o.StoreID
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY s.State
ORDER BY Revenue DESC;

/*STOCK OUT ANALYSIS*/

SELECT p.ProductName, s.StoreName, s.City, s.State, i.StockQty
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID
JOIN Stores s ON i.StoreID = s.StoreID
WHERE i.StockQty < 10
ORDER BY i.StockQty ASC;

/*INVENTORY TURNOVER*/
/*EMPLOYEE PERFORMANCE RANKING*/
/*REPEAT PURCHASE RATE*/
