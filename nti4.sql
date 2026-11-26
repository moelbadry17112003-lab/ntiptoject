SELECT 
    CASE 
        WHEN Discount = 0 THEN 'No Discount'
        ELSE 'With Discount'
    END AS DiscountStatus,
    COUNT(TransactionID) AS OrdersCount,
    SUM(Revenue) AS TotalRevenue,
    SUM(Profit) AS TotalProfit
FROM Transactions
GROUP BY 
    CASE 
        WHEN Discount = 0 THEN 'No Discount'
        ELSE 'With Discount'
    END;
