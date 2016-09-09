alter table yang_currency add  currency_remain_num decimal(10,4)  null comment '该货币剩余数量' default 0 after currency_all_num;
alter table yang_currency add  buy_max_num decimal(10,4)  null default 0 comment '每次购买的最大数量';

DROP TABLE IF EXISTS `yang_currency_record`;
CREATE TABLE `yang_currency_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) NOT NULL COMMENT '货币',
  `type` char(20) NOT NULL COMMENT '收入/支出',
  `num` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '该次操作的数量',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `currency` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='货币增加减少明细';
