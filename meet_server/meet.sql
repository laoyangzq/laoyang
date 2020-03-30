SET NAMES UTF8;
DROP  DATABASE  IF  EXISTS  meet;
CREATE DATABASE meet CHARSET=UTF8;
USE meet; #创建数据库
#创建用户登录表
CREATE TABLE meet_user(
  uid int primary key AUTO_INCREMENT,
  uname varchar(32),    #用户姓名
  upwd varchar(32),     #用户密码
  email varchar(32),    #用户邮箱
  phone varchar(16),    #用户电话
  gender int            #用户性别
);
#添加用户
INSERT INTO meet_user VALUES(null,"james",md5('123456'),"tom@163.com","13412345678",1);

#创建商品分类信息表
CREATE TABLE meet_class(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(128)
);
#添加商品分类信息
INSERT INTO meet_class VALUES(null,'梦蛋糕');
INSERT INTO meet_class VALUES(null,'巧克力蛋糕');
INSERT INTO meet_class VALUES(null,'慕斯蛋糕');
INSERT INTO meet_class VALUES(null,'婚庆蛋糕');
INSERT INTO meet_class VALUES(null,'蛋糕配件');


#建商品信息列
CREATE TABLE meet_list(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  sum INT,
  icd INT, #商品编号
  clid INT, #商品分类编号
  title VARCHAR(128), #商品信息
  stitle VARCHAR(128),  #商品副标题
  price DECIMAL(8,2), #商品价格
  spec VARCHAR(20),  #商品规格
  pic VARCHAR(128)  #图片路径
);

#添加商品信息
INSERT INTO meet_list VALUES(NULL,1,100001253,10,'照红妆慕斯蛋糕（莓果仲夏）','宛如仲夏之夜',198.00,'8寸','img/mengdg/m00.jpg'),
(NULL,1,100001494,10,'寿山曲芝麻鲜奶蛋糕','寿山犹若南山高，欢声都是长生曲',198.00,'6寸','img/mengdg/m01.jpg'),
(NULL,1,100000187,10,'粉色恋曲鲜奶蛋糕','黄玫瑰与粉玫瑰，活力与纯真',198.00,'8寸','img/mengdg/m02.jpg'),
(NULL,1,100000173,10,'天亦有情鲜奶蛋糕','送给婚礼的祝福，三生三世情缘',1250.00,'16寸','img/mengdg/m03.jpg'),
(NULL,1,100001427,10,'固溶笑鲜奶蛋糕','寓意欣欣向荣的事业和生活','198.00','8寸','img/mengdg/m04.jpg'),
(NULL,1,100001547,10,'梅雪之傲鲜奶蛋糕','千克力淋面，多重享受',198.00,'7寸','img/mengdg/m05.jpg'),
(NULL,1,100001247,10,'爱的心意鲜奶蛋糕','浓浓的爱意',98.00,'4寸','img/mengdg/m06.jpg'),
(NULL,1,100000207,10,'百寿延绵鲜奶蛋糕','岁月留下鲜花的晚香，寿星在祝福声中容颜不老',1155.00,'7层','img/mengdg/m07.jpg'),
(NULL,1,100001262,10,'8号桃花扇鲜奶蛋糕','简约不简单',258.00,'16寸','img/mengdg/m08.jpg'),
(NULL,1,100001428,10,'朝羽鲜奶蛋糕','寓意良辰美景，幸福时刻',198.00,'10寸','img/mengdg/m09.jpg'),
(NULL,1,100001419,10,'慕雅荷鲜奶蛋糕','寓意家庭和睦融洽',198.00,'8寸','img/mengdg/m10.jpg'),
(NULL,1,100001246,10,'8号黑木森林慕斯蛋糕','巧克力与巴旦木杏仁的碰撞',298.00,'10寸','img/mengdg/m11.jpg'),
(NULL,1,10001278,10,'金蜜蜂鲜奶蛋糕','如蜂蜜般奋发向上的精神',198.00,'8寸','img/mengdg/m12.jpg'),
(NULL,1,100001421,10,'灼灼奇花鲜奶蛋糕','高雅从容，庄重大方',198.00,'6寸','img/mengdg/m13.jpg'),
(NULL,1,100000805,10,'纤云弄巧鲜奶蛋糕（迷情蓝美风）','带给你浓郁的蓝莓风味',298.00,'10寸','img/mengdg/m14.jpg'),
(NULL,1,100000003,10,'田园晓美鲜奶蛋糕','田园风光、一览无余、晨晓',198.00,'8寸','img/mengdg/m15.jpg'),
(NULL,1,100001267,10,'坚果之恋鲜奶蛋糕','让冬日暖个胃',198.00,'7寸','img/mengdg/m16.jpg'),
(NULL,1,100000962,10,'以花之名鲜奶蛋糕','让世界上第一个挺你的妈妈成为最幸福的妈妈',258.00,'15寸','img/mengdg/m17.jpg'),
(NULL,1,100001281,10,'多多咖啡鲜奶蛋糕','多多咖啡，越想品质',188.00,'9寸','img/mengdg/m18.jpg'),
(NULL,1,100000020,10,'Nice兔meetyou鲜奶蛋糕','她微笑迎接每天的日出，生活永远快乐着',188.00,'7寸','img/mengdg/m19.jpg'),
(NULL,1,100000791,10,'福鸟咕咕宝鲜奶蛋糕','福鸟到，吉利到！',198.00,'6寸','img/mengdg/m20.jpg'),
(NULL,1,100001415,10,'吟紫鸢鲜奶蛋糕','寓意紫气东来，吉祥又富贵',198.00,'8寸','img/mengdg/m21.jpg'),
(NULL,1,100000007,10,'情有独衷鲜奶当','远古留下的爱情传说，凝聚在崖壁之上',198.00,'7寸','img/mengdg/m22.jpg'),
(NULL,1,100000004,10,'水果之恋鲜奶蛋糕','当黄桃簇拥樱桃，一段爱情正在发生',258.00,'12寸','img/mengdg/m23.jpg'),

