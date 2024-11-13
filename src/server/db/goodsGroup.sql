/**

*/
CREATE TABLE `goodsGroup` (
   cateCd VARCHAR(10) NOT NULL PRIMARY KEY, 
   cateNm VARCHAR(50) NOT NULL
);

INSERT INTO `goodsGroup` (cateCd, cateNm) VALUES ('001', '커피');
INSERT INTO `goodsGroup` (cateCd, cateNm) VALUES ('002', '주스/에이드');
INSERT INTO `goodsGroup` (cateCd, cateNm) VALUES ('003', '스무디/쉐이크');
INSERT INTO `goodsGroup` (cateCd, cateNm) VALUES ('004', '음료');
INSERT INTO `goodsGroup` (cateCd, cateNm) VALUES ('005', '빽스치노');
INSERT INTO `goodsGroup` (cateCd, cateNm) VALUES ('006', '티');
INSERT INTO `goodsGroup` (cateCd, cateNm) VALUES ('007', '디저트');
INSERT INTO `goodsGroup` (cateCd, cateNm) VALUES ('008', '블랙펄');
