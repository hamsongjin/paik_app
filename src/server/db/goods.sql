
/**
   제품리스트
   필드명
   - 카테고리
   - 카테고리 이름

   - 제품 코드
   (001-커피,  002-주스, 003-스무디, 004-음료, 005-빽스치노, 006-티, 007-디저트, 008-블랙펄 )
   - 제품 한글이름
   - 제품 영어이름
   - 제품 이미지
   - 제품 가격
   - 제품 옵션 / 옵션 제한수
*/
CREATE TABLE goods (
   cateCd VARCHAR(10) NOT NULL, 
   goodsNo INT NOT NULL PRIMARY KEY,
   goodsNm VARCHAR(100) NOT NULL,
   goodsNmEn VARCHAR(100) NOT NULL,
   goodsPrice DECIMAL(10, 2) NOT NULL,
   iceFl VARCHAR(2) DEFAULT 'n',
   bestFl VARCHAR(2) DEFAULT 'n',
   newFl VARCHAR(2) DEFAULT 'n',
   soldOutFl VARCHAR(2) DEFAULT 'n'
);

-- 001
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000001, '더블에스프레소','DOUBLE ESPRESSO', 1500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000002, '아메리카노(HOT)','AMERICANO(HOT)', 1500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000003, '아메리카노(ICED)','AMERICANO(ICED)', 2000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000004, '빽''s 아메리카노(ICED)','EXTRA LARGE AMERICANO(ICED)', 3000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000005, '원조커피(HOT)','ORIGINAL MIXED COFFEE(HOT)', 2500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000006, '원조커피 제로슈거(HOT)','ORIGINAL MIXED COFFEE - ZEROSUGAR(HOT)', 2500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000007, '원조커피(ICED)','ORIGINAL MIXED COFFEE(ICED)', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000008, '원조커피 제로슈거(ICED)','ORIGINAL MIXED COFFEE - ZEROSUGAR(ICED)', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000009, '빽''s 원조커피(ICED)','EXTRA LARGE ORIGINAL MIXED COFFEE(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000010, '빽''s 원조커피 제로슈거(ICED)','EXTRA LARGE ORIGINAL MIXED COFFEE - ZEROSUGAR(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000011, '카페모카(HOT)','CAFE MOCHA(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000012, '카페모카(ICED)','CAFE MOCHA(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000013, '빽''s 카페라떼(HOT)','CAFE LATTE(HOT)', 3000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000014, '빽''s 카페라떼(ICED)','CAFE LATTE(ICED)', 3000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000015, '빽''s 빽''s 카페라떼(ICED)','EXTRA LARGE CAFE LATTE(ICED)', 4500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000016, '바닐라라떼(HOT)','VANILLA LATTE(HOT)', 3700.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000017, '바닐라라떼(ICED)','VANILLA LATTE(ICED)', 3700.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000018, '카라멜마키아또(HOT)','CARAMEL MACCHIATO(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000019, '카라멜마키아또(ICED)','CARAMEL MACCHIATO(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000020, '달달연유라떼(HOT)','CONDENSED MILK LATTE(HOT)', 3700.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000021, '달달연유라떼(ICED)','CONDENSED MILK LATTE(ICED)', 3700.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000022, '빽''s 아이스티샷추가','EXTRA LARGE PEACH ICED TEA WITH ESPRESSO', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000023, '아이스티샷추가(아.샷.추)','PEACH ICED TEA WITH ESPRESSO', 3000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000024, '바나나카페라떼(HOT)','BANANA CAFE LATTE(HOT)', 4000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000025, '바나나카페라떼(ICED)','BANANA CAFE LATTE(ICED)', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000026, '아이스크림카페라떼','ICE CREAM CAFE LATTE', 3700.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000027, '아이스크림카페모카','ICE CREAM CAFE MOCHA', 4200.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000028, '아이스크림바닐라라떼','ICE CREAM VANILA LATTE', 4400.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000029, '콜드브루(HOT)','COLD BREW(HOT)', 4000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000030, '콜드브루(ICED)','COLD BREW(ICED)', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000031, '콜드브루라떼(HOT)','COLD BREW LATTE(HOT)', 4500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000032, '콜드브루라떼(ICED)','COLD BREW LATTE(ICED)', 4500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000033, '콜드브루 흑당라떼(HOT)','BLACK SUGAR COLD BREW LATTE(HOT)', 5500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000034, '콜드브루 흑당라떼(ICED)','BLACK SUGAR COLD BREW LATTE(ICED)', 5500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000035, '콜드브루 연유라떼(HOT)','CONDENSED MILK COLD BREW LATTE(HOT)', 5500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000036, '콜드브루 연유라떼(ICED)','CONDENSED MILK COLD BREW LATTE(ICED)', 5500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000037, '디카페인 콜드브루(HOT)','DECAF COLD BREW(HOT)', 4000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000038, '디카페인 콜드브루(ICED)','DECAF COLD BREW(ICED)', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000039, '디카페인 콜드브루라떼(HOT)','DECAF COLD BREW LATTE(HOT)', 4500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000040, '디카페인 콜드브루라떼(ICED)','DECAF COLD BREW LATTE(ICED)', 4500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000041, '디카페인 콜드브루 흑당라떼(HOT)','DECAF BLACK SUGAR COLD BREW LATTE(HOT)', 5500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000042, '디카페인 콜드브루 흑당라떼(ICED)','DECAF BLACK SUGAR COLD BREW LATTE(ICED)', 5500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000043, '디카페인 콜드브루 연유라떼(HOT)','DECAF CONDENSED MILK COLD BREW LATTE(HOT)', 5500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('001', 1000000044, '디카페인 콜드브루 연유라떼(ICED)','DECAF CONDENSED MILK COLD BREW LATTE(ICED)', 5500.00, 'y', 'n', 'n', 'n');

-- 002
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000045, '소울트로닉에이드','SOULTRONIC ADE', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000046, '제주감귤주스','MANDARIN JUICE', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000047, '우리포도주스','GRAPE JUICE', 4500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000048, '블루캔디소다','BLUE CANDY SODA', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000049, '완전블루베리주스','BLUEBERRY JUICE', 4800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000050, '완전딸기주스','STRAWBERRY JUICE', 4300.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000051, '완전파인애플주스','PINEAPPLE JUICE', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000052, '완전망고주스','MANGO JUICE', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000053, '완전토마토주스','TOMATO JUICE', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000054, '딸기에이드','STRAWBERRY ADE', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000055, '깔라만시에이드','CALAMANSI ADE', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000056, '체리콕콕','CHERRY COLA', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000057, '미초(석류)에이드','POMEGRANATE ADE', 3000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000058, '청포도에이드','GREEN GRAPE ADE', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000059, '레모네이드','LEMON ADE', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000060, '자몽에이드','GRAPEFRUIT ADE', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000061, '유자에이드','CITRON ADE', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('002', 1000000062, '복숭아에이드','PEACH ADE', 4000.00, 'y', 'n', 'n', 'n');

-- 003
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000063, '고구마스무디','SWEET POTATO SMOOTHIE', 4300.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000064, '플레인요거트스무디','PLAIN YOGURT SMOOTHIE', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000065, '딸기요거트스무디','STRAWBERRY YOGURT SMOOTHIE', 4300.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000066, '블루베리요거트스무디','BLUEBERRY YOGURT SMOOTHIE', 5300.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000067, '밀크쉐이크','MILK SHAKE', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000068, '블루캔디밀크쉐이크','BLUE CANDY MILK SHAKE', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000069, '바나나밀크쉐이크','BANANA MILK SHAKE', 4300.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000070, '바나나커피쉐이크','BANANA COFFE SHAKE', 4800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000071, '트로피칼팝핑스무디','TRPICAL POPPING SMOOTHIE', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000072, '패션후르츠스무디','FASHION FRUITS SMOOTHIE', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000073, '망고패션스무디','MANGO FASHION SMOOTHIE', 4000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000074, '퐁당치노(바닐라)','PONGDANG CCINO(VANILLA)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000075, '퐁당치노(원조커피)','PONGDANG CCINO(ORIGINAL MIXED COFFEE)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('003', 1000000076, '퐁당치노(미숫가루)','PONGDANG CCINO(MISUTGARU)', 3800.00, 'n', 'n', 'n', 'n');

-- 004
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000077, '뱅쇼(HOT)','VIN CHAUD(HOT)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000078, '뱅쇼(ICED)','VIN CHAUD(ICED)', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000079, '고구마라떼(HOT)','SWEET POTATO LATTE(HOT)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000080, '고구마라떼(ICED)','SWEET POTATO LATTE(ICED)', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000081, '꿀밤라떼(HOT)','MARRON LATTE(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000082, '꿀밤라떼(ICED)','MARRON LATTE(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000083, '아이스크러시 오렌지','ICE CRUSH ORANGE', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000086, '아이스크러시 파인애플','ICE CRUSH PINEAPPLE', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000087, '딸기라떼(ICED)','STRAWBERRY LATTE(ICED)', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000088, '초코라떼(HOT)','CHOCO LATTE(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000089, '초코라떼(ICED)','CHOCO LATTE(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000090, '빽사이즈 초코라떼(ICED)','EXTRA LARGE CHOCO LATTE', 5000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000091, '녹차라떼(HOT)','GREEN TEA LATTE(HOT)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000092, '녹차라떼(ICED)','GREEN TEA LATTE(ICED)', 3800.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000093, '수정과(HOT)','SUJEONGGWA(HOT)', 2500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000094, '수정과(ICED)','SUJEONGGWA(ICED)', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000096, '식혜','SIKHYE', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000097, '아이스미초(석류)','POMEGRANATE ICED TEA', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000098, '청포도플라워','GREEN GRAPE DRINK', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000099, '토피넛라떼(HOT)','TOFFEE NUT LATTE(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000100, '토피넛라떼(ICED)','TOFFEE NUT LATTE(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000101, '민트초코라떼(HOT)','MINT CHOCO LATTE(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000102, '민트초코라떼(ICED)','MINT CHOCO LATTE(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000103, '미숫가루','MISUTGARU', 2700.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000104, '미숫가루(우유)','MISUTGARU(MILK)', 3700.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000105, '미숫가루(두유)','MISUTGARU(SOY MILK)', 4200.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000106, '바나나라떼(HOT)','BANANA LATTE(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('004', 1000000107, '바나나라떼(ICED)','BANANA LATTE(ICED)', 3500.00, 'y', 'n', 'n', 'n');

-- 005
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000108, '초코빽스치노(베이직)','CHOCO PAIK''S CCINO(BASIC)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000109, '초코빽스치노(소프트)','CHOCO PAIK''S CCINO(SOFT)', 4300.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000110, '딸기빽스치노(베이직)','STRAWBERRY PAIK''S CCINO(BASIC)', 4000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000111, '딸기빽스치노(소프트)','STRAWBERRY PAIK''S CCINO(SOFT)', 4500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000112, '딸기바나나빽스치노(베이직)','STRAWBERRY & BANANA PAIK''S CCINO(BASIC)', 4000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000113, '딸기바나나빽스치노(소프트)','STRAWBERRY & BANANA PAIK''S CCINO(SOFT)', 4500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000114, '초코바나나빽스치노(베이직)','CHOCO & BANANA PAIK''S CCINO(BAISC)', 4000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000115, '초코바나나빽스치노(소프트)','CHOCO & BANANA PAIK''S CCINO(SOFT)', 4500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000116, '원조빽스치노(베이직)','ORIGINAL MIXED COFFEE PAIK''S CCINO(BASIC)', 3300.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000117, '원조빽스치노(소프트)','ORIGINAL MIXED COFFEE PAIK''S CCINO(SOFT)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000118, '피스타치오빽스치노(베이직)','PISTACHIO PAIK''S CCINO(BASIC)', 4500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000119, '피스타치오빽스치노(소프트)','PISTACHIO PAIK''S CCINO(SOFT)', 5000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000120, '민트초코빽스치노(베이직)','MINT CHOCO PAIK''S CCINO(BASIC)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000121, '민트초코빽스치노(소프트)','MINT CHOCO PAIK''S CCINO(SOFT)', 4300.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000122, '쿠키크런치빽스치노(베이직)','COOKIE CRUNCH PAIK''S CCINO(BASIC)', 3800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('005', 1000000123, '쿠키크런치빽스치노(소프트)','COOKIE CRUNCH PAIK''S CCINO(SOFT)', 4300.00, 'n', 'n', 'n', 'n');

-- 006
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000124, '달콤아이스티','PEACH ICED TEA', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000125, '빽사이즈 달콤아이스티(ICED)','EXTRA LARGE PEACH ICED TEA', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000126, '밀크티(HOT)','MILK TEA(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000127, '밀크티(ICED)','MILK TEA(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000128, '자몽티(HOT)','GRAPEFRUIT TEA(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000129, '자몽티(ICED)','GRAPEFRUIT TEA(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000130, '레몬티(HOT)','LEMON TEA(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000131, '레몬티(ICED)','LEMON TEA(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000132, '유자티(HOT)','CITRON TEA(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000133, '유자티(ICED)','CITRON TEA(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000134, '레몬얼그레이티(HOT)','LEMON EARL GREY TEA(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000135, '레몬얼그레이티(ICED)','LEMON EARL GREY TEA(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000136, '오렌지자몽블랙티(HOT)','ORANGE & GRAPEFRUIT BLACK TEA(HOT)', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000137, '오렌지자몽블랙티(ICED)','ORANGE & GRAPEFRUIT BLACK TEA(ICED)', 3500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000138, '깔라만시티(HOT)','CALAMANSI TEA(HOT)', 3000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000139, '깔라만시티(ICED)','CALAMANSI TEA(ICED)', 3000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000140, '페퍼민트티(HOT)','PEPPER MINT TEA(HOT)', 2500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000141, '페퍼민트티(ICED)','PEPPER MINT TEA(ICED)', 2500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000142, '피치우롱스위티(HOT)','PEACH OOLONG SWEET TEA(HOT)', 3000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000143, '피치우롱스위티(ICED)','PEACH OOLONG SWEET TEA(ICED)', 3000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000144, '우롱티(HOT)','OOLONG TEA(HOT)', 2000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000145, '우롱티(ICED)','OOLONG TEA(ICED)', 2000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000146, '황금캐모마일티(HOT)','GOLD CHAMOMILE TEA(HOT)', 2500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('006', 1000000147, '황금캐모마일티(ICED)','GOLD CHAMOMILE TEA(ICED)', 2500.00, 'y', 'n', 'n', 'n');

-- 007
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000148, '쫀득 감자빵','POTATO BREAD', 2800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000149, '쫀득 고구마빵','SWEET POTATO BREAD', 2800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000150, '명란 소금빵','POLLACK ROE SALT BREAD', 3000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000152, '황치즈크럼블머핀','YELLOW CHEESE CRUMBLE MUFFIN', 2700.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000153, '크룽지','CROISSANT NURUNGJI ', 2800.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000154, '못난이생크림카스텔라','CREAM CASTELLA CAKE', 4200.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000155, '노말한소프트','SOFT ICE CREAM', 2000.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000157, '맛카롱(순우유)','MILK MACARON', 2500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000158, '맛카롱(초코크런치)','CHOCOLATE CRUNCH MACARON', 2500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000159, '맛카롱(딸기크런치)','STRAWBERRY CRUNCH MACARON', 2500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000160, '사라다빵','SALAD BREAD', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000161, '소세지빵','SAUSAGE BREAD', 3500.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000162, '빽그램핫도그','100G HOT DOG', 4300.00, 'n', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('007', 1000000164, '크리미단팥빵','CREAMY RED BEAN BUN', 2000.00, 'n', 'n', 'n', 'n');

-- 008
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('008', 1000000169, '블랙펄라떼','BLACK PEARL LATTE', 4000.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('008', 1000000170, '블랙펄카페라떼','BLACK PEARL CAFE LATTE', 4500.00, 'y', 'n', 'n', 'n');
INSERT INTO goods (cateCd, goodsNo, goodsNm, goodsNmEn, goodsPrice, iceFl, newFl, bestFl, soldOutFl) VALUES ('008', 1000000171, '블랙펄밀크티','BLACK PEARL MILK TEA', 4500.00, 'y', 'n', 'n', 'n');