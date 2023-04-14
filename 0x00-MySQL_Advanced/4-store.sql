-- Script that creates a trigger that decreases the quantity of an item
-- after adding a new order.
-- Quantity in the table items can be negative.
DELIMITER // 

CREATE TRIGGER decrease_quantity_item AFTER INSERT ON orders
FOR EACH ROW
    BEGIN
        UPDATE items
        SET quantity = quantity - NEW.number
        WHERE NEW.item_name = name;
    END//

DELIMITER ;
