-- 1. Top 5 Customers by Spending
SELECT c.CustomerName, SUM(p.ProductPrice * td.Quantity) AS TotalSpent
FROM transactiondetail td
JOIN transactionheader th ON td.TransactionID = th.TransactionID
JOIN mscustomer c ON th.CustomerID = c.CustomerID
JOIN msproduct p ON td.ProductID = p.ProductID
GROUP BY c.CustomerName
ORDER BY TotalSpent DESC
LIMIT 5;

-- 2. Monthly Revenue Trend
SELECT DATE_FORMAT(th.TransactionDate, '%Y-%m') AS Month,
       SUM(p.ProductPrice * td.Quantity) AS Revenue
FROM transactiondetail td
JOIN transactionheader th ON td.TransactionID = th.TransactionID
JOIN msproduct p ON td.ProductID = p.ProductID
GROUP BY Month
ORDER BY Month;

-- 3. Most Active Employees
SELECT e.EmployeeName, COUNT(*) AS TransactionsHandled
FROM transactionheader th
JOIN msemployee e ON th.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeName
ORDER BY TransactionsHandled DESC;

-- 4. Most Popular Products
SELECT p.ProductName, SUM(td.Quantity) AS ItemSold
FROM transactiondetail td
JOIN msproduct p ON td.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY ItemSold DESC;

-- 5. Most Popular Categories
SELECT c.CategoryName, SUM(td.Quantity) AS ItemsSold
FROM transactiondetail td
JOIN msproduct p ON td.ProductID = p.ProductID
JOIN mscategory c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY ItemsSold DESC;