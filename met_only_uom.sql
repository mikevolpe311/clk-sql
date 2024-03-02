DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MetOnly_UOM`()
BEGIN
SELECT * FROM clark.clarkuom_grous where ct = 1 and store_code = 'MET';
END$$
DELIMITER ;
