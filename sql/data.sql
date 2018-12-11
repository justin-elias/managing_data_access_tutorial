DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS ItemsPurchased;
DROP TABLE IF EXISTS Transactions;

CREATE TABLE Customer(id integer, firstname text, lastname text, cardnumber text, email text);

INSERT INTO Customer VALUES(1897, 'Rick', 'James', 'a3789', 'rick05@example.com');
INSERT INTO customer VALUES(2137, 'Michael', 'Cera', 'a3870', 'thelegend27@example.com');
INSERT INTO customer VALUES(8675, 'Sarah', 'Palin', 'a7628', 'jj7534@example.com');

CREATE TABLE Transactions(trackingID integer, customerID integer, purchase_date integer);

INSERT INTO Transactions VALUES(1010773, 1897, 10112018);
INSERT INTO Transactions VALUES(1010774, 1897, 10132018);
INSERT INTO Transactions VALUES(1010434, 2137, 05212018);
INSERT INTO Transactions VALUES(1010435, 2137, 06212018);
INSERT INTO Transactions VALUES(1010436, 2137, 07212018);
INSERT INTO Transactions VALUES(1010248, 8675, 12092018);

CREATE TABLE ItemsPurchased(itemID integer, itemName text, transactionID integer, price integer);

INSERT INTO ItemsPurchased VALUES(777141, 'rum', 1010773, 27);
INSERT INTO ItemsPurchased VALUES(777294, 'eggs', 1010773, 2);
INSERT INTO ItemsPurchased VALUES(777184, 'watermelon', 1010773, 6);
INSERT INTO ItemsPurchased VALUES(777141, 'rum', 1010434, 27);
INSERT INTO ItemsPurchased VALUES(777839, 'lime', 1010434, 2);
INSERT INTO ItemsPurchased VALUES(777111, 'gingerale', 1010434, 8);
INSERT INTO ItemsPurchased VALUES(777269, 'bread', 1010248, 4);
INSERT INTO ItemsPurchased VALUES(777294, 'eggs', 1010248, 2);
INSERT INTO ItemsPurchased VALUES(777269, 'NYStripSteak', 1010248, 17);

.mode column
.headers on


