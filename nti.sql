SELECT 
    s.StoreName,
    s.Region,
    SUM(t.Revenue) AS TotalSales,
    SUM(t.Profit) AS TotalProfit
FROM Transactions t
JOIN Stores s ON t.StoreID = s.StoreID
GROUP BY s.StoreName, s.Region
ORDER BY TotalProfit ASC;
