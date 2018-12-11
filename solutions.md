# Solution 1
```sql
CREATE VIEW '1010434' AS
    SELECT itemName, price FROM ItemsPurchased as IP
    INNER JOIN Transactions as T
    ON IP.transactionID = T.trackingID
    WHERE T.trackingID = 1010434;
```

# Solution 2 
```sql
CREATE VIEW m_cera AS
    SELECT trackingID, purchase_date FROM Transactions as T
        INNER JOIN Customer as C
        ON T.customerID = C.id
        WHERE C.id = 2137;
```

# Solution 3
```sql
SELECT sum(price) FROM ItemsPurchased as IP
INNER JOIN m_cera
ON IP.transactionID = m_cera.trackingID 
WHERE m_cera.trackingID = 1010434;
```