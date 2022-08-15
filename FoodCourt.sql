/* 푸트코트 데이터베이스 설계*/

-- [테이블 생성]
 
CREATE TABLE CORNER (
	CPHONE CHAR(20) NOT NULL, 
	CTYPE CHAR(20),
	BESTMENU CHAR(20),
	CTYPENO INT,
	PRIMARY KEY(CPHONE)
);

CREATE TABLE USER_INFO(
	UPHONE CHAR(20) NOT NULL,
	PASSWORD CHAR(20) NOT NULL,
	NAME VARCHAR(20), 
	AGE INT, 
	SEX INT, 
	CITY CHAR(20), 
	KU CHAR(20),
	DONG CHAR(20),
	CARDREGISTER CHAR(10),
	ACCOUNTREGISTER CHAR(10),
	PRIMARY KEY(UPHONE)
);

CREATE TABLE CHINESE(
	Chno INT NOT NULL,
	Chmenu CHAR(30) NOT NULL,
	Chprice INT NOT NULL,
	Chexplain CHAR(30), 
	Chphone CHAR(20),
	PRIMARY KEY(Chno),
	FOREIGN KEY(CHPHONE) REFERENCES CORNER(CPHONE)
);

CREATE TABLE KOREAN (
	Kono INT NOT NULL,
	Komenu CHAR(30) NOT NULL, 
	Koprice INT NOT NULL,
	Koexplain CHAR(30),
	Kophone CHAR(20),
	PRIMARY KEY(Kono),
	FOREIGN KEY(KOPHONE) REFERENCES CORNER(CPHONE)
);

CREATE TABLE CUTLET (
	Cuno INT NOT NULL, 
	Cumenu CHAR(30) NOT NULL, 
	Cuprice INT NOT NULL, 
	Cuexplain CHAR(30), 
	Cuphone CHAR(20),
	PRIMARY KEY(Cuno),
	FOREIGN KEY(CUPHONE) REFERENCES CORNER(CPHONE)
);

CREATE TABLE SANDWICH (
	Sano INT NOT NULL, 
	Samenu CHAR(30) NOT NULL, 
	Saprice INT NOT NULL, 
	Saexplain CHAR(30),
	Saphone CHAR(20),
	PRIMARY KEY(Sano),
	FOREIGN KEY(SAPHONE) REFERENCES CORNER(CPHONE)
);

CREATE TABLE COFFEE (
	Cono INT NOT NULL,
	Comenu CHAR(30) NOT NULL,
	Coprice INT NOT NULL, 
	Coexplain CHAR(30), 
	Cophone CHAR(20),
	PRIMARY KEY(Cono),
	FOREIGN KEY(COPHONE) REFERENCES CORNER(CPHONE)
);

CREATE TABLE ORDER_INFO (
	ORDERNO INT,
    UPHONE CHAR(20) NOT NULL,
    CPHONE CHAR(20) NOT NULL,
    MENUNO INT,
	AMOUNT INTEGER CHECK(AMOUNT<11), 
	HOUR INTEGER, 
	PACK CHAR(3),
	DAY INT, 
	REQUEST VARCHAR(30),
	PAY CHAR(5),
	PRIMARY KEY(ORDERNO),
    FOREIGN KEY(UPHONE) REFERENCES USER_INFO(UPHONE),
    FOREIGN KEY(CPHONE) REFERENCES CORNER(CPHONE)
);


CREATE TABLE REVIEW (
    RENO INT NOT NULL, 
    ORDERNO INT NOT NULL,
    UPHONE CHAR(20) NOT NULL,
    RESCORE INT CHECK(RESCORE<11),
    RECONTENT CHAR(100),
    PRIMARY KEY(RENO, ORDERNO),
    FOREIGN KEY(UPHONE) REFERENCES USER_INFO(UPHONE)
);

CREATE TABLE ALARM (
	Alarmno INT NOT NULL,
	Done CHAR(35), 
	Uphone CHAR(20) NOT NULL, 
	Cphone CHAR(20) NOT NULL,
	PRIMARY KEY(Alarmno),
	FOREIGN KEY(Uphone) REFERENCES USER_INFO (Uphone),
	FOREIGN KEY(Cphone) REFERENCES CORNER (Cphone)
);

-- [데이터 삽입]

-- Corner Information 
INSERT INTO CORNER VALUES('02-872-6134', '중국집', '짜장면', 1);
INSERT INTO CORNER VALUES('02-871-6132', '한식집', '김치찌개', 2);
INSERT INTO CORNER VALUES('02-852-3133', '왕돈까스', '왕돈까스', 3);
INSERT INTO CORNER VALUES('02-192-6574', '샌드위치', '햄 샌드위치', 4);
INSERT INTO CORNER VALUES('02-352-6014', '커피 전문점', '아메리카노', 5);

-- User Information
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7570-9468', 'mnb149', '김서영', 22, 1, 'seoul', 'gwuanak', 'silim', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7328-9429', '93b849', '지대건', 36, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1030-6863', '109t9', '이라영', 12, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6870-9098', '784ll9', '강한솔', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7090-9008', 'q1849', '김유나', 24, 1, 'seoul', 'donjak', 'daebang', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1220-9477', '93b849', '지대완', 36, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1870-3463', '109t9', '이하영', 12, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6570-6098', '784ll9', '정한솔', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7520-9529', '93b849', '김대추', 36, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1670-9462', '109t9', '이영', 12, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6970-9078', '784ll9', '강한별', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9970-3428', '33e3949', '유경석', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7470-1768', '759r49', '조세호', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6693-0384', '192849', '김석열', 70, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9590-3968', '33e3949', '유재석', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9870-1288', '759r49', '이세호', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9893-0354', '192849', '김석영', 40, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7419-9188', 'yy2849', '이이화', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1270-1768', '19hj49', '김성일', 51, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7994-6763', '19mm49', '김도토리', 40, 0, 'jeju', null, 'ildo', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-4220-0488', '192849', '김지민', 41, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6540-4464', 'wy92849', '송정은', 24, 1, 'seoul', 'gangnam', 'banpo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-3330-9977', '9ksy849', '은성연', 29, 1, 'incheon', 'jung', 'dongincheon', 'yes', 'yes'); 
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7629-9886', 'yy2849', '김이화', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1173-9761', '19hj49', '김성연', 51, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9870-1238', '759r49', '조호', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-3493-0373', '192849', '김열', 20, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7422-9828', 'yy2849', '이화', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1172-9728', '19hj49', '성일', 21, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7499-9808', 'yy2849', '최이화', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1770-9778', '19hj49', '김성훈', 51, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2990-8768', '19mm49', '김승리', 40, 0, 'jeju', null, 'ildo', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2320-0188', '192849', '박지연', 31, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-3320-9420', '93b849', '지대훈', 26, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1170-0463', '109t9', '이라은', 12, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6780-9098', '784ll9', '장한솔', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7429-9889', 'yy2849', '이정화', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-5170-9758', '19hj49', '김성한', 31, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7929-9588', 'yy2849', '이정화', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-0170-9008', '19hj49', '정현일', 41, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2990-6748', '19mm49', '김혁리', 30, 0, 'jeju', null, 'ildo', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1220-0911', '192849', '박지윤', 41, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9510-3118', '33e3949', '강재석', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7403-0334', '192849', '유열', 20, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6610-6467', '284kyn9', '이강남', 38, 0, 'bucheon', 'wonmi', 'wonmi1', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7770-9008', '784ll9', '김솔', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9370-3448', '33e3949', '유영', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2289-0978', '192849', '강지민', 21, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-5770-3488', '33e3949', '김상석', 20, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7800-1208', '759r49', '조영호', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7769-9496', '2849', '유라연', 19, 1, 'bucheon', 'wonmi', 'wonmi2', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-8870-1299', '759r49', '곽세호', 27, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7443-0344', '192849', '김형열', 70, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1570-3268', '33e3949', '유연석', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2870-5268', '759r49', '조세진', 47, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7499-0379', '192849', '김석희', 73, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7900-6408', '284kyn9', '김강북', 48, 0, 'bucheon', 'wonmi', 'wonmi1', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6780-9088', '784ll9', '석영솔', 19, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9590-3668', '33e3949', '정재석', 20, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7800-1238', '759r49', '백인호', 27, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9870-1828', '759r49', '안수철', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7993-0334', '192849', '정렬', 38, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7911-2468', '284kyn9', '김창호', 35, 0, 'bucheon', 'wonmi', 'wonmi1', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6870-4498', '784ll9', '김윤아', 27, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9900-3478', '33e3949', '고아라', 20, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7070-1267', '759r49', '김현아', 33, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7771-9459', '2849', '김성희', 20, 1, 'bucheon', 'wonmi', 'wonmi2', 'no', 'no');

