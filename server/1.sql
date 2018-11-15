DROP DATABASE IF EXISTS kkmh;
CREATE DATABASE kkmh CHARSET=utf8;

//1.图片轮播图表
CREATE TABLE imagelist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(255)
);
INSERT INTO imagelist VALUES(null,'http://127.0.0.1:3000/assets/lunbo/dinv.jpg');
INSERT INTO imagelist VALUES(null,'http://127.0.0.1:3000/assets/lunbo/erduo.jpg');
INSERT INTO imagelist VALUES(null,'http://127.0.0.1:3000/assets/lunbo/laoge.jpg');
INSERT INTO imagelist VALUES(null,'http://127.0.0.1:3000/assets/lunbo/liuyue.jpg');

CREATE TABLE tuijian_list(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(255),
  pro VARCHAR(200),
  title VARCHAR(32)
);
INSERT INTO tuijian_list VALUES(null,'http://127.0.0.1:3000/assets/inner/lang.jpg',"超劲爆的娱乐圈八卦内幕","狼的谎言");
INSERT INTO tuijian_list VALUES(null,'http://127.0.0.1:3000/assets/inner/ku.jpg',"将爱隐藏，便不会受伤？","《给我哭》——辞浅而情深");
INSERT INTO tuijian_list VALUES(null,'http://127.0.0.1:3000/assets/inner/gongjue.jpg',"短命女配缠上腹黑公爵","公爵的契约未婚妻");
INSERT INTO tuijian_list VALUES(null,'http://127.0.0.1:3000/assets/inner/zhichi.jpg',"超man兵哥与他的娇羞男模","咫尺之间");

CREATE TABLE host_list(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(255),
  lei VARCHAR(200),
  title VARCHAR(32)
);
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-1/jian.jpg',"恋爱 校园","渐进的心跳");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-1/heiye.jpg',"恋爱 奇幻 剧情","黑夜有所斯");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/inner/zhichi.jpg',"恋爱 彩虹","咫尺之间");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-1/jiechu.jpg',"彩虹","过度接触");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-1/lengmian.jpg',"恋爱 奇幻","阿黛尔的冷面公爵");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-1/xihuanf.jpg',"日常 恋爱","我不喜欢这世界，我只喜欢你");

INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-2/kuanghou.jpg',"恋爱 奇幻 古风","神厨狂后");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-2/shang.jpg',"恋爱 都市 总裁","错爱成殇");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-2/lang.jpg',"恋爱 奇幻","狼族少年");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-2/lianai.jpg',"彩虹 都市 总裁","恋爱编程中");

INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-2/41.jpg',"恋爱 爆笑","41厘米的超幸福");
INSERT INTO host_list VALUES(null,'http://127.0.0.1:3000/assets/log-2/hunbu.jpg',"日常 都市 总裁","婚不离情");


CREATE TABLE books(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(255),
  title VARCHAR(32),
  author VARCHAR(32),
  zan DECIMAL(10,2),
  pinglun INT,
  jianjie VARCHAR(255)
);

INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/tiamei.jpg',"甜美的咬痕","锐思+伊凯",1.86,608,"多次登上每周排行榜第一名宝座！ 不可一世的血族王子，恋上卑微血仆少女。一场禁锢与占有的鼠猫游戏，一场人类与血族的对抗，真爱是否能冲破束缚最终在一起？【独家/周六更新 责编：珉xi】");
INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/jiaonang.jpg',"DOLO命运胶囊","兔街子（主笔）+快看漫画团队（编剧）",55.51,3006,"不够漂亮也不够聪明，真的只能做最底端的人吗？如果有一种胶囊，能让你逆袭命运，你愿意付出最珍贵的东西去交换它吗？【独家/每周四更新 责编：林早上】");
INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/jiaonang.jpg',"渐近的心跳","橘枳",3.82,290,"年度看了最想谈恋爱漫画！！一次意外的接触，令孤僻内向的刺猬少女苏叶，对于朝夕相处的完美竹马郑树第一次产生了不一样的感觉。两人之间原本熟悉的言语和动作竟令自己心跳加速。男女之间真的存在着纯洁的友谊吗？【独家/每周日更新 责编：丝桐】");
INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/xiaohe.jpg',"成也萧河","壳小杀（主笔）＋左小翎（编剧）",6.14,639,"医学系第一男神在游戏中吊打全服通缉的第一女贼！意外发现，这个众人唾弃女贼竟是电竞圈曾经的第一女赛手！她为何改名换姓沦为一介女贼？线下不断陌路擦肩、误会连连的两人，又会在电竞场闯出怎样的天地？……");
INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/xindong.jpg',"怦然心动","kid岁",227.20,16346,"少男少女同住一个屋檐下，一同历经青春的懵懂和烦恼。画风温馨的超人气少女漫，感受青春悸动的萌芽，这一部就够");
INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/nanpiao.jpg',"我男票是锦衣卫","虹君）",120.9,11151,"人气古风穿越巨制，俏皮少女与傲娇锦衣卫的甜虐之恋.。上天注定的七世情缘，他转世轮回只为和她再次相遇，她追随他穿越千年……画风超级赞的古风恋爱");
INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/xiaohuli.jpg',"捡到只小狐狸","通幽/夏天岛+叨叨君/夏天岛",171.31,11776,"高富帅暖男捡到只性别不明的软萌小狐狸，小狐狸为爱变身亭亭玉立的少女与他再续前缘！两人爱的结晶，哥哥天耀与妹妹天星，又将展开怎样的故事");

INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/nvjuren.jpg',"女巨人也要谈恋爱","清英",146.49,12594,"身高180+的软妹恋上169的冰山总裁。谁说女追男隔层纱？女巨人的甜虐追爱史，扑倒冰山总裁不是梦！独特的设定，和其他充满套路的总裁漫不一样，看完第一话就停不下来！都市浪漫轻喜剧神作！");

INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/emo.jpg',"恶魔的耳朵","瓶瓶君（主笔）+夏希（主笔）+快看漫画团队（编剧）",40.35,28888,"高冷的恶魔总裁患有幻听，总能听见周围人内心的各种隐藏的想法，痛苦不堪。一次无意间听到女主的歌声，那一刻全世界嘈杂的噪音都消失了，而后只要听到女主的歌声，总裁就会变成一个温顺萌萌的小男生……一段搞笑温馨的故事由此展开【独家/每周三更新 责编：哲亚】");

INSERT INTO books VALUES(null,'http://127.0.0.1:3000/assets/book/mitang.jpg',"蜜糖陷阱-《感谢你是爱我的》系列4","路边张三",55.62,5159,"每个人都或多或少存在缺点，但是爱我们的人都一并接受了，感谢对方，一直都爱着不完美的我们。系列第4部《蜜糖陷阱》里，因一个玩笑赌注，人气女王玩心大起，狂撩帅气宅男，在不断调戏中却沦陷于宅男炽热的真心。这场诱人的爱情游戏，到底是谁落入了谁的甜蜜陷阱？【独家/每周六更新 责编：哲亚】");

CREATE TABLE itemize(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lei VARCHAR(5)
)
INSERT INTO itemize VALUES(null,"全部");
INSERT INTO itemize VALUES(null,"恋爱");
INSERT INTO itemize VALUES(null,"古风");
INSERT INTO itemize VALUES(null,"奇幻");
INSERT INTO itemize VALUES(null,"校园");
INSERT INTO itemize VALUES(null,"都市");
INSERT INTO itemize VALUES(null,"彩虹");
INSERT INTO itemize VALUES(null,"少年");
INSERT INTO itemize VALUES(null,"总裁");
INSERT INTO itemize VALUES(null,"灵异");
INSERT INTO itemize VALUES(null,"正能量");
INSERT INTO itemize VALUES(null,"畅销");
INSERT INTO itemize VALUES(null,"完结");

CREATE TABLE book_detail(
  id INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(255),
  title VARCHAR(32),
  shijian VARCHAR(32),
  zan INT 
)
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/55.jpg","誓约篇 第55话 爱与和平","2018-11-03",52 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/54.jpg","誓约篇 第54话 重逢的喜悦","2018-10-27",55 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/53.jpg","誓约篇 第53话 主动出击的爱","2018-10-03",62 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/52.jpg","誓约篇 第52话 我被拒绝了？","2018-11-03",52 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/51.jpg","誓约篇 第51话 我只要你负责","2018-11-03",52 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/50.jpg","誓约篇 第50话 逸的魅力","2018-11-03",52 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/49.jpg","誓约篇 第49话 其实我喜欢你","2018-11-03",52 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/48.jpg","誓约篇 第48话 壁咚VS壁咚","2018-11-03",52 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/47.jpg","誓约篇 第47话 计中计！","2018-11-03",52 );
INSERT INTO book_detail VALUES(null,"http://127.0.0.1:3000/assets/detail/46.jpg","誓约篇 第46话 托福给我吧","2018-11-03",52 );