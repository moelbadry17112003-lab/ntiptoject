SELECT 
    PaymentMethod,
    COUNT(TransactionID) AS NumberOfOrders,
    SUM(Revenue) AS TotalRevenue
FROM Transactions
GROUP BY PaymentMethod
ORDER BY NumberOfOrders DESC;
