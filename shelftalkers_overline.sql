CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `shelftalker_overline_061319` AS
    SELECT 
        `shelftalkers`.`itemupc` AS `itemupc`,
        `shelftalkers`.`itemno` AS `itemno`,
        `shelftalkers`.`itemdesc` AS `itemdesc`,
        CONCAT(GROUP_CONCAT(`shelftalkers`.`overline`
                    SEPARATOR ', '),
                ' ',
                `shelftalkers`.`deposit`) AS `overline`,
        `shelftalkers`.`item` AS `item`,
        `shelftalkers`.`saleprice` AS `saleprice`,
        `shelftalkers`.`size` AS `size`,
        `shelftalkers`.`unitprice` AS `unitprice`,
        `shelftalkers`.`popular` AS `popular`,
        `shelftalkers`.`catdesc` AS `catdesc`,
        `shelftalkers`.`rtcomm` AS `rtcomm`,
        `shelftalkers`.`clipless` AS `@clipless`,
        `shelftalkers`.`picture1` AS `@picture1`,
        `shelftalkers`.`picture2` AS `@picture2`,
        `shelftalkers`.`CouponMult` AS `CouponMult`,
        `shelftalkers`.`CouponValue` AS `CouponValue`,
        `shelftalkers`.`PromoText` AS `PromoText`,
        `shelftalkers`.`FinalPrice` AS `FinalPrice`,
        `shelftalkers`.`originalsort` AS `originalsort`,
        `shelftalkers`.`isnew` AS `isnew`
    FROM
        (SELECT 
            `shelftalkers`.`itemupc` AS `itemupc`,
                `shelftalkers`.`itemno` AS `itemno`,
                `shelftalkers`.`itemdesc` AS `itemdesc`,
                `shelftalkers`.`overline` AS `overline`,
                `shelftalkers`.`item` AS `item`,
                `shelftalkers`.`saleprice` AS `saleprice`,
                `shelftalkers`.`size` AS `size`,
                `shelftalkers`.`WRSize` AS `WRSize`,
                `shelftalkers`.`unitprice` AS `unitprice`,
                `shelftalkers`.`popular` AS `popular`,
                `shelftalkers`.`catdesc` AS `catdesc`,
                `shelftalkers`.`rtcomm` AS `rtcomm`,
                `shelftalkers`.`clipless` AS `clipless`,
                `shelftalkers`.`picture1` AS `picture1`,
                `shelftalkers`.`picture2` AS `picture2`,
                `shelftalkers`.`CouponMult` AS `CouponMult`,
                `shelftalkers`.`CouponValue` AS `CouponValue`,
                `shelftalkers`.`PromoText` AS `PromoText`,
                `shelftalkers`.`FinalPrice` AS `FinalPrice`,
                `shelftalkers`.`originalsort` AS `originalsort`,
                `shelftalkers`.`deposit` AS `deposit`,
                `shelftalkers`.`isnew` AS `isnew`
        FROM
            `shelftalkers`
        GROUP BY `shelftalkers`.`popular` , `shelftalkers`.`item` , `shelftalkers`.`size` , `shelftalkers`.`overline` , `shelftalkers`.`saleprice`
        ORDER BY `shelftalkers`.`item` , `shelftalkers`.`size` , FIELD(`shelftalkers`.`popular`, 'x') DESC) `shelftalkers`
    GROUP BY `shelftalkers`.`item` , `shelftalkers`.`size` , `shelftalkers`.`saleprice`
    ORDER BY `shelftalkers`.`originalsort`