(NULL,1,100001416,20,'溪云初起巧克力蛋糕','寓意祥云瑞气，吉祥安康',198.00,'8寸','img/qiaokl/q00.jpg'),
(NULL,1,100000258,20,'优酪奶巧克力','奶酪邂逅提子，浓烈的满足感',50.00,'4寸','img/qiaokl/q01.jpg'),
(NULL,1,100001134,20,'雪贝烧巧克力','能吃的巧克力碎粒',78.00,'6寸','img/qiaokl/q02.jpg'),

(NULL,1,100001246,30,'8号黑木森林慕斯蛋糕','巧克力与巴旦木杏仁的碰撞',298.00,'10寸','img/mengdg/m11.jpg'),
(NULL,1,100000162,30,'清风有心慕斯蛋糕','在盛夏的午后，清风送来一封信',198.00,'7寸','img/musi/s00.jpg'),
(NULL,1,100001442,30,'芝兰玉叶慕斯蛋糕','干酪慕斯，布朗尼饼干底',198.00,'8寸','img/musi/s01.jpg'),
(NULL,1,100000882,30,'琴瑟奕奕慕斯蛋糕（柳橙慕斯）','柳橙香，热带丛林狂欢的篝火',198.00,'6寸','img/musi/s02.jpg'),
(NULL,1,100001083,30,'8号春梅吉祥慕斯蛋糕','新年到，梅花开，梅开眼笑',298.00,'4层','img/musi/s03.jpg'),
(NULL,1,100001253,30,'照红妆慕斯蛋糕（莓果仲夏）','宛如仲夏之夜',198.00,'8寸','img/mengdg/m00.jpg'),
(NULL,1,100000144,30,'玲珑藏心慕斯蛋糕','樱桃成双，高山为证',198.00,'8寸','img/musi/s04.jpg'),
(NULL,1,100000269,30,'小芳慕斯草莓味','三点一刻，最期待的享受',30.00,'4寸','img/musi/s05.jpg'),
(NULL,1,100000253,30,'三角慕斯','三点一刻，最期待的享受',29.00,'微小号','img/musi/s06.jpg'),
(NULL,1,100001277,30,'8号梦世家堤拉米苏','最浓烈的爱',298.00,'6层','img/musi/s07.jpg'),

