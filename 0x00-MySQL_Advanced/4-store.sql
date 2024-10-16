--- Create a trigger to decrease a quantity
--- When a new order is added
DROP TRIGGER IF EXISTS decrease_quantity;
delimiter #
CREATE TRIGGER decrease_quantity AFTER INSERT ON orders FOR EACH ROW BEGIN UPDATE items SET quantity = quantity - NEW.number WHERE name = NEW.item_name; end #
DELIMITER ;