-- Menu Information about each Corner
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(1, '짜장면', 4000, '짜장면 입니다.', '02-872-6134'); 
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(2, '짬뽕', 5000, '짬뽕 입니다.', '02-872-6134'); 
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(3, '탕수육', 10000, '탕수육 입니다.', '02-872-6134'); 
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(4, '칠리새우', 6000, '칠리새우 입니다.', '02-872-6134'); 
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(5, '볶음밥', 6000, '볶음밥 입니다.', '02-872-6134'); 

INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(1, '김치찌개', 4000, '김치찌개 입니다.', '02-871-6132');
INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(2, '된장찌개', 4000, '된장찌개 입니다.', '02-871-6132');
INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(3, '김치볶음밥', 4000, '김치볶음밥 입니다.', '02-871-6132');
INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(4, '미역국', 5000, '미역국 입니다.', '02-871-6132');
INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(5, '닭볶음탕', 6000, '닭볶음탕 입니다.', '02-871-6132');

INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(1, '기본 돈까스', 6000, '기본 돈까스 입니다.', '02-852-3133');
INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(2, '왕 돈까스', 6000, '왕 돈까스 입니다.', '02-852-3133');
INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(3, '매운 돈까스', 6000, '매운 돈까스 입니다.', '02-852-3133');
INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(4, '샐러드', 3000, '샐러드 입니다.', '02-852-3133');
INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(5, '스프', 2000, '스프 입니다.', '02-852-3133');

INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(1, '햄 샌드위치', 5000, '햄 입니다.', '02-192-6574');
INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(2, '치즈 샌드위치', 5000, '치즈 입니다.', '02-192-6574');
INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(3, '베이컨 샌드위치', 5000, '베이컨 입니다.', '02-192-6574');
INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(4, '야채 샌드위치', 5000, '야채 입니다.', '02-192-6574');
INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(5, '에그 샌드위치', 5000, '에그 입니다.', '02-192-6574');

INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(1, '아메리카노', 3000, '아메리카노 입니다.', '02-352-6014');
INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(2, '카푸치노', 4000, '카푸치노 입니다.', '02-352-6014');
INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(3, '카페라떼', 4000, '카페라떼 입니다.', '02-352-6014');
INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(4, '에스프레소', 2000, '에스프레소 입니다.', '02-352-6014');
INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(5, '밀크티', 5000, '밀크티 입니다.', '02-352-6014');

