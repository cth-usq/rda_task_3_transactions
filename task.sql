USE ShopDB;

INSERT INTO Orders (CustomerID, Date)
    VALUE (1, '2024-03-11');

INSERT INTO OrderItems (OrderID, ProductID, Count)
    VALUE (1, 1, 1);

START TRANSACTION; 
UPDATE Products SET WarehouseAmount = WarehouseAmount - 1 WHERE ID = '1';

COMMIT;

