-- Database Create
CREATE DATABASE Mobile_Sales_DB;
USE Mobile_Sales_DB;

-- Table 1: Mobile Sales Data
CREATE TABLE Mobile_Sales (
    Transaction_ID INT PRIMARY KEY,
    Day INT,
    Month INT,
    Year INT,
    Day_Name VARCHAR(20),
    Brand VARCHAR(50),
    Mobile_Model VARCHAR(100),
    Units_Sold INT,
    Price_Per_Unit DECIMAL(10,2),
    City VARCHAR(50),
    Payment_Method VARCHAR(50),
    Customer_Rating DECIMAL(3,1)
);

-- Table 2: Customer Information
CREATE TABLE Customer_Info (
    Transaction_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Customer_Age INT,
    FOREIGN KEY (Transaction_ID)
    REFERENCES Mobile_Sales(Transaction_ID)
);

-- Table 3: Additional Business Data
CREATE TABLE Additional_Data (
    Transaction_ID INT PRIMARY KEY,
    Discount DECIMAL(5,2),
    Delivery_Type VARCHAR(50),
    FOREIGN KEY (Transaction_ID)
    REFERENCES Mobile_Sales(Transaction_ID)
);

-- Database Create
CREATE DATABASE Mobile_Sales_DB;
USE Mobile_Sales_DB;

-- Table 1: Mobile Sales Data
CREATE TABLE Mobile_Sales (
    Transaction_ID INT PRIMARY KEY,
    Day INT,
    Month INT,
    Year INT,
    Day_Name VARCHAR(20),
    Brand VARCHAR(50),
    Mobile_Model VARCHAR(100),
    Units_Sold INT,
    Price_Per_Unit DECIMAL(10,2),
    City VARCHAR(50),
    Payment_Method VARCHAR(50),
    Customer_Rating DECIMAL(3,1)
);

-- Table 2: Customer Information
CREATE TABLE Customer_Info (
    Transaction_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Customer_Age INT,
    FOREIGN KEY (Transaction_ID)
    REFERENCES Mobile_Sales(Transaction_ID)
);

-- Table 3: Additional Business Data
CREATE TABLE Additional_Data (
    Transaction_ID INT PRIMARY KEY,
    Discount DECIMAL(5,2),
    Delivery_Type VARCHAR(50),
    FOREIGN KEY (Transaction_ID)
    REFERENCES Mobile_Sales(Transaction_ID)
);
## 1. Total Revenue

SELECT SUM(Units_Sold * Price_Per_Unit) AS Total_Revenue
FROM Mobile_Sales;

##. Brand-wise Revenue
SELECT Brand,
       SUM(Units_Sold * Price_Per_Unit) AS Revenue
FROM Mobile_Sales
GROUP BY Brand
ORDER BY Revenue DESC;

##Top Selling Mobile Models
SELECT Mobile_Model,
       SUM(Units_Sold) AS Total_Units
FROM Mobile_Sales
GROUP BY Mobile_Model
ORDER BY Total_Units DESC;

##. City-wise Sales
SELECT City,
       SUM(Units_Sold * Price_Per_Unit) AS Revenue
FROM Mobile_Sales
GROUP BY City
ORDER BY Revenue DESC;
##. Payment Method Analysis
SELECT Payment_Method,
       COUNT(*) AS Transactions
FROM Mobile_Sales
GROUP BY Payment_Method;

##. Customer Age Group Analysis
SELECT
CASE
    WHEN Customer_Age < 25 THEN '18-24'
    WHEN Customer_Age BETWEEN 25 AND 34 THEN '25-34'
    WHEN Customer_Age BETWEEN 35 AND 44 THEN '35-44'
    ELSE '45+'
END AS Age_Group,
COUNT(*) AS Customers
FROM Customer_Info
GROUP BY Age_Group;

##Average Customer Rating by Brand

SELECT Brand,
       AVG(Customer_Rating) AS Avg_Rating
FROM Mobile_Sales
GROUP BY Brand
ORDER BY Avg_Rating DESC;


-- Monthly Sales Trend
SELECT MONTH(Sale_Date) AS Month_No,
       SUM(Units_Sold * Price_Per_Unit) AS Revenue
FROM Mobile_Sales
GROUP BY MONTH(Sale_Date)
ORDER BY Month_No;

-- Payment Method Usage
SELECT Payment_Method,
       COUNT(*) AS Total_Transactions
FROM Mobile_Sales
GROUP BY Payment_Method;

-- Average Rating by Brand
SELECT Brand,
       ROUND(AVG(Customer_Rating),2) AS Average_Rating
FROM Mobile_Sales
GROUP BY Brand
ORDER BY Average_Rating DESC;

-- City-wise Sales
SELECT City,
       SUM(Units_Sold * Price_Per_Unit) AS Revenue
FROM Mobile_Sales
GROUP BY City
ORDER BY Revenue DESC;

-- Total Revenue
SELECT SUM(Units_Sold * Price_Per_Unit) AS Total_Revenue
FROM Mobile_Sales;

-- Brand-wise Revenue
SELECT Brand,
       SUM(Units_Sold * Price_Per_Unit) AS Revenue
FROM Mobile_Sales
GROUP BY Brand
ORDER BY Revenue DESC;

