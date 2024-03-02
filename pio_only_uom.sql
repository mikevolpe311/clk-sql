DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `PioneerOnly_UOM`()
BEGIN
SELECT * FROM clark.clarkuom_grous where ct = 1 and store_code = 'PIONE';
END$$
DELIMITER ;
