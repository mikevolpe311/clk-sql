CREATE TABLE `clarkuom` (
  `store_code` varchar(100) NOT NULL,
  `itemno` varchar(100) DEFAULT NULL,
  `itemupc` varchar(100) NOT NULL,
  `itemdesc` varchar(45) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `umcode` varchar(100) DEFAULT NULL,
  `priceuom` varchar(100) DEFAULT NULL,
  `rmult` varchar(100) DEFAULT NULL,
  `retail` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `cents` varchar(100) DEFAULT NULL,
  `fac` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `smultc` varchar(45) DEFAULT NULL,
  `sretail` varchar(45) DEFAULT NULL,
  `enddate` varchar(45) DEFAULT NULL,
  `catdesc` varchar(45) DEFAULT NULL,
  `pcat` varchar(45) DEFAULT NULL,
  `groupname` varchar(45) DEFAULT NULL,
  `prccd` varchar(45) DEFAULT NULL,
  `centsn` varchar(45) DEFAULT NULL,
  `smult` varchar(45) DEFAULT NULL,
  `rtcomm` varchar(45) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  `adtype` varchar(45) DEFAULT NULL,
  `deptno` varchar(45) DEFAULT NULL,
  `coupmult` varchar(45) DEFAULT NULL,
  `coupval` varchar(45) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `coupcomm` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`store_code`,`itemupc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='store_code	itemno	itemupc	itemdesc	size	umcode	priceuom	rmult	retail	unit	cents	fac	category	smultc	sretail	enddate	catdesc	pcat	groupname	prccd	centsn	smult	rtcomm	block	adtype	deptno	coupmult	coupval';
