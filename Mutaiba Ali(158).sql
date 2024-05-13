Create database Clothing_Store;
use Clothing_Store;

-- Product Table
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Category VARCHAR(255),
    Price DECIMAL(10, 2),
    Description TEXT,
    Quantity INT
);

-- Customer Table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Address TEXT
);

-- Orders Table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Total_Amount DECIMAL(10, 2)
);

-- Order_Item Table
CREATE TABLE Order_Item (
    Order_Item_ID INT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Unit_Price DECIMAL(10, 2)
);

-- Employee Table
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Position VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20)
);

-- Supplier Table
CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Contact_Person VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255)
);

-- Purchase Table
CREATE TABLE Purchase (
    Purchase_ID INT PRIMARY KEY,
    Supplier_ID INT,
    Purchase_Date DATE,
    Total_Amount DECIMAL(10, 2)
);

-- Purchase_Item Table
CREATE TABLE Purchase_Item (
    Purchase_Item_ID INT PRIMARY KEY,
    Purchase_ID INT,
    Product_ID INT,
    Quantity INT,
    Unit_Price DECIMAL(10, 2)
);

-- Transaction Table
CREATE TABLE Transaction (
    Transaction_ID INT PRIMARY KEY,
    Order_ID INT,
    Transaction_Date DATE,
    Amount DECIMAL(10, 2),
    Transaction_Type VARCHAR(255)
);

-- Promotion Table
CREATE TABLE Promotion (
    Promotion_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Start_Date DATE,
    End_Date DATE,
    Discount_Percentage DECIMAL(5, 2)
);