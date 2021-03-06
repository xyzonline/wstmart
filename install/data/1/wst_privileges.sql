SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `wst_privileges`;
CREATE TABLE `wst_privileges` (
  `privilegeId` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) NOT NULL,
  `privilegeCode` varchar(20) NOT NULL,
  `privilegeName` varchar(30) NOT NULL,
  `isMenuPrivilege` tinyint(4) NOT NULL DEFAULT '0',
  `privilegeUrl` varchar(255) DEFAULT NULL,
  `otherPrivilegeUrl` text,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`privilegeId`),
  UNIQUE KEY `privilegeCode` (`privilegeCode`),
  KEY `menuId` (`menuId`,`dataFlag`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

INSERT INTO `wst_privileges` VALUES ('2', '2', 'XTGL_00', '查看系统管理', '1', null, null, '1'),
('3', '3', 'CDGL_00', '查看菜单权限', '1', 'admin/menus/index', 'admin/menus/listQuery,admin/menus/get,admin/privileges/listQuery,admin/privileges/get', '1'),
('4', '3', 'CDGL_01', '新增菜单', '0', 'admin/menus/add', null, '1'),
('5', '3', 'CDGL_02', '编辑菜单', '0', 'admin/menus/edit', null, '1'),
('6', '3', 'CDGL_03', '删除菜单', '0', 'admin/menus/del', null, '1'),
('7', '3', 'QXGL_01', '新增权限', '0', 'admin/privileges/add', null, '1'),
('8', '3', 'QXGL_02', '编辑权限', '0', 'admin/privileges/edit', null, '1'),
('9', '3', 'QXGL_03', '删除菜单', '0', 'admin/privileges/del', null, '1'),
('29', '4', 'JSGL_00', '查看角色管理', '1', 'admin/roles/index', 'admin/roles/pageQuery', '1'),
('30', '4', 'JSGL_01', '新增角色', '0', 'admin/roles/add', 'admin/roles/toEdit,admin/privileges/listQueryByRole', '1'),
('31', '4', 'JSGL_02', '编辑角色', '0', 'admin/roles/edit', 'admin/roles/toEdit,admin/privileges/listQueryByRole', '1'),
('32', '4', 'JSGL_03', '删除角色', '0', 'admin/roles/del', null, '1'),
('35', '1', 'SY_001', '查看首页', '1', '#', null, '1'),
('36', '5', 'ZYGL_00', '查看职员管理', '1', 'admin/staffs/index', 'admin/staffs/pageQuery', '1'),
('37', '5', 'ZYGL_01', '新增职员', '0', 'admin/staffs/add', 'admin/staffs/toAdd', '1'),
('38', '5', 'ZYGL_02', '编辑职员', '0', 'admin/staffs/edit', 'admin/staffs/toEdit,admin/staffs/editPass', '1'),
('39', '5', 'ZYGL_03', '删除职员', '0', 'admin/staffs/del', null, '1'),
('40', '10', 'DHGL_00', '查看导航管理', '1', 'admin/navs/index', 'admin/navs/pageQuery', '1'),
('41', '10', 'DHGL_01', '新增导航', '0', 'admin/nav/add', 'admin/nav/toEdit', '1'),
('42', '11', 'GGGL_00', '查看广告管理', '1', 'admin/ads/index', 'admin/ads/pageQuery', '1'),
('43', '12', 'ZFGL_00', '查看支付管理', '1', 'admin/payments/index', 'admin/payments/pageQuery', '1'),
('44', '13', 'YHGL_00', '查看银行管理', '1', 'admin/banks/index', 'admin/banks/pageQuery', '1'),
('45', '14', 'YQGL_00', '查看友情链接', '1', 'admin/friendlinks/index', 'admin/friendlinks/pageQuery', '1'),
('46', '10', 'DHGL_02', '修改导航', '0', 'admin/nav/edit', 'admin/nav/toEdit,admin/nav/editiIsShow', '1'),
('47', '10', 'DHGL_03', '删除导航', '0', 'admin/nav/del', null, '1'),
('48', '11', 'GGGL_01', '新增广告', '0', 'admin/ads/add', 'admin/ads/toEdit', '1'),
('49', '11', 'GGGL_02', '修改广告', '0', 'admin/ads/edit', 'admin/ads/toEdit,admin/ads/changeSort', '1'),
('50', '11', 'GGGL_03', '删除广告', '0', 'admin/ads/del', null, '1'),
('51', '12', 'ZFGL_02', '编辑支付', '0', 'admin/payments/edit', 'admin/payments/toEdit', '1'),
('52', '12', 'ZFGL_03', '卸载支付', '0', 'admin/payments/del', null, '1'),
('53', '13', 'YHGL_01', '新增银行', '0', 'admin/banks/add', null, '1'),
('54', '13', 'YHGL_02', '修改银行', '0', 'admin/banks/edit', null, '1'),
('55', '13', 'YHGL_03', '删除银行', '0', 'admin/banks/del', null, '1'),
('56', '14', 'YQGL_01', '新增友情链接', '0', 'admin/friendlinks/add', 'admin/friendlinks/toEdit', '1'),
('57', '14', 'YQGL_02', '修改友情链接', '0', 'admin/friendlinks/edit', 'admin/friendlinks/toEdit', '1'),
('58', '14', 'YQGL_03', '删除友情链接', '0', 'admin/friendlinks/del', '', '1'),
('59', '16', 'DQGL_00', '查看地区管理', '1', 'admin/areas/index', 'admin/areas/pageQuery', '1'),
('60', '16', 'DQGL_01', '新增地区', '0', 'admin/areas/add', null, '1'),
('61', '16', 'DQGL_02', '编辑地区', '0', 'admin/areas/edit', 'admin/areas/editiIsShow', '1'),
('62', '16', 'DQGL_03', '删除地区', '0', 'admin/areas/del', null, '1'),
('67', '24', 'SPFL_00', '查看商品分类', '1', 'admin/goodscats/index', 'admin/goodscats/pageQuery', '1'),
('68', '19', 'HYDJ_00', '查看会员等级', '1', 'admin/userranks/index', 'admin/userranks/pageQuery', '1'),
('69', '19', 'HYDJ_01', '新增会员等级', '0', 'admin/userranks/add', 'admin/userranks/toEdit', '1'),
('70', '19', 'HYDJ_02', '编辑会员等级', '0', 'admin/userranks/edit', 'admin/userranks/toEdit', '1'),
('71', '19', 'HYDJ_03', '删除会员等级', '0', 'admin/userranks/del', '', '1'),
('72', '20', 'HYGL_00', '查看会员管理', '1', 'admin/users/index', 'admin/users/pageQuery', '1'),
('73', '20', 'HYGL_01', '新增会员管理', '0', 'admin/users/add', 'admin/users/toEdit', '1'),
('74', '20', 'HYGL_02', '编辑会员管理', '0', 'admin/users/edit', 'admin/users/toEdit', '1'),
('75', '20', 'HYGL_03', '删除会员管理', '0', 'admin/users/del', '', '1'),
('76', '24', 'SPFL_01', '新增商品分类', '0', 'admin/goodscats/add', null, '1'),
('77', '24', 'SPFL_02', '编辑商品分类', '0', 'admin/goodscats/edit', 'admin/goodscats/editiIsFloor,admin/goodscats/editiIsShow', '1'),
('78', '24', 'SPFL_03', '删除商品分类', '0', 'admin/goodscats/del', null, '1'),
('79', '25', 'PPGL_00', '查看品牌管理', '1', 'admin/brands/index', 'admin/brands/pageQuery', '1'),
('80', '25', 'PPGL_01', '新增品牌', '0', 'admin/brands/add', 'admin/brands/toEdit', '1'),
('81', '25', 'PPGL_02', '编辑品牌', '0', 'admin/brands/edit', 'admin/brands/toEdit', '1'),
('82', '25', 'PPGL_03', '删除品牌', '0', 'admin/brands/del', null, '1'),
('83', '34', 'PJGL_00', '查看评价管理', '1', 'admin/goodsappraises/index', 'admin/goodsappraises/pageQuery', '1'),
('84', '34', 'PJGL_02', '编辑评价', '0', 'admin/goodsappraises/edit', 'admin/goodsappraises/toEdit', '1'),
('85', '34', 'PJGL_03', '删除评价', '0', 'admin/goodsappraises/del', null, '1'),
('86', '6', 'DLRZ_00', '查看登录日志', '1', 'admin/LogStaffLogins/index', 'admin/LogStaffLogins/pageQuery', '1'),
('87', '35', 'DDGL_00', '查看订单管理', '0', '#', '', '1'),
('88', '7', 'CZRZ_00', '查看操作日志', '1', 'admin/logoperates/index', 'admin/logoperates/pageQuery,admin/logoperates/toView', '1'),
('89', '42', 'GGWZ_00', '查看广告位置', '1', 'admin/adpositions/index', 'admin/adpositions/pageQuery', '1'),
('90', '42', 'GGWZ_01', '新增广告位置', '0', 'admin/adpositions/add', 'admin/adpositions/toEdit', '1'),
('91', '42', 'GGWZ_02', '编辑广告位置', '0', 'admin/adpositions/edit', 'admin/adpositions/toEdit', '1'),
('92', '42', 'GGWZ_03', '删除广告位置', '0', 'admin/adpositions/del', '', '1'),
('93', '31', 'WZGL_00', '查看文章管理', '1', 'admin/articles/index', 'admin/articles/pageQuery', '1'),
('94', '31', 'WZGL_01', '新增文章', '0', 'admin/articles/add', 'admin/articles/toEdit', '1'),
('95', '31', 'WZGL_02', '编辑文章', '0', 'admin/articles/edit', 'admin/articles/toEdit,admin/articles/editiIsShow', '1'),
('96', '31', 'WZGL_03', '删除文章', '0', 'admin/articles/del', '', '1'),
('97', '30', 'WZFL_00', '查看文章分类', '1', 'admin/articlecats/index', 'admin/articlecats/pageQuery', '1'),
('98', '30', 'WZFL_01', '新增文章分类', '0', 'admin/articlecats/add', '', '1'),
('99', '30', 'WZFL_02', '编辑文章分类', '0', 'admin/articlecats/edit', 'admin/articlecats/editiIsShow', '1'),
('100', '30', 'WZFL_03', '删除文章分类', '0', 'admin/articlecats/del', '', '1'),
('101', '43', 'QTCD_00', '前台菜单管理', '1', 'admin/homemenus/index', 'admin/homemenus/pageQuery', '1'),
('102', '21', 'ZHGL_00', '查看账号管理', '1', 'admin/users/accountindex', 'admin/users/pageQuery', '1'),
('103', '9', 'SCPZ_00', '查看商城配置', '1', 'admin/sysconfigs/index', '', '1'),
('104', '9', 'SCPZ_02', '编辑商城配置', '0', 'admin/sysconfigs/edit', '', '1'),
('105', '44', 'RZGL_00', '查看认证', '1', 'admin/accreds/index', 'admin/accreds/pageQuery', '1'),
('106', '44', 'RZGL_01', '新增认证', '0', 'admin/accreds/add', '', '1'),
('107', '44', 'RZGL_02', '编辑认证', '0', 'admin/accreds/edit', '', '1'),
('108', '44', 'RZGL_03', '删除认证', '0', 'admin/accreds/del', '', '1'),
('109', '1', '3434', '3434', '0', '', '', '-1'),
('110', '15', 'DQSZ_00', '查看地区管理', '0', '', '', '1'),
('111', '8', 'SCSZ_00', '查看商城设置', '0', '', '', '1'),
('112', '43', 'QTCD_01', '新增前台菜单', '0', 'admin/homemenus/add', '', '1'),
('113', '43', 'QTCD_02', '编辑前台菜单', '0', 'admin/homemenus/edit', 'admin/homemenus/setToggle', '1'),
('114', '43', 'QTCD_03', '删除前台菜单', '0', 'admin/homemenus/del', '', '1'),
('115', '18', 'HYSZ_00', '查看会员管理', '0', '', '', '1'),
('116', '29', 'WZSZ_00', '查看文章管理', '0', '', '', '1'),
('117', '21', 'ZHGL_02', '编辑账号信息', '0', 'admin/users/editAccount', 'admin/users/changeUserStatus', '1'),
('118', '39', 'DPSZ_00', '店铺管理', '0', '', '', '1'),
('119', '38', 'DPXX_00', '查看店铺管理', '0', '', '', '1'),
('120', '22', 'SPXX_00', '查看商品管理', '0', '', '', '1'),
('121', '23', 'SPSZ_00', '查看商品管理', '0', '', '', '1'),
('122', '45', 'DPSQ_00', '查看开店申请', '1', 'admin/shopapplys/index', 'admin/shopapplys/pageQuery', '1'),
('123', '45', 'DPSQ_03', '删除开店申请', '0', 'admin/shopapplys/del', null, '1'),
('124', '45', 'DPSQ_04', '审核开店申请', '0', 'admin/shopapplys/handle', 'admin/shopapplys/toHandle,admin/shops/toAddByApply', '1'),
('125', '46', 'DPGL_00', '查看店铺管理', '1', 'admin/shops/index', 'admin/shops/pageQuery', '1'),
('126', '46', 'DPGL_01', '新增店铺', '0', 'admin/shops/add', 'admin/shops/toAddByApply', '1'),
('127', '46', 'DPGL_02', '编辑店铺', '0', 'admin/shops/edit', 'admin/shops/toEdit', '1'),
('128', '46', 'DPGL_03', '删除店铺', '0', 'admin/shops/del', '', '1'),
('129', '41', 'SCXX_00', '查看商城消息', '1', 'admin/messages/index', 'admin/messages/showFullMsg,admin/messages/pageQuery', '1'),
('130', '41', 'SCXX_01', '发送商城消息', '0', 'admin/messages/add', 'admin/messages/userQuery', '1'),
('131', '41', 'SCXX_03', '删除商城消息', '0', 'admin/messages/del', '', '1'),
('132', '47', 'TYDP_00', '查看停用店铺', '1', 'admin/shops/stopIndex', 'admin/shops/pageStopQuery', '1'),
('133', '47', 'TYDP_04', '启用店铺', '0', 'admin/shops/start', '', '-1'),
('134', '32', 'SPGG_00', '查看商品规格', '1', 'admin/speccats/index', 'admin/speccats/pageQuery', '1'),
('135', '32', 'SPGG_01', '新增商品规格', '0', 'admni/speccats/add', 'admni/speccats/toEdit', '1'),
('136', '32', 'SPGG_02', '编辑商品规格', '0', 'admni/speccats/edit', 'admni/speccats/toEdit,admni/speccats/setToggle', '1'),
('137', '32', 'SPGG_03', '删除商品规格', '0', 'admni/speccats/del', '', '1'),
('138', '48', 'SPSX_00', '查看商品属性', '1', 'admin/attributes/index', 'admin/attributes/pageQuery', '1'),
('139', '50', 'DDLB_00', '查看订单', '1', 'admin/orders/index', 'admin/orders/pageQuery', '1'),
('140', '51', 'TSDD_00', '查看投诉订单', '1', 'admin/orderComplains/index', 'admin/orderComplains/view,admin/orderComplains/pageQuery', '1'),
('141', '52', 'TKDD_00', '查看退款订单', '1', 'admin/orderrefunds/refund', 'admin/orderrefunds/refundPageQuery,admin/orders/view', '1'),
('142', '53', 'KDGL_00', '查看快递管理', '1', 'admin/express/index', 'admin/express/pageQuery', '1'),
('143', '53', 'KDGL_01', '新增快递', '0', 'admin/express/add', '', '1'),
('144', '53', 'KDGL_02', '编辑快递', '0', 'admin/express/edit', '', '1'),
('145', '53', 'KDGL_03', '删除快递', '0', 'admin/express/del', '', '1'),
('146', '33', 'SJSP_00', '查看已上架商品', '1', 'admin/goods/index', 'admin/goods/saleByPage', '1'),
('147', '33', 'SJSP_04', '商品操作', '0', 'admin/goods/illegal', '', '1'),
('148', '33', 'SJSP_03', '删除商品', '0', 'admin/goods/del', '', '1'),
('149', '54', 'DSHSP_00', '查看待审核商品', '1', 'admin/goods/auditIndex', 'admin/goods/auditByPage', '1'),
('150', '54', 'DSHSP_04', '商品审核', '0', 'admin/goods/allow', '', '1'),
('151', '55', 'WGSP_00', '查看违规商品', '1', 'admin/goods/illegalIndex', '', '1'),
('152', '58', 'SPTJ_00', '查看商品推荐', '1', 'admin/recommends/goods', 'admin/recommends/editgoods', '1'),
('153', '59', 'DPTJ_00', '查看店铺推荐', '1', 'admin/recommends/shops', 'admin/recommends/editshops', '1'),
('154', '59', 'DPTJ_04', '推荐操作', '0', 'admin/recommends/editshops', '', '1'),
('155', '58', 'SPTJ_04', '推荐操作', '0', 'admin/recommends/editgoods', '', '1'),
('156', '60', 'PPTJ_00', '查看品牌推荐', '1', 'admin/recommends/brands', 'admin/recommends/editbrands', '1'),
('157', '60', 'PPTJ_04', '推荐操作', '0', 'admin/recommends/editbrands', '', '1'),
('158', '36', 'TPKJ_00', '查看图片空间', '1', 'admin/images/index', 'admin/images/summary,admin/images/lists,admin/images/pageQuery,admin/images/checkImages', '1'),
('159', '36', 'TPKJ_04', '图片管理', '0', 'admin/images/del', '', '1'),
('160', '56', 'YYGL_00', '查看运营管理', '0', '', '', '1'),
('161', '57', 'TJGL_00', '查看推荐管理', '0', '', '', '1'),
('162', '49', 'DDSZ_00', '查看订单管理', '0', '', '', '1'),
('163', '51', 'TSDD_04', '处理订单投诉', '0', 'admin/orderComplains/toHandle', 'admin/orderComplains/finalHandle,admin/orderComplains/deliverRespond', '1'),
('164', '52', 'TKDD_04', '处理退款订单', '0', 'admin/orders/toRefund', 'admin/orders/orderRefund', '1'),
('165', '55', 'WGSP_04', '商品审核', '0', 'admin/goods/allow', '', '1'),
('166', '48', 'SPSX_01', '新增商品属性', '0', 'admin/attributes/add', '', '1'),
('167', '48', 'SPSX_02', '编辑商品属性', '0', 'admin/attributes/edit', 'admin/attributes/setToggle', '1'),
('168', '48', 'SPSX_03', '删除商品属性', '0', 'admin/attributes/del', '', '1'),
('169', '2', 'HHQL_04', '清理缓存', '0', 'admin/index/clearcache', '', '1'),
('170', '54', 'DSHSP_03', '删除商品', '0', 'admin/goods/del', '', '1'),
('171', '55', 'WGSP_03', '删除商品', '0', 'admin/goods/del', '', '1'),
('172', '2', 'ZYDP_00', '登录自营店铺', '0', 'admin/shops/inself', '', '1'),
('175', '62', 'CWGL_00', '查看财务管理', '0', '', '', '1'),
('176', '63', 'TXSQ_00', '查看提现申请', '1', 'admin/cashdraws/index', 'admin/cashdraws/pageQuery', '1'),
('177', '63', 'TXSQ_04', '处理提现申请', '0', 'admin/cashdraws/handle', 'admin/cashdraws/toHandle', '1'),
('178', '64', 'JSSQ_00', '查看结算申请', '1', 'admin/settlements/index', 'admin/settlements/pageQuery,admin/settlements/toView,admin/settlements/pageGoodsQuery', '1'),
('179', '64', 'JSSQ_04', '处理结算申请', '0', 'admin/settlements/handle', 'admin/settlements/toHandle', '1'),
('180', '65', 'SJJS_00', '查看商家结算', '1', 'admin/settlements/toShopIndex', 'admin/settlements/pageShopQuery,admin/settlements/pageShopOrderQuery,admin/settlements/toOrders', '1'),
('181', '65', 'SJJS_04', '生成结算单', '0', 'admin/settlements/generateSettleByShop', '', '1');
