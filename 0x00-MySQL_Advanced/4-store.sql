--- Create a trigger to decrease a quantity
delimiter #
CREATE TRIGGER decrease_quantity AFTER INSERT ON orders for each row begin UPDATE items SET quantity = quantity - NEW.number WHERE name = NEW.item_name; end #
DELIMITER ;
