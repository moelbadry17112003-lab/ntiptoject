SELECT TOP 5
    p.ProductName,
    p.Category,
    SUM(t.Quantity) AS TotalUnitsSold,
    SUM(t.Profit) AS TotalProfit
FROM Transactions t
JOIN Products p ON t.ProductID = p.ProductID
GROUP BY p.ProductName, p.Category
ORDER BY TotalUnitsSold DESC;