-- Monday Order
INSERT INTO ORDER_INFO VALUES(1, '010-1030-6863', '02-872-6134', 5, 2, 8, 'yes', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(2, '010-6870-9098', '02-871-6132', 2, 1, 9, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(3, '010-7090-9008', '02-192-6574', 1, 2, 9, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(4, '010-1220-9477', '02-852-3133', 4, 1, 10, 'yes', 1, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(5, '010-1870-3463', '02-352-6014', 3, 2, 11, 'no', 1, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(6, '010-6570-6098', '02-192-6574', 1, 2, 12, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(7, '010-7520-9529', '02-852-3133', 5, 1, 12, 'yes', 1, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(8, '010-1670-9462', '02-852-3133', 4, 1, 12, 'yes', 1, '수저많이', 'card');
INSERT INTO ORDER_INFO VALUES(9, '010-6970-9078', '02-352-6014', 3, 2, 13, 'no', 1, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(10, '010-9970-3428', '02-192-6574', 1, 2, 14, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(11, '010-7570-9468', '02-872-6134', 3, 2, 14, 'yes', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(12, '010-7328-9429', '02-852-3133', 4, 1, 14, 'yes', 1, '비닐장갑', 'cash');
INSERT INTO ORDER_INFO VALUES(13, '010-7470-1768', '02-352-6014', 3, 2, 14, 'no', 1, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(14, '010-6693-0384', '02-192-6574', 5, 2, 15, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(15, '010-9590-3968', '02-852-3133', 4, 4, 15, 'yes', 1, '현관앞에', 'card');
INSERT INTO ORDER_INFO VALUES(16, '010-9870-1288', '02-852-3133', 4, 1, 16, 'yes', 1, '수저', 'cash');
INSERT INTO ORDER_INFO VALUES(17, '010-9893-0354', '02-352-6014', 3, 2, 17, 'no', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(18, '010-7419-9188', '02-852-3133', 4, 1, 17, 'yes', 1, '잘라주세요', 'cash');
INSERT INTO ORDER_INFO VALUES(19, '010-1270-1768', '02-352-6014', 3, 2, 17, 'no', 1, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(20, '010-7994-6763', '02-192-6574', 1, 2, 17, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(21, '010-4220-0488', '02-352-6014', 3, 2, 18, 'no', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(22, '010-6540-4464', '02-192-6574', 1, 2, 19, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(23, '010-3330-9977', '02-872-6134', 3, 2, 19, 'yes', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(24, '010-7629-9886', '02-192-6574', 1, 2, 20, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(25, '010-1173-9761', '02-852-3133', 4, 1, 20, 'yes', 1, '수저 없어도 됨', 'cash');
INSERT INTO ORDER_INFO VALUES(26, '010-9870-1238', '02-871-6132', 2, 8, 20, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(27, '010-7422-9828', '02-852-3133', 4, 1, 20, 'yes', 1, '젓가락 많이', 'cash');
INSERT INTO ORDER_INFO VALUES(28, '010-1172-9728', '02-852-3133', 5, 9, 20, 'yes', 1, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(29, '010-3493-0373', '02-192-6574', 1, 2, 21, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(30, '010-7499-9808', '02-872-6134', 3, 2, 21, 'yes', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(31, '010-1770-9778', '02-872-6134', 1, 2, 21, 'yes', 1, '수저 많이', 'cash');
INSERT INTO ORDER_INFO VALUES(32, '010-2990-8768', '02-852-3133', 4, 10, 21, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(33, '010-2320-0188', '02-871-6132', 2, 1, 21, 'no', 1, 'n', 'card');

-- Tuesday Order
INSERT INTO ORDER_INFO VALUES(34, '010-3320-9420', '02-352-6014', 2, 2, 9, 'no', 2, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(35, '010-1170-0463', '02-852-3133', 1, 1, 9, 'yes', 2, '잘라주세요', 'cash');
INSERT INTO ORDER_INFO VALUES(36, '010-6780-9098', '02-352-6014', 5, 2, 9, 'no', 2, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(37, '010-7429-9889', '02-192-6574', 5, 2, 10, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(38, '010-2990-6748', '02-352-6014', 4, 2, 10, 'yes', 2, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(39, '010-7403-0334', '02-872-6134', 1, 2, 10, 'yes', 2, '감사합니다', 'card');
INSERT INTO ORDER_INFO VALUES(40, '010-5170-9758', '02-871-6132', 2, 1, 11, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(41, '010-9510-3118', '02-192-6574', 3, 2, 11, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(42, '010-0170-9008', '02-192-6574', 1, 2, 12, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(43, '010-1220-0911', '02-192-6574', 3, 2, 12, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(44, '010-7929-9588', '02-852-3133', 4, 1, 12, 'yes', 2, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(45, '010-6610-6467', '02-352-6014', 1, 2, 12, 'no', 2, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(46, '010-7770-9008', '02-192-6574', 1, 2, 12, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(47, '010-9370-3448', '02-852-3133', 2, 9, 12, 'yes', 2, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(48, '010-2289-0978', '02-192-6574', 1, 2, 13, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(49, '010-5770-3488', '02-852-3133', 5, 1, 14, 'yes', 2, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(50, '010-7800-1208', '02-352-6014', 5, 1, 15, 'yes', 2, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(51, '010-7769-9496', '02-871-6132', 2, 8, 16, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(52, '010-8870-1299', '02-852-3133', 4, 1, 17, 'yes', 2, '젓가락 많이', 'cash');
INSERT INTO ORDER_INFO VALUES(53, '010-7443-0344', '02-852-3133', 3, 9, 17, 'yes', 2, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(54, '010-1570-3268', '02-192-6574', 2, 2, 17, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(55, '010-2870-5268', '02-872-6134', 3, 2, 18, 'yes', 2, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(56, '010-7499-0379', '02-192-6574', 2, 2, 18, 'no', 2, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(57, '010-7900-6408', '02-192-6574', 1, 2, 19, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(58, '010-6780-9088', '02-872-6134', 3, 2, 19, 'yes', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(59, '010-9590-3668', '02-352-6014', 4, 2, 19, 'no', 2, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(60, '010-7800-1238', '02-192-6574', 4, 2, 19, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(61, '010-9870-1238', '02-872-6134', 3, 2, 19, 'yes', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(62, '010-7993-0334', '02-192-6574', 4, 2, 20, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(63, '010-7911-2468', '02-192-6574', 1, 2, 20, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(64, '010-6870-4498', '02-852-3133', 4, 1, 20, 'yes', 2, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(65, '010-9900-3478', '02-352-6014', 3, 2, 21, 'no', 2, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(66, '010-7070-1267', '02-192-6574', 1, 2, 22, 'no', 2, 'n', 'cash');

-- Wednesday Order
INSERT INTO ORDER_INFO VALUES(67, '010-7900-6408', '02-852-3133', 5, 9, 8, 'yes', 3, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(68, '010-6780-9088', '02-192-6574', 5, 8, 21, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(69, '010-9590-3668', '02-192-6574', 1, 2, 9, 'no', '3', 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(70, '010-7800-1238', '02-852-3133', 4, 1, 10, 'yes', 3, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(71, '010-9870-1238', '02-352-6014', 3, 2, 10, 'no', 3, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(72, '010-7520-9529', '02-192-6574', 3, 2, 11, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(73, '010-1670-9462', '02-852-3133', 3, 2, 11, 'yes', 3, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(74, '010-6970-9078', '02-872-6134', 5, 2, 11, 'yes', 3, '조심히 오세요', 'card');
INSERT INTO ORDER_INFO VALUES(75, '010-9970-3428', '02-871-6132', 2, 1, 11, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(76, '010-7570-9468', '02-192-6574', 1, 2, 11, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(77, '010-7422-9828', '02-852-3133', 4, 1, 12, 'yes', 3, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(78, '010-1172-9728', '02-352-6014', 2, 2, 12, 'no', 3, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(79, '010-9870-1288', '02-192-6574', 1, 2, 12, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(80, '010-9893-0354', '02-852-3133', 2, 1, 12, 'yes', 3, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(81, '010-7419-9188', '02-192-6574', 3, 2, 13, 'no', 3, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(82, '010-1270-1768', '02-192-6574', 3, 2, 13, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(83, '010-7994-6763', '02-192-6574', 3, 2, 14, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(84, '010-4220-0488', '02-852-3133', 4, 1, 14, 'yes', 3, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(85, '010-7993-0334', '02-871-6132', 2, 1, 14, 'yes', 3, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(86, '010-7429-9889', '02-871-6132', 2, 8, 15, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(87, '010-2990-6748', '02-852-3133', 2, 1, 15, 'yes', 3, '젓가락 많이', 'cash');
INSERT INTO ORDER_INFO VALUES(88, '010-7403-0334', '02-192-6574', 5, 2, 15, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(89, '010-1030-6863', '02-852-3133', 4, 1, 16, 'yes', 3, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(90, '010-6870-9098', '02-352-6014', 5, 2, 16, 'no', 3, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(91, '010-7090-9008', '02-192-6574', 1, 2, 17, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(92, '010-1220-9477', '02-852-3133', 5, 9, 17, 'yes', 3, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(93, '010-1870-3463', '02-192-6574', 3, 2, 18, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(94, '010-6570-6098', '02-192-6574', 2, 2, 19, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(95, '010-6540-4464', '02-872-6134', 3, 2, 19, 'yes', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(96, '010-1270-1768', '02-852-3133', 4, 1, 20, 'yes', 3, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(97, '010-1170-0463', '02-852-3133', 4, 1, 20, 'yes', 3, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(98, '010-3330-9977', '02-852-3133', 4, 1, 20, 'yes', 3, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(99, '010-7629-9886', '02-852-3133', 4, 1, 21, 'yes', 3, '수저 없이', 'card');

-- Thursday Order
INSERT INTO ORDER_INFO VALUES(100, '010-1173-9761', '02-192-6574', 4, 2, 8, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(101, '010-9870-1238', '02-192-6574', 5, 2, 8, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(102, '010-1770-9778', '02-872-6134', 2, 2, 9, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(103, '010-2990-8768', '02-352-6014', 2, 2, 9, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(104, '010-2320-0188', '02-192-6574', 1, 2, 9, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(105, '010-3320-9420', '02-872-6134', 3, 2, 10, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(106, '010-1170-0463', '02-192-6574', 2, 2, 10, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(107, '010-6780-9098', '02-192-6574', 1, 2, 10, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(108, '010-7770-9008', '02-852-3133', 1, 1, 10, 'yes', 4, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(109, '010-9370-3448', '02-192-6574', 5, 2, 11, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(110, '010-2289-0978', '02-192-6574', 3, 2, 11, 'yes', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(111, '010-5770-3488', '02-192-6574', 3, 2, 12, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(112, '010-7800-1208', '02-192-6574', 1, 2, 12, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(113, '010-7769-9496', '02-872-6134', 4, 2, 12, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(114, '010-8870-1299', '02-352-6014', 3, 2, 12, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(115, '010-7443-0344', '02-852-3133', 5, 9, 13, 'yes', 4, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(116, '010-1570-3268', '02-192-6574', 4, 2, 13, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(117, '010-2870-5268', '02-192-6574', 1, 2, 13, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(118, '010-7499-0379', '02-872-6134', 2, 2, 13, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(119, '010-5170-9758', '02-852-3133', 5, 1, 13, 'yes', 4, '수저 안주셔도 돼요~', 'card');
INSERT INTO ORDER_INFO VALUES(120, '010-9510-3118', '02-852-3133', 4, 1, 14, 'yes', 4, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(121, '010-0170-9008', '02-871-6132', 3, 2, 14, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(122, '010-1220-0911', '02-192-6574', 2, 2, 14, 'no', 4, 'n', 'cash'); 
INSERT INTO ORDER_INFO VALUES(123, '010-7929-9588', '02-872-6134', 5, 2, 15, 'yes', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(124, '010-6610-6467', '02-871-6132', 2, 1, 15, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(125, '010-7911-2468', '02-192-6574', 3, 2, 15, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(126, '010-6870-4498', '02-852-3133', 4, 1, 16, 'yes', 4, '초인종 눌러주세요', 'cash');
INSERT INTO ORDER_INFO VALUES(127, '010-9900-3478', '02-352-6014', 1, 2, 17, 'no', 4, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(128, '010-7070-1267', '02-192-6574', 1, 2, 18, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(129, '010-7771-9459', '02-192-6574', 1, 2, 19, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(130, '010-7771-9459', '02-352-6014', 3, 2, 20, 'no', 4, 'n', 'card');

-- Friday Order
INSERT INTO ORDER_INFO VALUES(131, '010-7499-0379', '02-852-3133', 5, 9, 8, 'yes', 5, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(132, '010-5170-9758', '02-192-6574', 5, 8, 21, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(133, '010-7771-9459', '02-192-6574', 1, 2, 9, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(134, '010-9510-3118', '02-852-3133', 4, 1, 10, 'yes', 5, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(135, '010-6780-9088', '02-352-6014', 3, 2, 10, 'no', 5, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(136, '010-7929-9588', '02-871-6132', 3, 2, 11, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(137, '010-1220-0911', '02-872-6134', 3, 2, 11, 'yes', 5, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(138, '010-7443-0344', '02-872-6134', 5, 2, 11, 'yes', 5, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(139, '010-9970-3428', '02-871-6132', 2, 1, 11, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(140, '010-7570-9468', '02-192-6574', 1, 2, 11, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(141, '010-5170-9758', '02-852-3133', 4, 1, 12, 'yes', 5, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(142, '010-1172-9728', '02-352-6014', 2, 2, 12, 'no', 5, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(143, '010-9870-1288', '02-192-6574', 1, 2, 12, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(144, '010-9893-0354', '02-852-3133', 2, 1, 12, 'yes', 5, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(145, '010-7419-9188', '02-192-6574', 3, 2, 13, 'no', 5, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(146, '010-9870-1238', '02-192-6574', 3, 2, 13, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(147, '010-7994-6763', '02-192-6574', 3, 2, 14, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(148, '010-4220-0488', '02-852-3133', 4, 1, 14, 'yes', 5, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(149, '010-7993-0334', '02-871-6132', 2, 1, 14, 'yes', 5, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(150, '010-7429-9889', '02-871-6132', 2, 8, 15, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(151, '010-2990-6748', '02-852-3133', 2, 1, 15, 'yes', 5, '젓가락 많이', 'cash');
INSERT INTO ORDER_INFO VALUES(152, '010-7403-0334', '02-192-6574', 5, 2, 15, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(153, '010-1030-6863', '02-852-3133', 4, 1, 16, 'yes', 5, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(154, '010-6870-9098', '02-352-6014', 5, 2, 16, 'no', 5, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(155, '010-7090-9008', '02-192-6574', 1, 2, 17, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(156, '010-1220-9477', '02-852-3133', 5, 9, 17, 'yes', 5, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(157, '010-1870-3463', '02-192-6574', 3, 2, 18, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(158, '010-6780-9098', '02-192-6574', 2, 2, 19, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(159, '010-6540-4464', '02-192-6574', 3, 2, 19, 'yes', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(160, '010-3330-9977', '02-852-3133', 4, 1, 20, 'yes', 5, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(161, '010-7629-9886', '02-852-3133', 4, 1, 21, 'yes', 5, '수저 없이', 'card');

-- Saturday Order
INSERT INTO ORDER_INFO VALUES(162, '010-1030-6863', '02-872-6134', 5, 2, 8, 'yes', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(163, '010-6870-9098', '02-871-6132', 2, 1, 9, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(164, '010-7090-9008', '02-192-6574', 1, 2, 9, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(165, '010-1220-9477', '02-852-3133', 4, 1, 10, 'yes', 6, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(166, '010-1870-3463', '02-352-6014', 3, 2, 11, 'no', 6, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(167, '010-6570-6098', '02-192-6574', 1, 2, 12, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(168, '010-1870-3463', '02-852-3133', 5, 1, 12, 'yes', 6, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(169, '010-1670-9462', '02-852-3133', 4, 1, 12, 'yes', 6, '수저많이', 'card');
INSERT INTO ORDER_INFO VALUES(170, '010-3330-9977', '02-352-6014', 3, 2, 13, 'no', 6, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(171, '010-9970-3428', '02-192-6574', 1, 2, 14, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(172, '010-7570-9468', '02-872-6134', 3, 2, 14, 'yes', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(173, '010-7911-2468', '02-852-3133', 4, 1, 14, 'yes', 6, '비닐장갑', 'cash');
INSERT INTO ORDER_INFO VALUES(174, '010-7470-1768', '02-352-6014', 3, 2, 14, 'no', 6, '얼음적게', 'card');
INSERT INTO ORDER_INFO VALUES(175, '010-6693-0384', '02-192-6574', 5, 2, 15, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(176, '010-9590-3968', '02-852-3133', 4, 4, 15, 'yes', 6, '현관앞에', 'card');
INSERT INTO ORDER_INFO VALUES(177, '010-9870-1288', '02-852-3133', 4, 1, 16, 'yes', 6, '수저', 'cash');
INSERT INTO ORDER_INFO VALUES(178, '010-9893-0354', '02-352-6014', 3, 2, 17, 'no', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(179, '010-7419-9188', '02-852-3133', 4, 1, 17, 'yes', 6, '잘라주세요', 'cash');
INSERT INTO ORDER_INFO VALUES(180, '010-1220-0911', '02-352-6014', 3, 2, 17, 'no', 6, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(181, '010-8870-1299', '02-192-6574', 1, 2, 17, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(182, '010-4220-0488', '02-871-6132', 3, 2, 18, 'no', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(183, '010-9590-3668', '02-192-6574', 1, 2, 19, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(184, '010-3330-9977', '02-872-6134', 3, 2, 19, 'yes', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(185, '010-7629-9886', '02-192-6574', 1, 2, 20, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(186, '010-1173-9761', '02-852-3133', 4, 1, 20, 'yes', 6, '수저 없어도 됨', 'cash');
INSERT INTO ORDER_INFO VALUES(187, '010-9870-1238', '02-871-6132', 2, 8, 20, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(188, '010-7422-9828', '02-852-3133', 4, 1, 20, 'yes', 6, '젓가락 많이', 'cash');
INSERT INTO ORDER_INFO VALUES(189, '010-3493-0373', '02-192-6574', 1, 2, 21, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(190, '010-7499-9808', '02-872-6134', 3, 2, 21, 'yes', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(191, '010-7911-2468', '02-871-6132', 1, 2, 21, 'yes', 6, '수저 많이', 'cash');
INSERT INTO ORDER_INFO VALUES(192, '010-7771-9459', '02-852-3133', 4, 10, 21, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(193, '010-2320-0188', '02-871-6132', 2, 1, 21, 'no', 6, 'n', 'card');

-- Sunday Order
INSERT INTO ORDER_INFO VALUES(194, '010-1030-6863', '02-872-6134', 5, 2, 8, 'yes', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(195, '010-6870-9098', '02-871-6132', 2, 1, 9, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(196, '010-7771-9459', '02-192-6574', 1, 2, 9, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(197, '010-1220-9477', '02-852-3133', 4, 1, 10, 'yes', 0, '현관앞에', 'cash');
INSERT INTO ORDER_INFO VALUES(198, '010-1870-3463', '02-352-6014', 3, 2, 11, 'no', 0, '연하게', 'card');
INSERT INTO ORDER_INFO VALUES(199, '010-2289-0978', '02-192-6574', 1, 2, 12, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(200, '010-1870-3463', '02-852-3133', 5, 1, 12, 'yes', 0, '수저 없이', 'card');
INSERT INTO ORDER_INFO VALUES(201, '010-1670-9462', '02-852-3133', 4, 1, 12, 'yes', 0, '수저많이', 'card');
INSERT INTO ORDER_INFO VALUES(202, '010-6610-6467', '02-352-6014', 3, 2, 13, 'no', 0, '쓰리샷', 'card');
INSERT INTO ORDER_INFO VALUES(203, '010-1570-3268', '02-192-6574', 1, 2, 14, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(204, '010-7570-9468', '02-872-6134', 3, 2, 14, 'yes', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(205, '010-9870-1288', '02-852-3133', 4, 1, 14, 'yes', 0, '비닐장갑', 'cash');
INSERT INTO ORDER_INFO VALUES(206, '010-7470-1768', '02-352-6014', 3, 2, 14, 'no', 0, '디카페인', 'card');
INSERT INTO ORDER_INFO VALUES(207, '010-7900-6408', '02-192-6574', 5, 2, 15, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(208, '010-9590-3968', '02-852-3133', 4, 4, 15, 'yes', 0, '현관앞에', 'card');
INSERT INTO ORDER_INFO VALUES(209, '010-1570-3268', '02-852-3133', 4, 1, 16, 'yes', 0, '수저', 'cash');
INSERT INTO ORDER_INFO VALUES(210, '010-9893-0354', '02-352-6014', 3, 2, 17, 'no', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(211, '010-7419-9188', '02-852-3133', 4, 1, 17, 'yes', 0, '잘라주세요', 'cash');
INSERT INTO ORDER_INFO VALUES(212, '010-2320-0188', '02-352-6014', 3, 2, 17, 'no', 0, '샷추가', 'card');
INSERT INTO ORDER_INFO VALUES(213, '010-7070-1267', '02-871-6132', 1, 2, 17, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(214, '010-4220-0488', '02-352-6014', 3, 2, 18, 'no', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(215, '010-6540-4464', '02-192-6574', 1, 2, 19, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(216, '010-7993-0334', '02-872-6134', 3, 2, 19, 'yes', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(217, '010-7629-9886', '02-192-6574', 1, 2, 20, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(218, '010-1173-9761', '02-852-3133', 4, 1, 20, 'yes', 0, '수저 없어도 됨', 'cash');
INSERT INTO ORDER_INFO VALUES(219, '010-9870-1238', '02-871-6132', 2, 8, 20, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(220, '010-6870-4498', '02-852-3133', 4, 1, 20, 'yes', 0, '젓가락6개', 'cash');
INSERT INTO ORDER_INFO VALUES(221, '010-7900-6408', '02-852-3133', 5, 9, 20, 'yes', 0, '수저많이', 'cash');
INSERT INTO ORDER_INFO VALUES(222, '010-3493-0373', '02-192-6574', 1, 2, 21, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(223, '010-9590-3668', '02-872-6134', 3, 2, 21, 'yes', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(224, '010-1770-9778', '02-192-6574', 1, 2, 21, 'yes', 0, '수저 많이', 'cash');
INSERT INTO ORDER_INFO VALUES(225, '010-2990-8768', '02-852-3133', 4, 10, 21, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(226, '010-7911-2468', '02-871-6132', 2, 1, 21, 'no', 0, 'n', 'card');

-- Reviews
INSERT INTO REVIEW(RENO, ORDERNO, UPHONE, RESCORE, RECONTENT) VALUES(1, 1, '010-1030-6863', 9, '맛있어요.');
INSERT INTO REVIEW VALUES(2, 2, '010-6870-9098', 10, 'JMT');
INSERT INTO REVIEW VALUES(3, 3, '010-7090-9008', 10, '맛이 일품이에요.');
INSERT INTO REVIEW VALUES(4, 4, '010-1220-9477', 10, '최고의 맛.');
INSERT INTO REVIEW VALUES(5, 6, '010-6570-6098', 10, '미쳤다.');
INSERT INTO REVIEW VALUES(6, 7, '010-7520-9529', 5, '머리카락이 나왔어요.');
INSERT INTO REVIEW VALUES(7, 8, '010-1670-9462', 9, '겉바속촉!!');
INSERT INTO REVIEW VALUES(8, 10, '010-9970-3428', 10, '정말 맛있어요.');
INSERT INTO REVIEW VALUES(9, 9, '010-6970-9078', 9, '맛이 좋아요.');
INSERT INTO REVIEW VALUES(10, 15, '010-9590-3968', 9, '맛 최고요.');
INSERT INTO REVIEW VALUES(11, 26, '010-9870-1238', 10, '입 안에서 축제중.');
INSERT INTO REVIEW VALUES(12, 20, '010-7994-6763', 10, '이건 무슨 맛이죠..');
INSERT INTO REVIEW VALUES(13, 28, '010-1172-9728', 10, '제 비만의 원인.');
INSERT INTO REVIEW VALUES(14, 29, '010-3493-0373', 1, '똥이 더 맛있을 듯.');

INSERT INTO REVIEW(RENO, ORDERNO, UPHONE, RESCORE, RECONTENT) VALUES(15, 35, '010-1170-0463', 9, '잘라달라고 했는데 안잘라주심ㅜ');
INSERT INTO REVIEW VALUES(16, 37, '010-7429-9889', 10, '샌드위치는 여기서만 먹어요!');
INSERT INTO REVIEW VALUES(17, 42, '010-0170-9008', 10, '맛이 일품이에요.');
INSERT INTO REVIEW VALUES(18, 39, '010-7403-0334', 10, '최고의 맛.');
INSERT INTO REVIEW VALUES(19, 43, '010-1220-0911', 10, '미쳤다.');
INSERT INTO REVIEW VALUES(20, 40, '010-5170-9758', 5, '진짜 존맛탱');
INSERT INTO REVIEW VALUES(21, 44, '010-7929-9588', 9, '음~꿀맛!!');
INSERT INTO REVIEW VALUES(22, 47, '010-9370-3448', 10, '여러명이 나눠먹기도 좋네요');
INSERT INTO REVIEW VALUES(23, 51, '010-7769-9496', 9, '집밥 먹는 느낌ㅠ.ㅠ');
INSERT INTO REVIEW VALUES(24, 52, '010-8870-1299', 9, '여기저기추천하고 다니는중ㅠㅠ');
INSERT INTO REVIEW VALUES(25, 54, '010-1570-3268', 10, '너무 맛있어요!');
INSERT INTO REVIEW VALUES(26, 55, '010-2870-5268', 3, '짜장면이 맛이 없을수가있구나..');
INSERT INTO REVIEW VALUES(27, 58, '010-6780-9088', 10, '제 비만의 원인.');
INSERT INTO REVIEW VALUES(28, 65, '010-9900-3478', 1, '그냥 평범한 커피맛ㅋ');

INSERT INTO REVIEW(RENO, ORDERNO, UPHONE, RESCORE, RECONTENT) VALUES(29, 68, '010-6780-9088', 9, '맛있어요.');
INSERT INTO REVIEW VALUES(30, 71, '010-9870-1238', 10, '맛있네요');
INSERT INTO REVIEW VALUES(31, 70, '010-7800-1238', 10, '맛이 일품이에요.');
INSERT INTO REVIEW VALUES(32, 74, '010-6970-9078', 10, '여긴 짬뽕이 찐');
INSERT INTO REVIEW VALUES(33, 79, '010-9870-1288', 10, '진짜 너무 맛있어요~');
INSERT INTO REVIEW VALUES(34, 82, '010-1270-1768', 9, '건강한 맛ㅎㅎ!');
INSERT INTO REVIEW VALUES(35, 81, '010-7419-9188', 9, '겉바속촉!!');
INSERT INTO REVIEW VALUES(36, 78, '010-1172-9728', 10, '정말 맛있어요.');
INSERT INTO REVIEW VALUES(37, 88, '010-7403-0334', 9, '맛이 좋아요.');
INSERT INTO REVIEW VALUES(38, 92, '010-1220-9477', 9, '안 짜서 좋음');
INSERT INTO REVIEW VALUES(39, 93, '010-1870-3463', 10, '행복해지는 맛이에요');
INSERT INTO REVIEW VALUES(40, 94, '010-6570-6098', 10, '먹을만 하네요..');
INSERT INTO REVIEW VALUES(41, 96, '010-3330-9977', 10, '앞으로 자주 주문할게요~');
INSERT INTO REVIEW VALUES(42, 99, '010-7629-9886', 1, '초파리가 왔어요.');

INSERT INTO REVIEW VALUES(43, 101, '010-9870-1238', 9, '맛있어요 ㅎㅎ');
INSERT INTO REVIEW VALUES(44, 102, '010-1770-9778', 10, '존맛탱!!');
INSERT INTO REVIEW VALUES(45, 107, '010-6780-9098', 10, '우리 동네 맛집 인정!');
INSERT INTO REVIEW VALUES(46, 109, '010-9370-3448', 10, '사장님 적게 일하고 많이 버세요');
INSERT INTO REVIEW VALUES(47, 104, '010-2320-0188', 10, '미쳤다는 소리가 절로 나오는 맛!');
INSERT INTO REVIEW VALUES(48, 110, '010-2289-0978', 5, '위생 상태가 의심되네요..');
INSERT INTO REVIEW VALUES(49, 115, '010-7443-0344', 9, '너무 맛있는 곳이네요~');
INSERT INTO REVIEW VALUES(50, 118, '010-7499-0379', 7, '맛있어요~');
INSERT INTO REVIEW VALUES(51, 119, '010-5170-9758', 9, '맛이 좋아요 ㅎㅎ');
INSERT INTO REVIEW VALUES(52, 126, '010-6870-4498', 9, '따봉입니다~');
INSERT INTO REVIEW VALUES(53, 130, '010-7771-9459', 10, '다음에 또 주문할게요~');
INSERT INTO REVIEW VALUES(54, 127, '010-9900-3478', 3, '할 말이 없네요');
INSERT INTO REVIEW VALUES(55, 125, '010-7911-2468', 10, '너무 맛있어서 눈물이 주르륵');
INSERT INTO REVIEW VALUES(56, 129, '010-7771-9459', 1, '장사 접으세요.');

INSERT INTO REVIEW VALUES(57, 135, '010-6780-9088', 9, '행복해지는 맛이에요!');
INSERT INTO REVIEW VALUES(58, 128, '010-7070-1267', 10, '찐맛집!!');
INSERT INTO REVIEW VALUES(59, 132, '010-5170-9758', 8, '완벽한 맛');
INSERT INTO REVIEW VALUES(60, 138, '010-7443-0344', 9, '최고입니당 ㅎㅎ');
INSERT INTO REVIEW VALUES(61, 117, '010-2870-5268', 10, '매일 먹고싶은 맛!');
INSERT INTO REVIEW VALUES(62, 139, '010-9970-3428', 10, '김치찌개 추천이요ㅠㅠ');
INSERT INTO REVIEW VALUES(63, 140, '010-7570-9468', 9, '음~ 맛있다!!');
INSERT INTO REVIEW VALUES(64, 146, '010-9870-1238', 10, '정말 맛있어요.');
INSERT INTO REVIEW VALUES(65, 123, '010-7929-9588', 9, '맛이 좋아요.');
INSERT INTO REVIEW VALUES(66, 108, '010-7770-9008', 9, '갤러리 보다가 생각나서 또 시키러 옴');
INSERT INTO REVIEW VALUES(67, 143, '010-9870-1288', 10, '사장님 많이 버세요 ㅎㅎ');
INSERT INTO REVIEW VALUES(68, 151, '010-2990-6748', 4, '이게뭐죠');
INSERT INTO REVIEW VALUES(69, 152, '010-7403-0334', 10, '제 비만의 원인이에요');
INSERT INTO REVIEW VALUES(70, 154, '010-6870-9098',  1, '뿡');

INSERT INTO REVIEW VALUES(71, 153, '010-1030-6863', 8, '맛있어요.');
INSERT INTO REVIEW VALUES(72, 155, '010-7090-9008', 10, 'JMT');
INSERT INTO REVIEW VALUES(73, 156, '010-1220-9477', 10, '맛이 좋아요.');
INSERT INTO REVIEW VALUES(74, 158, '010-6780-9098', 10, '최고의 맛.');
INSERT INTO REVIEW VALUES(75, 157, '010-1870-3463', 10, '미쳤다.');
INSERT INTO REVIEW VALUES(76, 136, '010-7929-9588', 5, '위생 점검이 필요할 것 같네요.');
INSERT INTO REVIEW VALUES(77, 161, '010-7629-9886', 9, '굿초이스');
INSERT INTO REVIEW VALUES(78, 162, '010-1030-6863', 10, '정말 맛있어요.');
INSERT INTO REVIEW VALUES(79, 159, '010-6540-4464', 9, '맛이 좋아요.');
INSERT INTO REVIEW VALUES(80, 165, '010-1220-9477', 9, '최고입니당!');
INSERT INTO REVIEW VALUES(81, 168, '010-1870-3463', 10, '다음에 또 올게요~');
INSERT INTO REVIEW VALUES(82, 169, '010-1670-9462', 10, '이건 무슨 맛이죠 ㅋㅋ');
INSERT INTO REVIEW VALUES(83, 172, '010-7570-9468', 10, '오늘도 다이어트 실패');
INSERT INTO REVIEW VALUES(84, 170, '010-3330-9977', 8, '무난한 학교앞 커피맛..ㅎ');

INSERT INTO REVIEW VALUES(85, 175, '010-6693-0384', 9, '맛있어요.');
INSERT INTO REVIEW VALUES(86, 178, '010-9893-0354', 10, '맛있네요.');
INSERT INTO REVIEW VALUES(87, 173, '010-7911-2468', 10, '괜찮은 듯.');
INSERT INTO REVIEW VALUES(88, 176, '010-9590-3968', 10, '최고!');
INSERT INTO REVIEW VALUES(89, 177, '010-9870-1288', 10, '미쳤어요ㅠㅠ');
INSERT INTO REVIEW VALUES(90, 178, '010-9893-0354', 5, '서비스 감사합니당~');
INSERT INTO REVIEW VALUES(91, 180, '010-1220-0911', 9, '자주 방문할 예정입니다.');
INSERT INTO REVIEW VALUES(92, 184, '010-3330-9977', 10, '정말 맛있어요.');
INSERT INTO REVIEW VALUES(93, 186, '010-7629-9886', 9, '맛이 좋아요.');
INSERT INTO REVIEW VALUES(94, 187, '010-9870-1238', 9, '맛 최고요.');
INSERT INTO REVIEW VALUES(95, 188, '010-7422-9828', 10, '존맛..♡');
INSERT INTO REVIEW VALUES(96, 190, '010-7499-9808', 4, '사장님 행복하세요~~');
INSERT INTO REVIEW VALUES(97, 192, '010-7771-9459', 10, '다음에 또 주문할게요.');
INSERT INTO REVIEW VALUES(98, 161, '010-7629-9886', 1, '돈 받고 팔지 마라 걍');

INSERT INTO REVIEW VALUES(99, 195, '010-6870-9098', 9, '맛있어요.');
INSERT INTO REVIEW VALUES(100, 193, '010-2320-0188', 10, 'JMT');
INSERT INTO REVIEW VALUES(101, 194, '010-1030-6863', 10, '맛이 일품이에요.');
INSERT INTO REVIEW VALUES(102, 199, '010-2289-0978', 10, '맛이 좋네요.');
INSERT INTO REVIEW VALUES(103, 200, '010-1870-3463', 10, '맛있어요!');
INSERT INTO REVIEW VALUES(104, 202, '010-6610-6467', 5, '맛있습니다.');
INSERT INTO REVIEW VALUES(105, 201, '010-1670-9462', 9, '행복해지는 맛이에요ㅠㅠ');
INSERT INTO REVIEW VALUES(106, 198, '010-1870-3463', 10, '연하게 먹어도 커피향 장난 아니에요!');
INSERT INTO REVIEW VALUES(107, 203, '010-1570-3268', 9, '맛이 좋아요.');
INSERT INTO REVIEW VALUES(108, 207, '010-7900-6408', 9, '맛 최고요.');
INSERT INTO REVIEW VALUES(109, 210, '010-9893-0354', 10, '자주 주문할게요. 너무 맛있네요.');
INSERT INTO REVIEW VALUES(110, 211, '010-7419-9188', 10, '음..');
INSERT INTO REVIEW VALUES(111, 212, '010-2320-0188', 10, '맛있습니다.');
INSERT INTO REVIEW VALUES(112, 215, '010-6540-4464', 1, '사장님 감사합니다.');

INSERT INTO REVIEW VALUES(113, 214, '010-4220-0488', 8, '맛있어요.');
INSERT INTO REVIEW VALUES(114, 216, '010-7993-0334', 10, '맛있네요.');
INSERT INTO REVIEW VALUES(115, 219, '010-9870-1238', 9, '반찬 많아서 좋아요!!');
INSERT INTO REVIEW VALUES(116, 220, '010-6870-4498', 10, '모든 메뉴 다 맛있음');
INSERT INTO REVIEW VALUES(117, 224, '010-1770-9778', 10, '미쳤다');
INSERT INTO REVIEW VALUES(118, 223, '010-9590-3668', 9, 'GOOD');
INSERT INTO REVIEW VALUES(119, 225, '010-2990-8768', 10, '찐맛집 발견');

-- Alarms
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(1, '조리가 완료되었습니다.', '010-1030-6863', '02-872-6134');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(2, '조리가 완료되었습니다.', '010-6870-9098', '02-871-6132');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(3, '조리가 완료되었습니다.', '010-7090-9008', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(4, '조리가 완료되었습니다.', '010-1220-9477', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(5, '조리가 완료되었습니다.', '010-6570-6098', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(6, '조리가 완료되었습니다.', '010-7520-9529', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(7, '조리가 완료되었습니다.', '010-1670-9462', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(8, '조리가 완료되었습니다.', '010-6970-9078', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(9, '조리가 완료되었습니다.', '010-9970-3428', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(10, '조리가 완료되었습니다.', '010-7570-9468', '02-872-6134');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(11, '조리가 완료되었습니다.', '010-7328-9429', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(12, '조리가 완료되었습니다.', '010-7470-1768', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(13, '조리가 완료되었습니다.', '010-6693-0384', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(14, '조리가 완료되었습니다.', '010-9590-3968', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(15, '조리가 완료되었습니다.', '010-9870-1288', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(16, '조리가 완료되었습니다.', '010-9893-0354', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(17, '조리가 완료되었습니다.', '010-7419-9188', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(18, '조리가 완료되었습니다.', '010-1270-1768', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(19, '조리가 완료되었습니다.', '010-7994-6763', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(20, '조리가 완료되었습니다.', '010-4220-0488', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(21, '조리가 완료되었습니다.', '010-6540-4464', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(22, '조리가 완료되었습니다.', '010-3330-9977', '02-872-6134');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(23, '조리가 완료되었습니다.', '010-7629-9886', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(24, '조리가 완료되었습니다.', '010-1173-9761', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(25, '조리가 완료되었습니다.', '010-9870-1238', '02-871-6132');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(26, '조리가 완료되었습니다.', '010-7422-9828', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(27, '조리가 완료되었습니다.', '010-1172-9728', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(28, '조리가 완료되었습니다.', '010-3493-0373', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(29, '조리가 완료되었습니다.', '010-7499-9808', '02-872-6134');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(30, '조리가 완료되었습니다.', '010-1770-9778', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(31, '조리가 완료되었습니다.', '010-2990-8768', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(32, '조리가 완료되었습니다.', '010-2320-0188', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(33, '조리가 완료되었습니다.', '010-3320-9420', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(34, '조리가 완료되었습니다.', '010-1170-0463', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(35, '조리가 완료되었습니다.', '010-6780-9098', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(36, '조리가 완료되었습니다.', '010-7429-9889', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(37, '조리가 완료되었습니다.', '010-2990-6748', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(38, '조리가 완료되었습니다.', '010-7403-0334', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(39, '조리가 완료되었습니다.', '010-5170-9758', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(40, '조리가 완료되었습니다.', '010-9510-3118', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(41, '조리가 완료되었습니다.', '010-0170-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(42, '조리가 완료되었습니다.', '010-1220-0911', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(43, '조리가 완료되었습니다.', '010-7929-9588', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(44, '조리가 완료되었습니다.', '010-6610-6467', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(45, '조리가 완료되었습니다.', '010-7770-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(46, '조리가 완료되었습니다.', '010-9370-3448', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(47, '조리가 완료되었습니다.', '010-7800-1208', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(48, '조리가 완료되었습니다.', '010-7769-9496', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(49, '조리가 완료되었습니다.', '010-8870-1299', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(50, '조리가 완료되었습니다.', '010-7443-0344', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(51, '조리가 완료되었습니다.', '010-1570-3268', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(52, '조리가 완료되었습니다.', '010-2870-5268', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(53, '조리가 완료되었습니다.', '010-7499-0379', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(54, '조리가 완료되었습니다.', '010-7900-6408', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(55, '조리가 완료되었습니다.', '010-6780-9088', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(56, '조리가 완료되었습니다.', '010-9590-3668', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(57, '조리가 완료되었습니다.', '010-7800-1238', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(58, '조리가 완료되었습니다.', '010-9870-1238', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(59, '조리가 완료되었습니다.', '010-7993-0334', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(60, '조리가 완료되었습니다.', '010-7911-2468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(61, '조리가 완료되었습니다.', '010-6870-4498', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(62, '조리가 완료되었습니다.', '010-9900-3478', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(63, '조리가 완료되었습니다.', '010-7070-1267', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(64, '조리가 완료되었습니다.', '010-7900-6408', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(65, '조리가 완료되었습니다.', '010-6780-9088', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(66, '조리가 완료되었습니다.', '010-9590-3668', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(67, '조리가 완료되었습니다.', '010-7800-1238', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(68, '조리가 완료되었습니다.', '010-9870-1238', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(69, '조리가 완료되었습니다.', '010-7520-9529', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(70, '조리가 완료되었습니다.', '010-1670-9462', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(71, '조리가 완료되었습니다.', '010-6970-9078', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(72, '조리가 완료되었습니다.', '010-9970-3428', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(73, '조리가 완료되었습니다.', '010-7570-9468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(74, '조리가 완료되었습니다.', '010-7422-9828', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(75, '조리가 완료되었습니다.', '010-1172-9728', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(76, '조리가 완료되었습니다.', '010-9870-1288', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(77, '조리가 완료되었습니다.', '010-9893-0354', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(78, '조리가 완료되었습니다.', '010-7419-9188', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(79, '조리가 완료되었습니다.', '010-1270-1768', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(80, '조리가 완료되었습니다.', '010-7994-6763', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(81, '조리가 완료되었습니다.', '010-4220-0488', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(82, '조리가 완료되었습니다.', '010-1173-9761', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(83, '조리가 완료되었습니다.', '010-9870-1238', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(84, '조리가 완료되었습니다.', '010-1770-9778', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(85, '조리가 완료되었습니다.', '010-2990-8768', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(86, '조리가 완료되었습니다.', '010-6610-6467', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(87, '조리가 완료되었습니다.', '010-7911-2468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(88, '조리가 완료되었습니다.', '010-6870-4498', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(89, '조리가 완료되었습니다.', '010-7993-0334', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(90, '조리가 완료되었습니다.', '010-7429-9889', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(91, '조리가 완료되었습니다.', '010-2990-6748', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(92, '조리가 완료되었습니다.', '010-7403-0334', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(93, '조리가 완료되었습니다.', '010-1030-6863', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(94, '조리가 완료되었습니다.', '010-6870-9098', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(95, '조리가 완료되었습니다.', '010-7090-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(96, '조리가 완료되었습니다.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(97, '조리가 완료되었습니다.', '010-1870-3463', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(98, '조리가 완료되었습니다.', '010-6570-6098', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(99, '조리가 완료되었습니다.', '010-6540-4464', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(100, '조리가 완료되었습니다.', '010-3330-9977', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(101, '조리가 완료되었습니다.', '010-7629-9886', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(102, '조리가 완료되었습니다.', '010-2320-0188', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(103, '조리가 완료되었습니다.', '010-3320-9420', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(104, '조리가 완료되었습니다.', '010-1170-0463', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(105, '조리가 완료되었습니다.', '010-6780-9098', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(106, '조리가 완료되었습니다.', '010-7770-9008', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(107, '조리가 완료되었습니다.', '010-9370-3448', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(108, '조리가 완료되었습니다.', '010-2289-0978', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(109, '조리가 완료되었습니다.', '010-5770-3488', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(110, '조리가 완료되었습니다.', '010-7800-1208', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(111, '조리가 완료되었습니다.', '010-7769-9496', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(112, '조리가 완료되었습니다.', '010-8870-1299', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(113, '조리가 완료되었습니다.', '010-7443-0344', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(114, '조리가 완료되었습니다.', '010-1570-3268', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(115, '조리가 완료되었습니다.', '010-2870-5268', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(116, '조리가 완료되었습니다.', '010-7499-0379', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(117, '조리가 완료되었습니다.', '010-5170-9758', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(118, '조리가 완료되었습니다.', '010-9510-3118', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(119, '조리가 완료되었습니다.', '010-0170-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(120, '조리가 완료되었습니다.', '010-1220-0911', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(121, '조리가 완료되었습니다.', '010-7929-9588', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(122, '조리가 완료되었습니다.', '010-5170-9758', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(123, '조리가 완료되었습니다.', '010-1172-9728', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(124, '조리가 완료되었습니다.', '010-9870-1288', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(125, '조리가 완료되었습니다.', '010-9893-0354', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(126, '조리가 완료되었습니다.', '010-7419-9188', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(127, '조리가 완료되었습니다.', '010-9870-1238', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(128, '조리가 완료되었습니다.', '010-7994-6763', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(129, '조리가 완료되었습니다.', '010-4220-0488', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(130, '조리가 완료되었습니다.', '010-7993-0334', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(131, '조리가 완료되었습니다.', '010-7429-9889', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(132, '조리가 완료되었습니다.', '010-2990-6748', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(133, '조리가 완료되었습니다.', '010-7403-0334', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(134, '조리가 완료되었습니다.', '010-1030-6863', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(135, '조리가 완료되었습니다.', '010-6870-9098', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(136, '조리가 완료되었습니다.', '010-7090-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(137, '조리가 완료되었습니다.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(138, '조리가 완료되었습니다.', '010-1870-3463', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(139, '조리가 완료되었습니다.', '010-6570-6098', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(140, '조리가 완료되었습니다.', '010-1870-3463', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(141, '조리가 완료되었습니다.', '010-1670-9462', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(142, '조리가 완료되었습니다.', '010-3330-9977', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(143, '조리가 완료되었습니다.', '010-9970-3428', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(144, '조리가 완료되었습니다.', '010-7570-9468', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(145, '조리가 완료되었습니다.', '010-7911-2468', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(146, '조리가 완료되었습니다.', '010-7470-1768', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(147, '조리가 완료되었습니다.', '010-6693-0384', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(148, '조리가 완료되었습니다.', '010-9590-3968', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(149, '조리가 완료되었습니다.', '010-9870-1288', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(150, '조리가 완료되었습니다.', '010-9893-0354', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(151, '조리가 완료되었습니다.', '010-7419-9188', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(152, '조리가 완료되었습니다.', '010-1220-0911', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(153, '조리가 완료되었습니다.', '010-8870-1299', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(154, '조리가 완료되었습니다.', '010-4220-0488', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(155, '조리가 완료되었습니다.', '010-9590-3668', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(156, '조리가 완료되었습니다.', '010-6610-6467', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(157, '조리가 완료되었습니다.', '010-1570-3268', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(158, '조리가 완료되었습니다.', '010-7570-9468', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(159, '조리가 완료되었습니다.', '010-9870-1288', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(160, '조리가 완료되었습니다.', '010-7470-1768', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(161, '조리가 완료되었습니다.', '010-7900-6408', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(162, '조리가 완료되었습니다.', '010-9590-3968', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(163, '조리가 완료되었습니다.', '010-1570-3268', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(164, '조리가 완료되었습니다.', '010-9893-0354', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(165, '조리가 완료되었습니다.', '010-7419-9188', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(166, '조리가 완료되었습니다.', '010-2320-0188', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(167, '조리가 완료되었습니다.', '010-7070-1267', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(168, '조리가 완료되었습니다.', '010-4220-0488', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(169, '조리가 완료되었습니다.', '010-6540-4464', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(170, '조리가 완료되었습니다.', '010-7993-0334', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(171, '조리가 완료되었습니다.', '010-7629-9886', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(172, '조리가 완료되었습니다.', '010-9900-3478', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(173, '조리가 완료되었습니다.', '010-7070-1267', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(174, '조리가 완료되었습니다.', '010-7771-9459', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(175, '조리가 완료되었습니다.', '010-7771-9459', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(176, '조리가 완료되었습니다.', '010-7499-0379', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(177, '조리가 완료되었습니다.', '010-5170-9758', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(178, '조리가 완료되었습니다.', '010-7771-9459', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(179, '조리가 완료되었습니다.', '010-9510-3118', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(180, '조리가 완료되었습니다.', '010-6780-9088', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(181, '조리가 완료되었습니다.', '010-7929-9588', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(182, '조리가 완료되었습니다.', '010-1220-0911', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(183, '조리가 완료되었습니다.', '010-7443-0344', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(184, '조리가 완료되었습니다.', '010-9970-3428', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(185, '조리가 완료되었습니다.', '010-7570-9468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(186, '조리가 완료되었습니다.', '010-7090-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(187, '조리가 완료되었습니다.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(188, '조리가 완료되었습니다.', '010-1870-3463', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(189, '조리가 완료되었습니다.', '010-6780-9098', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(190, '조리가 완료되었습니다.', '010-6540-4464', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(191, '조리가 완료되었습니다.', '010-3330-9977', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(192, '조리가 완료되었습니다.', '010-7629-9886', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(193, '조리가 완료되었습니다.', '010-1030-6863', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(194, '조리가 완료되었습니다.', '010-6870-9098', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(195, '조리가 완료되었습니다.', '010-7090-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(196, '조리가 완료되었습니다.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(197, '조리가 완료되었습니다.', '010-1870-3463', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(198, '조리가 완료되었습니다.', '010-3330-9977', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(199, '조리가 완료되었습니다.', '010-7629-9886', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(200, '조리가 완료되었습니다.', '010-1173-9761', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(201, '조리가 완료되었습니다.', '010-9870-1238', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(202, '조리가 완료되었습니다.', '010-7422-9828', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(203, '조리가 완료되었습니다.', '010-1172-9728', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(204, '조리가 완료되었습니다.', '010-3493-0373', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(205, '조리가 완료되었습니다.', '010-7499-9808', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(206, '조리가 완료되었습니다.', '010-7911-2468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(207, '조리가 완료되었습니다.', '010-7771-9459', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(208, '조리가 완료되었습니다.', '010-2320-0188', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(209, '조리가 완료되었습니다.', '010-1030-6863', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(210, '조리가 완료되었습니다.', '010-6870-9098', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(211, '조리가 완료되었습니다.', '010-7771-9459', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(212, '조리가 완료되었습니다.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(213, '조리가 완료되었습니다.', '010-1870-3463', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(214, '조리가 완료되었습니다.', '010-2289-0978', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(215, '조리가 완료되었습니다.', '010-1870-3463', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(216, '조리가 완료되었습니다.', '010-1670-9462', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(217, '조리가 완료되었습니다.', '010-1173-9761', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(218, '조리가 완료되었습니다.', '010-9870-1238', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(219, '조리가 완료되었습니다.', '010-6870-4498', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(220, '조리가 완료되었습니다.', '010-7900-6408', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(221, '조리가 완료되었습니다.', '010-3493-0373', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(222, '조리가 완료되었습니다.', '010-9590-3668', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(223, '조리가 완료되었습니다.', '010-1770-9778', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(224, '조리가 완료되었습니다.', '010-2990-8768', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(225, '조리가 완료되었습니다.', '010-7911-2468', '02-871-6132');
