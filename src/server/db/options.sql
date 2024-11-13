/**
   제품 옵션 리스트
   제품 코드
   옵션 리스트
   옵션 제한수
   옵션 가격
*/
CREATE TABLE `options` (
   optNo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   optNm VARCHAR(50) NOT NULL,
   optMaxCnt INT,
   optPrice DECIMAL(10, 2) NOT NULL,
   optType VARCHAR(10) NOT NULL,
   soldOutFl VARCHAR(2) DEFAULT 'n'
);

-- 샷옵션
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('연하게(1샷만)', 0.00, '샷', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('연하게(2샷만)', 0.00, '샷', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('연하게(3샷만)', 0.00, '샷', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('1샷추가', 500.00, '샷', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('2샷추가', 1000.00, '샷', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('3샷추가', 1500.00, '샷', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('4샷추가', 2000.00, '샷', 'n');
-- 커피 토핑옵션
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('펄추가', 1200.00, '토핑',  2, 'y');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('헤이즐넛시럽 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('흑당시럽 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('블루쿠라소시럽 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('나타드코코 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('진하게(파우더추가)', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('모카파우더 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('바닐라파우더 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('녹차파우더 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('민트초코파우더 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('피스타치오파우더 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('요거트파우더 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('밀크파우더 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('딸기베이스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('복숭아베이스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('레몬베이스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('쿨라임베이스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('연유 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('망고 추가', 1000.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('콜드브루 원액추가', 1000.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('디카페인 콜드브루 원액추가', 1000.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('라임슬라이스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('카라멜소스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('바나나소스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('청포도소스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('자몽소스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('유자소스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('깔라만시소스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('초코소스 추가', 500.00, '토핑',  2, 'n');
INSERT INTO `options` (optNm, optPrice, optType, optMaxCnt, soldOutFl) VALUES ('마시멜로우 추가', 500.00, '토핑',  2, 'n');
-- 선택옵션
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('아이스크림 토핑 추가', 800.00, '선택', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('물 25ml 적게', 0.00, '선택', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('두유로 변경', 500.00, '선택', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('탄산으로 변경', 500.00, '선택', 'n');
INSERT INTO `options` (optNm, optPrice, optType, soldOutFl) VALUES ('생크림 제외', 0.00, '선택', 'n');