(NULL,1,100000173,40,'天亦有情鲜奶蛋糕','送给婚礼的祝福，三生三世情缘',1250.00,'8层','img/mengdg/m03.jpg'),
(NULL,1,100000207,40,'百寿延绵鲜奶蛋糕','岁月留下鲜花的晚香，寿星在祝福声中容颜不老',1155.00,'6层','img/mengdg/m07.jpg'),
(NULL,1,100001428,40,'朝羽鲜奶蛋糕','寓意良辰美景，幸福时刻',198.00,'8寸','img/mengdg/m09.jpg'),
(NULL,1,100001419,40,'慕雅荷鲜奶蛋糕','寓意家庭和睦融洽',198.00,'8寸','img/mengdg/m10.jpg'),
(NULL,1,100000962,40,'以花之名鲜奶蛋糕','让世界上第一个挺你的妈妈成为最幸福的妈妈',258.00,'14寸','img/mengdg/m17.jpg'),
(NULL,1,100000118,40,'玫瑰热恋蛋糕','一份玫瑰，一份执手',750.00,'16寸2层','img/mengdg/s24.jpg'),
(NULL,1,100001273,40,'樱香漫漫蛋糕','洁白雅致，嘻嘻点缀',198.00,'8寸','img/mengdg/h00.jpg'),
(NULL,1,100000793,40,'阿祖萌熊蛋糕','看见萌熊在微笑，么么哒~',2980.00,'富贵树110cm','img/mengdg/h01.jpg'),
(NULL,1,100001516,40,'福佑序鲜奶','超适合送给老人，长辈的祝寿蛋糕',398.00,'18寸','img/mengdg/h02.jpg'),

(NULL,1,100000253,50,'三角慕斯','三点一刻，最期待的享受',29.00,'3号','img/musi/s06.jpg'),
(NULL,1,100001134,50,'雪贝烧巧克力','能吃的巧克力碎粒',78.00,'小包装','img/qiaokl/q02.jpg'),
(NULL,1,100000007,50,'情有独衷鲜奶当','远古留下的爱情传说，凝聚在崖壁之上',198.00,'8寸','img/mengdg/m22.jpg'),
(NULL,1,100000791,50,'福鸟咕咕宝鲜奶蛋糕','福鸟到，吉利到！',198.00,'6寸','img/mengdg/m20.jpg'),
(NULL,1,100001278,50,'金蜜蜂鲜奶蛋糕','如蜂蜜般奋发向上的精神',198.00,'10寸','img/mengdg/m12.jpg'),
(NULL,1,100001494,10,'寿山曲芝麻鲜奶蛋糕','寿山犹若南山高，欢声都是长生曲',198.00,'8寸','img/mengdg/m01.jpg');

#轮播图列表
CREATE TABLE meet_banner(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128)
);
#添加轮播图图片
INSERT into meet_banner VALUES(NULL,'img/banner/banner1.jpg');
INSERT into meet_banner VALUES(NULL,'img/banner/banner2.jpg');
INSERT into meet_banner VALUES(NULL,'img/banner/banner3.jpg');
INSERT into meet_banner VALUES(NULL,'img/banner/banner4.jpg');
INSERT into meet_banner VALUES(NULL,'img/banner/banner5.jpg');
INSERT into meet_banner VALUES(NULL,'img/banner/banner6.jpg');


#添加购物车列表
CREATE TABLE meet_shopcar(
  id INT(11) PRIMARY KEY AUTO_INCREMENT, 
  #FOREIGN KEY(lid) REFERENCES life_product(lid), #外键引入life_product表的lid
  price DECIMAL(8,2),  #价格
  count INT(11),    #购买单品数量
  title VARCHAR(255), #商品信息
  stitle VARCHAR(255),
  spec VARCHAR(20),  #商品规格
  pic VARCHAR(128),
  uid INT(11),
  icd INT(11), #商品编号
  FOREIGN KEY(uid) REFERENCES meet_user(uid) #外键引入life_user表的uid
);