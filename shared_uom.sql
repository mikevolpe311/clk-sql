DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Shared_UOM`()
BEGIN
SELECT * FROM clark.clarkuom_grous where ct = 2;
END$$
DELIMITER ;
