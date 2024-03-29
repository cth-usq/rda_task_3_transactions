USE ShopDB;

INSERT INTO Orders (CustomerID, Date)
    VALUE (1, '2024-03-11');

INSERT INTO OrderItems (OrderID, ProductID, Count)
    VALUE (1, 1, 10);

START TRANSACTION; 
UPDATE Products SET WarehouseAmount = WarehouseAmount - 10 WHERE EmployeeID = '1';

COMMIT;

