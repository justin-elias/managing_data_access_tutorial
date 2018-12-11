DROP VIEW IF EXISTS egg_tracker;
DROP VIEW IF EXISTS m_cera;
DROP VIEW IF EXISTS '1010434';

CREATE VIEW egg_tracker AS 
    SELECT trackingID, purchase_date FROM Transactions AS T
        INNER JOIN ItemsPurchased as IP
        ON T.trackingID = IP.transactionID 
        WHERE IP.itemName = 'eggs';

CREATE VIEW m_cera AS
    SELECT trackingID, purchase_date FROM Transactions as T
        INNER JOIN Customer as C
        ON T.customerID = C.id
        WHERE C.id = 2137;

CREATE VIEW '1010434' AS
    SELECT itemName, price FROM ItemsPurchased as IP
    INNER JOIN Transactions as T
    ON IP.transactionID = T.trackingID
    WHERE T.trackingID = 1010434;

SELECT sum(price) FROM ItemsPurchased as IP
    INNER JOIN m_cera
    ON IP.transactionID = m_cera.trackingID 
    WHERE m_cera.trackingID = 1010434;

    SELECT name FROM sqlite_master WHERE type = 'view'


