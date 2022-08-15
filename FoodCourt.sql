/* ǪƮ��Ʈ �����ͺ��̽� ����*/

-- [���̺� ����]
 
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

-- [������ ����]

-- Corner Information 
INSERT INTO CORNER VALUES('02-872-6134', '�߱���', '¥���', 1);
INSERT INTO CORNER VALUES('02-871-6132', '�ѽ���', '��ġ�', 2);
INSERT INTO CORNER VALUES('02-852-3133', '�յ��', '�յ��', 3);
INSERT INTO CORNER VALUES('02-192-6574', '������ġ', '�� ������ġ', 4);
INSERT INTO CORNER VALUES('02-352-6014', 'Ŀ�� ������', '�Ƹ޸�ī��', 5);

-- User Information
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7570-9468', 'mnb149', '�輭��', 22, 1, 'seoul', 'gwuanak', 'silim', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7328-9429', '93b849', '�����', 36, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1030-6863', '109t9', '�̶�', 12, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6870-9098', '784ll9', '���Ѽ�', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7090-9008', 'q1849', '������', 24, 1, 'seoul', 'donjak', 'daebang', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1220-9477', '93b849', '�����', 36, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1870-3463', '109t9', '���Ͽ�', 12, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6570-6098', '784ll9', '���Ѽ�', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7520-9529', '93b849', '�����', 36, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1670-9462', '109t9', '�̿�', 12, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6970-9078', '784ll9', '���Ѻ�', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9970-3428', '33e3949', '���漮', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7470-1768', '759r49', '����ȣ', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6693-0384', '192849', '�輮��', 70, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9590-3968', '33e3949', '���缮', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9870-1288', '759r49', '�̼�ȣ', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9893-0354', '192849', '�輮��', 40, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7419-9188', 'yy2849', '����ȭ', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1270-1768', '19hj49', '�輺��', 51, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7994-6763', '19mm49', '�赵�丮', 40, 0, 'jeju', null, 'ildo', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-4220-0488', '192849', '������', 41, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6540-4464', 'wy92849', '������', 24, 1, 'seoul', 'gangnam', 'banpo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-3330-9977', '9ksy849', '������', 29, 1, 'incheon', 'jung', 'dongincheon', 'yes', 'yes'); 
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7629-9886', 'yy2849', '����ȭ', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1173-9761', '19hj49', '�輺��', 51, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9870-1238', '759r49', '��ȣ', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-3493-0373', '192849', '�迭', 20, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7422-9828', 'yy2849', '��ȭ', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1172-9728', '19hj49', '����', 21, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7499-9808', 'yy2849', '����ȭ', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1770-9778', '19hj49', '�輺��', 51, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2990-8768', '19mm49', '��¸�', 40, 0, 'jeju', null, 'ildo', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2320-0188', '192849', '������', 31, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-3320-9420', '93b849', '������', 26, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1170-0463', '109t9', '�̶���', 12, 0, 'seoul', 'seodaemun', 'gongduk', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6780-9098', '784ll9', '���Ѽ�', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7429-9889', 'yy2849', '����ȭ', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-5170-9758', '19hj49', '�輺��', 31, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7929-9588', 'yy2849', '����ȭ', 30, 0, 'busan', 'dong', 'bumil', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-0170-9008', '19hj49', '������', 41, 0, 'jeju', null, 'samyangsam', 'no', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2990-6748', '19mm49', '������', 30, 0, 'jeju', null, 'ildo', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1220-0911', '192849', '������', 41, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9510-3118', '33e3949', '���缮', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7403-0334', '192849', '����', 20, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6610-6467', '284kyn9', '�̰���', 38, 0, 'bucheon', 'wonmi', 'wonmi1', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7770-9008', '784ll9', '���', 17, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9370-3448', '33e3949', '����', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2289-0978', '192849', '������', 21, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-5770-3488', '33e3949', '���', 20, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7800-1208', '759r49', '����ȣ', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7769-9496', '2849', '����', 19, 1, 'bucheon', 'wonmi', 'wonmi2', 'no', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-8870-1299', '759r49', '����ȣ', 27, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7443-0344', '192849', '������', 70, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-1570-3268', '33e3949', '������', 50, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-2870-5268', '759r49', '������', 47, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7499-0379', '192849', '�輮��', 73, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7900-6408', '284kyn9', '�谭��', 48, 0, 'bucheon', 'wonmi', 'wonmi1', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6780-9088', '784ll9', '������', 19, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9590-3668', '33e3949', '���缮', 20, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7800-1238', '759r49', '����ȣ', 27, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9870-1828', '759r49', '�ȼ�ö', 37, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7993-0334', '192849', '����', 38, 1, 'seoul', 'dongjak', 'sangdo', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7911-2468', '284kyn9', '��âȣ', 35, 0, 'bucheon', 'wonmi', 'wonmi1', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-6870-4498', '784ll9', '������', 27, 1, 'seoul', 'seodaemun', 'gongduk', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-9900-3478', '33e3949', '��ƶ�', 20, 0, 'incheon', 'jung', 'dongincheon', 'yes', 'yes');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7070-1267', '759r49', '������', 33, 1, 'busan', 'haeundae', 'wu', 'yes', 'no');
INSERT INTO USER_INFO(Uphone, Password, Name, Age, Sex, City, Ku, Dong, Cardregister, Accountregister) VALUES('010-7771-9459', '2849', '�輺��', 20, 1, 'bucheon', 'wonmi', 'wonmi2', 'no', 'no');

-- Menu Information about each Corner
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(1, '¥���', 4000, '¥��� �Դϴ�.', '02-872-6134'); 
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(2, '«��', 5000, '«�� �Դϴ�.', '02-872-6134'); 
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(3, '������', 10000, '������ �Դϴ�.', '02-872-6134'); 
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(4, 'ĥ������', 6000, 'ĥ������ �Դϴ�.', '02-872-6134'); 
INSERT INTO CHINESE(Chno, Chmenu, Chprice, Chexplain, Chphone) VALUES(5, '������', 6000, '������ �Դϴ�.', '02-872-6134'); 

INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(1, '��ġ�', 4000, '��ġ� �Դϴ�.', '02-871-6132');
INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(2, '�����', 4000, '����� �Դϴ�.', '02-871-6132');
INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(3, '��ġ������', 4000, '��ġ������ �Դϴ�.', '02-871-6132');
INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(4, '�̿���', 5000, '�̿��� �Դϴ�.', '02-871-6132');
INSERT INTO KOREAN(Kono, Komenu, Koprice, Koexplain, Kophone) VALUES(5, '�ߺ�����', 6000, '�ߺ����� �Դϴ�.', '02-871-6132');

INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(1, '�⺻ ���', 6000, '�⺻ ��� �Դϴ�.', '02-852-3133');
INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(2, '�� ���', 6000, '�� ��� �Դϴ�.', '02-852-3133');
INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(3, '�ſ� ���', 6000, '�ſ� ��� �Դϴ�.', '02-852-3133');
INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(4, '������', 3000, '������ �Դϴ�.', '02-852-3133');
INSERT INTO CUTLET(Cuno, Cumenu, Cuprice, Cuexplain, Cuphone) VALUES(5, '����', 2000, '���� �Դϴ�.', '02-852-3133');

INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(1, '�� ������ġ', 5000, '�� �Դϴ�.', '02-192-6574');
INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(2, 'ġ�� ������ġ', 5000, 'ġ�� �Դϴ�.', '02-192-6574');
INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(3, '������ ������ġ', 5000, '������ �Դϴ�.', '02-192-6574');
INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(4, '��ä ������ġ', 5000, '��ä �Դϴ�.', '02-192-6574');
INSERT INTO SANDWICH(Sano, Samenu, Saprice, Saexplain, Saphone) VALUES(5, '���� ������ġ', 5000, '���� �Դϴ�.', '02-192-6574');

INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(1, '�Ƹ޸�ī��', 3000, '�Ƹ޸�ī�� �Դϴ�.', '02-352-6014');
INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(2, 'īǪġ��', 4000, 'īǪġ�� �Դϴ�.', '02-352-6014');
INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(3, 'ī���', 4000, 'ī��� �Դϴ�.', '02-352-6014');
INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(4, '����������', 2000, '���������� �Դϴ�.', '02-352-6014');
INSERT INTO COFFEE(Cono, Comenu, Coprice, Coexplain, Cophone) VALUES(5, '��ũƼ', 5000, '��ũƼ �Դϴ�.', '02-352-6014');

-- Monday Order
INSERT INTO ORDER_INFO VALUES(1, '010-1030-6863', '02-872-6134', 5, 2, 8, 'yes', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(2, '010-6870-9098', '02-871-6132', 2, 1, 9, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(3, '010-7090-9008', '02-192-6574', 1, 2, 9, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(4, '010-1220-9477', '02-852-3133', 4, 1, 10, 'yes', 1, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(5, '010-1870-3463', '02-352-6014', 3, 2, 11, 'no', 1, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(6, '010-6570-6098', '02-192-6574', 1, 2, 12, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(7, '010-7520-9529', '02-852-3133', 5, 1, 12, 'yes', 1, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(8, '010-1670-9462', '02-852-3133', 4, 1, 12, 'yes', 1, '��������', 'card');
INSERT INTO ORDER_INFO VALUES(9, '010-6970-9078', '02-352-6014', 3, 2, 13, 'no', 1, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(10, '010-9970-3428', '02-192-6574', 1, 2, 14, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(11, '010-7570-9468', '02-872-6134', 3, 2, 14, 'yes', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(12, '010-7328-9429', '02-852-3133', 4, 1, 14, 'yes', 1, '����尩', 'cash');
INSERT INTO ORDER_INFO VALUES(13, '010-7470-1768', '02-352-6014', 3, 2, 14, 'no', 1, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(14, '010-6693-0384', '02-192-6574', 5, 2, 15, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(15, '010-9590-3968', '02-852-3133', 4, 4, 15, 'yes', 1, '�����տ�', 'card');
INSERT INTO ORDER_INFO VALUES(16, '010-9870-1288', '02-852-3133', 4, 1, 16, 'yes', 1, '����', 'cash');
INSERT INTO ORDER_INFO VALUES(17, '010-9893-0354', '02-352-6014', 3, 2, 17, 'no', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(18, '010-7419-9188', '02-852-3133', 4, 1, 17, 'yes', 1, '�߶��ּ���', 'cash');
INSERT INTO ORDER_INFO VALUES(19, '010-1270-1768', '02-352-6014', 3, 2, 17, 'no', 1, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(20, '010-7994-6763', '02-192-6574', 1, 2, 17, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(21, '010-4220-0488', '02-352-6014', 3, 2, 18, 'no', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(22, '010-6540-4464', '02-192-6574', 1, 2, 19, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(23, '010-3330-9977', '02-872-6134', 3, 2, 19, 'yes', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(24, '010-7629-9886', '02-192-6574', 1, 2, 20, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(25, '010-1173-9761', '02-852-3133', 4, 1, 20, 'yes', 1, '���� ��� ��', 'cash');
INSERT INTO ORDER_INFO VALUES(26, '010-9870-1238', '02-871-6132', 2, 8, 20, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(27, '010-7422-9828', '02-852-3133', 4, 1, 20, 'yes', 1, '������ ����', 'cash');
INSERT INTO ORDER_INFO VALUES(28, '010-1172-9728', '02-852-3133', 5, 9, 20, 'yes', 1, '��������', 'cash');
INSERT INTO ORDER_INFO VALUES(29, '010-3493-0373', '02-192-6574', 1, 2, 21, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(30, '010-7499-9808', '02-872-6134', 3, 2, 21, 'yes', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(31, '010-1770-9778', '02-872-6134', 1, 2, 21, 'yes', 1, '���� ����', 'cash');
INSERT INTO ORDER_INFO VALUES(32, '010-2990-8768', '02-852-3133', 4, 10, 21, 'no', 1, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(33, '010-2320-0188', '02-871-6132', 2, 1, 21, 'no', 1, 'n', 'card');

-- Tuesday Order
INSERT INTO ORDER_INFO VALUES(34, '010-3320-9420', '02-352-6014', 2, 2, 9, 'no', 2, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(35, '010-1170-0463', '02-852-3133', 1, 1, 9, 'yes', 2, '�߶��ּ���', 'cash');
INSERT INTO ORDER_INFO VALUES(36, '010-6780-9098', '02-352-6014', 5, 2, 9, 'no', 2, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(37, '010-7429-9889', '02-192-6574', 5, 2, 10, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(38, '010-2990-6748', '02-352-6014', 4, 2, 10, 'yes', 2, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(39, '010-7403-0334', '02-872-6134', 1, 2, 10, 'yes', 2, '�����մϴ�', 'card');
INSERT INTO ORDER_INFO VALUES(40, '010-5170-9758', '02-871-6132', 2, 1, 11, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(41, '010-9510-3118', '02-192-6574', 3, 2, 11, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(42, '010-0170-9008', '02-192-6574', 1, 2, 12, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(43, '010-1220-0911', '02-192-6574', 3, 2, 12, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(44, '010-7929-9588', '02-852-3133', 4, 1, 12, 'yes', 2, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(45, '010-6610-6467', '02-352-6014', 1, 2, 12, 'no', 2, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(46, '010-7770-9008', '02-192-6574', 1, 2, 12, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(47, '010-9370-3448', '02-852-3133', 2, 9, 12, 'yes', 2, '��������', 'cash');
INSERT INTO ORDER_INFO VALUES(48, '010-2289-0978', '02-192-6574', 1, 2, 13, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(49, '010-5770-3488', '02-852-3133', 5, 1, 14, 'yes', 2, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(50, '010-7800-1208', '02-352-6014', 5, 1, 15, 'yes', 2, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(51, '010-7769-9496', '02-871-6132', 2, 8, 16, 'no', 2, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(52, '010-8870-1299', '02-852-3133', 4, 1, 17, 'yes', 2, '������ ����', 'cash');
INSERT INTO ORDER_INFO VALUES(53, '010-7443-0344', '02-852-3133', 3, 9, 17, 'yes', 2, '��������', 'cash');
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
INSERT INTO ORDER_INFO VALUES(64, '010-6870-4498', '02-852-3133', 4, 1, 20, 'yes', 2, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(65, '010-9900-3478', '02-352-6014', 3, 2, 21, 'no', 2, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(66, '010-7070-1267', '02-192-6574', 1, 2, 22, 'no', 2, 'n', 'cash');

-- Wednesday Order
INSERT INTO ORDER_INFO VALUES(67, '010-7900-6408', '02-852-3133', 5, 9, 8, 'yes', 3, '��������', 'cash');
INSERT INTO ORDER_INFO VALUES(68, '010-6780-9088', '02-192-6574', 5, 8, 21, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(69, '010-9590-3668', '02-192-6574', 1, 2, 9, 'no', '3', 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(70, '010-7800-1238', '02-852-3133', 4, 1, 10, 'yes', 3, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(71, '010-9870-1238', '02-352-6014', 3, 2, 10, 'no', 3, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(72, '010-7520-9529', '02-192-6574', 3, 2, 11, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(73, '010-1670-9462', '02-852-3133', 3, 2, 11, 'yes', 3, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(74, '010-6970-9078', '02-872-6134', 5, 2, 11, 'yes', 3, '������ ������', 'card');
INSERT INTO ORDER_INFO VALUES(75, '010-9970-3428', '02-871-6132', 2, 1, 11, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(76, '010-7570-9468', '02-192-6574', 1, 2, 11, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(77, '010-7422-9828', '02-852-3133', 4, 1, 12, 'yes', 3, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(78, '010-1172-9728', '02-352-6014', 2, 2, 12, 'no', 3, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(79, '010-9870-1288', '02-192-6574', 1, 2, 12, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(80, '010-9893-0354', '02-852-3133', 2, 1, 12, 'yes', 3, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(81, '010-7419-9188', '02-192-6574', 3, 2, 13, 'no', 3, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(82, '010-1270-1768', '02-192-6574', 3, 2, 13, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(83, '010-7994-6763', '02-192-6574', 3, 2, 14, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(84, '010-4220-0488', '02-852-3133', 4, 1, 14, 'yes', 3, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(85, '010-7993-0334', '02-871-6132', 2, 1, 14, 'yes', 3, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(86, '010-7429-9889', '02-871-6132', 2, 8, 15, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(87, '010-2990-6748', '02-852-3133', 2, 1, 15, 'yes', 3, '������ ����', 'cash');
INSERT INTO ORDER_INFO VALUES(88, '010-7403-0334', '02-192-6574', 5, 2, 15, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(89, '010-1030-6863', '02-852-3133', 4, 1, 16, 'yes', 3, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(90, '010-6870-9098', '02-352-6014', 5, 2, 16, 'no', 3, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(91, '010-7090-9008', '02-192-6574', 1, 2, 17, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(92, '010-1220-9477', '02-852-3133', 5, 9, 17, 'yes', 3, '��������', 'cash');
INSERT INTO ORDER_INFO VALUES(93, '010-1870-3463', '02-192-6574', 3, 2, 18, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(94, '010-6570-6098', '02-192-6574', 2, 2, 19, 'no', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(95, '010-6540-4464', '02-872-6134', 3, 2, 19, 'yes', 3, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(96, '010-1270-1768', '02-852-3133', 4, 1, 20, 'yes', 3, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(97, '010-1170-0463', '02-852-3133', 4, 1, 20, 'yes', 3, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(98, '010-3330-9977', '02-852-3133', 4, 1, 20, 'yes', 3, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(99, '010-7629-9886', '02-852-3133', 4, 1, 21, 'yes', 3, '���� ����', 'card');

-- Thursday Order
INSERT INTO ORDER_INFO VALUES(100, '010-1173-9761', '02-192-6574', 4, 2, 8, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(101, '010-9870-1238', '02-192-6574', 5, 2, 8, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(102, '010-1770-9778', '02-872-6134', 2, 2, 9, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(103, '010-2990-8768', '02-352-6014', 2, 2, 9, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(104, '010-2320-0188', '02-192-6574', 1, 2, 9, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(105, '010-3320-9420', '02-872-6134', 3, 2, 10, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(106, '010-1170-0463', '02-192-6574', 2, 2, 10, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(107, '010-6780-9098', '02-192-6574', 1, 2, 10, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(108, '010-7770-9008', '02-852-3133', 1, 1, 10, 'yes', 4, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(109, '010-9370-3448', '02-192-6574', 5, 2, 11, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(110, '010-2289-0978', '02-192-6574', 3, 2, 11, 'yes', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(111, '010-5770-3488', '02-192-6574', 3, 2, 12, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(112, '010-7800-1208', '02-192-6574', 1, 2, 12, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(113, '010-7769-9496', '02-872-6134', 4, 2, 12, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(114, '010-8870-1299', '02-352-6014', 3, 2, 12, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(115, '010-7443-0344', '02-852-3133', 5, 9, 13, 'yes', 4, '��������', 'cash');
INSERT INTO ORDER_INFO VALUES(116, '010-1570-3268', '02-192-6574', 4, 2, 13, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(117, '010-2870-5268', '02-192-6574', 1, 2, 13, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(118, '010-7499-0379', '02-872-6134', 2, 2, 13, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(119, '010-5170-9758', '02-852-3133', 5, 1, 13, 'yes', 4, '���� ���ּŵ� �ſ�~', 'card');
INSERT INTO ORDER_INFO VALUES(120, '010-9510-3118', '02-852-3133', 4, 1, 14, 'yes', 4, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(121, '010-0170-9008', '02-871-6132', 3, 2, 14, 'no', 4, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(122, '010-1220-0911', '02-192-6574', 2, 2, 14, 'no', 4, 'n', 'cash'); 
INSERT INTO ORDER_INFO VALUES(123, '010-7929-9588', '02-872-6134', 5, 2, 15, 'yes', 1, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(124, '010-6610-6467', '02-871-6132', 2, 1, 15, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(125, '010-7911-2468', '02-192-6574', 3, 2, 15, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(126, '010-6870-4498', '02-852-3133', 4, 1, 16, 'yes', 4, '������ �����ּ���', 'cash');
INSERT INTO ORDER_INFO VALUES(127, '010-9900-3478', '02-352-6014', 1, 2, 17, 'no', 4, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(128, '010-7070-1267', '02-192-6574', 1, 2, 18, 'no', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(129, '010-7771-9459', '02-192-6574', 1, 2, 19, 'yes', 4, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(130, '010-7771-9459', '02-352-6014', 3, 2, 20, 'no', 4, 'n', 'card');

-- Friday Order
INSERT INTO ORDER_INFO VALUES(131, '010-7499-0379', '02-852-3133', 5, 9, 8, 'yes', 5, '��������', 'cash');
INSERT INTO ORDER_INFO VALUES(132, '010-5170-9758', '02-192-6574', 5, 8, 21, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(133, '010-7771-9459', '02-192-6574', 1, 2, 9, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(134, '010-9510-3118', '02-852-3133', 4, 1, 10, 'yes', 5, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(135, '010-6780-9088', '02-352-6014', 3, 2, 10, 'no', 5, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(136, '010-7929-9588', '02-871-6132', 3, 2, 11, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(137, '010-1220-0911', '02-872-6134', 3, 2, 11, 'yes', 5, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(138, '010-7443-0344', '02-872-6134', 5, 2, 11, 'yes', 5, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(139, '010-9970-3428', '02-871-6132', 2, 1, 11, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(140, '010-7570-9468', '02-192-6574', 1, 2, 11, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(141, '010-5170-9758', '02-852-3133', 4, 1, 12, 'yes', 5, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(142, '010-1172-9728', '02-352-6014', 2, 2, 12, 'no', 5, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(143, '010-9870-1288', '02-192-6574', 1, 2, 12, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(144, '010-9893-0354', '02-852-3133', 2, 1, 12, 'yes', 5, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(145, '010-7419-9188', '02-192-6574', 3, 2, 13, 'no', 5, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(146, '010-9870-1238', '02-192-6574', 3, 2, 13, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(147, '010-7994-6763', '02-192-6574', 3, 2, 14, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(148, '010-4220-0488', '02-852-3133', 4, 1, 14, 'yes', 5, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(149, '010-7993-0334', '02-871-6132', 2, 1, 14, 'yes', 5, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(150, '010-7429-9889', '02-871-6132', 2, 8, 15, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(151, '010-2990-6748', '02-852-3133', 2, 1, 15, 'yes', 5, '������ ����', 'cash');
INSERT INTO ORDER_INFO VALUES(152, '010-7403-0334', '02-192-6574', 5, 2, 15, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(153, '010-1030-6863', '02-852-3133', 4, 1, 16, 'yes', 5, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(154, '010-6870-9098', '02-352-6014', 5, 2, 16, 'no', 5, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(155, '010-7090-9008', '02-192-6574', 1, 2, 17, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(156, '010-1220-9477', '02-852-3133', 5, 9, 17, 'yes', 5, '��������', 'cash');
INSERT INTO ORDER_INFO VALUES(157, '010-1870-3463', '02-192-6574', 3, 2, 18, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(158, '010-6780-9098', '02-192-6574', 2, 2, 19, 'no', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(159, '010-6540-4464', '02-192-6574', 3, 2, 19, 'yes', 5, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(160, '010-3330-9977', '02-852-3133', 4, 1, 20, 'yes', 5, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(161, '010-7629-9886', '02-852-3133', 4, 1, 21, 'yes', 5, '���� ����', 'card');

-- Saturday Order
INSERT INTO ORDER_INFO VALUES(162, '010-1030-6863', '02-872-6134', 5, 2, 8, 'yes', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(163, '010-6870-9098', '02-871-6132', 2, 1, 9, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(164, '010-7090-9008', '02-192-6574', 1, 2, 9, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(165, '010-1220-9477', '02-852-3133', 4, 1, 10, 'yes', 6, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(166, '010-1870-3463', '02-352-6014', 3, 2, 11, 'no', 6, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(167, '010-6570-6098', '02-192-6574', 1, 2, 12, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(168, '010-1870-3463', '02-852-3133', 5, 1, 12, 'yes', 6, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(169, '010-1670-9462', '02-852-3133', 4, 1, 12, 'yes', 6, '��������', 'card');
INSERT INTO ORDER_INFO VALUES(170, '010-3330-9977', '02-352-6014', 3, 2, 13, 'no', 6, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(171, '010-9970-3428', '02-192-6574', 1, 2, 14, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(172, '010-7570-9468', '02-872-6134', 3, 2, 14, 'yes', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(173, '010-7911-2468', '02-852-3133', 4, 1, 14, 'yes', 6, '����尩', 'cash');
INSERT INTO ORDER_INFO VALUES(174, '010-7470-1768', '02-352-6014', 3, 2, 14, 'no', 6, '��������', 'card');
INSERT INTO ORDER_INFO VALUES(175, '010-6693-0384', '02-192-6574', 5, 2, 15, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(176, '010-9590-3968', '02-852-3133', 4, 4, 15, 'yes', 6, '�����տ�', 'card');
INSERT INTO ORDER_INFO VALUES(177, '010-9870-1288', '02-852-3133', 4, 1, 16, 'yes', 6, '����', 'cash');
INSERT INTO ORDER_INFO VALUES(178, '010-9893-0354', '02-352-6014', 3, 2, 17, 'no', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(179, '010-7419-9188', '02-852-3133', 4, 1, 17, 'yes', 6, '�߶��ּ���', 'cash');
INSERT INTO ORDER_INFO VALUES(180, '010-1220-0911', '02-352-6014', 3, 2, 17, 'no', 6, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(181, '010-8870-1299', '02-192-6574', 1, 2, 17, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(182, '010-4220-0488', '02-871-6132', 3, 2, 18, 'no', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(183, '010-9590-3668', '02-192-6574', 1, 2, 19, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(184, '010-3330-9977', '02-872-6134', 3, 2, 19, 'yes', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(185, '010-7629-9886', '02-192-6574', 1, 2, 20, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(186, '010-1173-9761', '02-852-3133', 4, 1, 20, 'yes', 6, '���� ��� ��', 'cash');
INSERT INTO ORDER_INFO VALUES(187, '010-9870-1238', '02-871-6132', 2, 8, 20, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(188, '010-7422-9828', '02-852-3133', 4, 1, 20, 'yes', 6, '������ ����', 'cash');
INSERT INTO ORDER_INFO VALUES(189, '010-3493-0373', '02-192-6574', 1, 2, 21, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(190, '010-7499-9808', '02-872-6134', 3, 2, 21, 'yes', 6, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(191, '010-7911-2468', '02-871-6132', 1, 2, 21, 'yes', 6, '���� ����', 'cash');
INSERT INTO ORDER_INFO VALUES(192, '010-7771-9459', '02-852-3133', 4, 10, 21, 'no', 6, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(193, '010-2320-0188', '02-871-6132', 2, 1, 21, 'no', 6, 'n', 'card');

-- Sunday Order
INSERT INTO ORDER_INFO VALUES(194, '010-1030-6863', '02-872-6134', 5, 2, 8, 'yes', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(195, '010-6870-9098', '02-871-6132', 2, 1, 9, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(196, '010-7771-9459', '02-192-6574', 1, 2, 9, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(197, '010-1220-9477', '02-852-3133', 4, 1, 10, 'yes', 0, '�����տ�', 'cash');
INSERT INTO ORDER_INFO VALUES(198, '010-1870-3463', '02-352-6014', 3, 2, 11, 'no', 0, '���ϰ�', 'card');
INSERT INTO ORDER_INFO VALUES(199, '010-2289-0978', '02-192-6574', 1, 2, 12, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(200, '010-1870-3463', '02-852-3133', 5, 1, 12, 'yes', 0, '���� ����', 'card');
INSERT INTO ORDER_INFO VALUES(201, '010-1670-9462', '02-852-3133', 4, 1, 12, 'yes', 0, '��������', 'card');
INSERT INTO ORDER_INFO VALUES(202, '010-6610-6467', '02-352-6014', 3, 2, 13, 'no', 0, '������', 'card');
INSERT INTO ORDER_INFO VALUES(203, '010-1570-3268', '02-192-6574', 1, 2, 14, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(204, '010-7570-9468', '02-872-6134', 3, 2, 14, 'yes', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(205, '010-9870-1288', '02-852-3133', 4, 1, 14, 'yes', 0, '����尩', 'cash');
INSERT INTO ORDER_INFO VALUES(206, '010-7470-1768', '02-352-6014', 3, 2, 14, 'no', 0, '��ī����', 'card');
INSERT INTO ORDER_INFO VALUES(207, '010-7900-6408', '02-192-6574', 5, 2, 15, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(208, '010-9590-3968', '02-852-3133', 4, 4, 15, 'yes', 0, '�����տ�', 'card');
INSERT INTO ORDER_INFO VALUES(209, '010-1570-3268', '02-852-3133', 4, 1, 16, 'yes', 0, '����', 'cash');
INSERT INTO ORDER_INFO VALUES(210, '010-9893-0354', '02-352-6014', 3, 2, 17, 'no', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(211, '010-7419-9188', '02-852-3133', 4, 1, 17, 'yes', 0, '�߶��ּ���', 'cash');
INSERT INTO ORDER_INFO VALUES(212, '010-2320-0188', '02-352-6014', 3, 2, 17, 'no', 0, '���߰�', 'card');
INSERT INTO ORDER_INFO VALUES(213, '010-7070-1267', '02-871-6132', 1, 2, 17, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(214, '010-4220-0488', '02-352-6014', 3, 2, 18, 'no', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(215, '010-6540-4464', '02-192-6574', 1, 2, 19, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(216, '010-7993-0334', '02-872-6134', 3, 2, 19, 'yes', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(217, '010-7629-9886', '02-192-6574', 1, 2, 20, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(218, '010-1173-9761', '02-852-3133', 4, 1, 20, 'yes', 0, '���� ��� ��', 'cash');
INSERT INTO ORDER_INFO VALUES(219, '010-9870-1238', '02-871-6132', 2, 8, 20, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(220, '010-6870-4498', '02-852-3133', 4, 1, 20, 'yes', 0, '������6��', 'cash');
INSERT INTO ORDER_INFO VALUES(221, '010-7900-6408', '02-852-3133', 5, 9, 20, 'yes', 0, '��������', 'cash');
INSERT INTO ORDER_INFO VALUES(222, '010-3493-0373', '02-192-6574', 1, 2, 21, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(223, '010-9590-3668', '02-872-6134', 3, 2, 21, 'yes', 0, 'n', 'card');
INSERT INTO ORDER_INFO VALUES(224, '010-1770-9778', '02-192-6574', 1, 2, 21, 'yes', 0, '���� ����', 'cash');
INSERT INTO ORDER_INFO VALUES(225, '010-2990-8768', '02-852-3133', 4, 10, 21, 'no', 0, 'n', 'cash');
INSERT INTO ORDER_INFO VALUES(226, '010-7911-2468', '02-871-6132', 2, 1, 21, 'no', 0, 'n', 'card');

-- Reviews
INSERT INTO REVIEW(RENO, ORDERNO, UPHONE, RESCORE, RECONTENT) VALUES(1, 1, '010-1030-6863', 9, '���־��.');
INSERT INTO REVIEW VALUES(2, 2, '010-6870-9098', 10, 'JMT');
INSERT INTO REVIEW VALUES(3, 3, '010-7090-9008', 10, '���� ��ǰ�̿���.');
INSERT INTO REVIEW VALUES(4, 4, '010-1220-9477', 10, '�ְ��� ��.');
INSERT INTO REVIEW VALUES(5, 6, '010-6570-6098', 10, '���ƴ�.');
INSERT INTO REVIEW VALUES(6, 7, '010-7520-9529', 5, '�Ӹ�ī���� ���Ծ��.');
INSERT INTO REVIEW VALUES(7, 8, '010-1670-9462', 9, '�ѹټ���!!');
INSERT INTO REVIEW VALUES(8, 10, '010-9970-3428', 10, '���� ���־��.');
INSERT INTO REVIEW VALUES(9, 9, '010-6970-9078', 9, '���� ���ƿ�.');
INSERT INTO REVIEW VALUES(10, 15, '010-9590-3968', 9, '�� �ְ��.');
INSERT INTO REVIEW VALUES(11, 26, '010-9870-1238', 10, '�� �ȿ��� ������.');
INSERT INTO REVIEW VALUES(12, 20, '010-7994-6763', 10, '�̰� ���� ������..');
INSERT INTO REVIEW VALUES(13, 28, '010-1172-9728', 10, '�� ���� ����.');
INSERT INTO REVIEW VALUES(14, 29, '010-3493-0373', 1, '���� �� ������ ��.');

INSERT INTO REVIEW(RENO, ORDERNO, UPHONE, RESCORE, RECONTENT) VALUES(15, 35, '010-1170-0463', 9, '�߶�޶�� �ߴµ� ���߶��ֽɤ�');
INSERT INTO REVIEW VALUES(16, 37, '010-7429-9889', 10, '������ġ�� ���⼭�� �Ծ��!');
INSERT INTO REVIEW VALUES(17, 42, '010-0170-9008', 10, '���� ��ǰ�̿���.');
INSERT INTO REVIEW VALUES(18, 39, '010-7403-0334', 10, '�ְ��� ��.');
INSERT INTO REVIEW VALUES(19, 43, '010-1220-0911', 10, '���ƴ�.');
INSERT INTO REVIEW VALUES(20, 40, '010-5170-9758', 5, '��¥ ������');
INSERT INTO REVIEW VALUES(21, 44, '010-7929-9588', 9, '��~�ܸ�!!');
INSERT INTO REVIEW VALUES(22, 47, '010-9370-3448', 10, '�������� �����Ա⵵ ���׿�');
INSERT INTO REVIEW VALUES(23, 51, '010-7769-9496', 9, '���� �Դ� ������.��');
INSERT INTO REVIEW VALUES(24, 52, '010-8870-1299', 9, '����������õ�ϰ� �ٴϴ��ߤФ�');
INSERT INTO REVIEW VALUES(25, 54, '010-1570-3268', 10, '�ʹ� ���־��!');
INSERT INTO REVIEW VALUES(26, 55, '010-2870-5268', 3, '¥����� ���� ���������ֱ���..');
INSERT INTO REVIEW VALUES(27, 58, '010-6780-9088', 10, '�� ���� ����.');
INSERT INTO REVIEW VALUES(28, 65, '010-9900-3478', 1, '�׳� ����� Ŀ�Ǹ���');

INSERT INTO REVIEW(RENO, ORDERNO, UPHONE, RESCORE, RECONTENT) VALUES(29, 68, '010-6780-9088', 9, '���־��.');
INSERT INTO REVIEW VALUES(30, 71, '010-9870-1238', 10, '���ֳ׿�');
INSERT INTO REVIEW VALUES(31, 70, '010-7800-1238', 10, '���� ��ǰ�̿���.');
INSERT INTO REVIEW VALUES(32, 74, '010-6970-9078', 10, '���� «���� ��');
INSERT INTO REVIEW VALUES(33, 79, '010-9870-1288', 10, '��¥ �ʹ� ���־��~');
INSERT INTO REVIEW VALUES(34, 82, '010-1270-1768', 9, '�ǰ��� ������!');
INSERT INTO REVIEW VALUES(35, 81, '010-7419-9188', 9, '�ѹټ���!!');
INSERT INTO REVIEW VALUES(36, 78, '010-1172-9728', 10, '���� ���־��.');
INSERT INTO REVIEW VALUES(37, 88, '010-7403-0334', 9, '���� ���ƿ�.');
INSERT INTO REVIEW VALUES(38, 92, '010-1220-9477', 9, '�� ¥�� ����');
INSERT INTO REVIEW VALUES(39, 93, '010-1870-3463', 10, '�ູ������ ���̿���');
INSERT INTO REVIEW VALUES(40, 94, '010-6570-6098', 10, '������ �ϳ׿�..');
INSERT INTO REVIEW VALUES(41, 96, '010-3330-9977', 10, '������ ���� �ֹ��ҰԿ�~');
INSERT INTO REVIEW VALUES(42, 99, '010-7629-9886', 1, '���ĸ��� �Ծ��.');

INSERT INTO REVIEW VALUES(43, 101, '010-9870-1238', 9, '���־�� ����');
INSERT INTO REVIEW VALUES(44, 102, '010-1770-9778', 10, '������!!');
INSERT INTO REVIEW VALUES(45, 107, '010-6780-9098', 10, '�츮 ���� ���� ����!');
INSERT INTO REVIEW VALUES(46, 109, '010-9370-3448', 10, '����� ���� ���ϰ� ���� ������');
INSERT INTO REVIEW VALUES(47, 104, '010-2320-0188', 10, '���ƴٴ� �Ҹ��� ���� ������ ��!');
INSERT INTO REVIEW VALUES(48, 110, '010-2289-0978', 5, '���� ���°� �ǽɵǳ׿�..');
INSERT INTO REVIEW VALUES(49, 115, '010-7443-0344', 9, '�ʹ� ���ִ� ���̳׿�~');
INSERT INTO REVIEW VALUES(50, 118, '010-7499-0379', 7, '���־��~');
INSERT INTO REVIEW VALUES(51, 119, '010-5170-9758', 9, '���� ���ƿ� ����');
INSERT INTO REVIEW VALUES(52, 126, '010-6870-4498', 9, '�����Դϴ�~');
INSERT INTO REVIEW VALUES(53, 130, '010-7771-9459', 10, '������ �� �ֹ��ҰԿ�~');
INSERT INTO REVIEW VALUES(54, 127, '010-9900-3478', 3, '�� ���� ���׿�');
INSERT INTO REVIEW VALUES(55, 125, '010-7911-2468', 10, '�ʹ� ���־ ������ �ָ���');
INSERT INTO REVIEW VALUES(56, 129, '010-7771-9459', 1, '��� ��������.');

INSERT INTO REVIEW VALUES(57, 135, '010-6780-9088', 9, '�ູ������ ���̿���!');
INSERT INTO REVIEW VALUES(58, 128, '010-7070-1267', 10, '�����!!');
INSERT INTO REVIEW VALUES(59, 132, '010-5170-9758', 8, '�Ϻ��� ��');
INSERT INTO REVIEW VALUES(60, 138, '010-7443-0344', 9, '�ְ��Դϴ� ����');
INSERT INTO REVIEW VALUES(61, 117, '010-2870-5268', 10, '���� �԰���� ��!');
INSERT INTO REVIEW VALUES(62, 139, '010-9970-3428', 10, '��ġ� ��õ�̿�Ф�');
INSERT INTO REVIEW VALUES(63, 140, '010-7570-9468', 9, '��~ ���ִ�!!');
INSERT INTO REVIEW VALUES(64, 146, '010-9870-1238', 10, '���� ���־��.');
INSERT INTO REVIEW VALUES(65, 123, '010-7929-9588', 9, '���� ���ƿ�.');
INSERT INTO REVIEW VALUES(66, 108, '010-7770-9008', 9, '������ ���ٰ� �������� �� ��Ű�� ��');
INSERT INTO REVIEW VALUES(67, 143, '010-9870-1288', 10, '����� ���� ������ ����');
INSERT INTO REVIEW VALUES(68, 151, '010-2990-6748', 4, '�̰Թ���');
INSERT INTO REVIEW VALUES(69, 152, '010-7403-0334', 10, '�� ���� �����̿���');
INSERT INTO REVIEW VALUES(70, 154, '010-6870-9098',  1, '��');

INSERT INTO REVIEW VALUES(71, 153, '010-1030-6863', 8, '���־��.');
INSERT INTO REVIEW VALUES(72, 155, '010-7090-9008', 10, 'JMT');
INSERT INTO REVIEW VALUES(73, 156, '010-1220-9477', 10, '���� ���ƿ�.');
INSERT INTO REVIEW VALUES(74, 158, '010-6780-9098', 10, '�ְ��� ��.');
INSERT INTO REVIEW VALUES(75, 157, '010-1870-3463', 10, '���ƴ�.');
INSERT INTO REVIEW VALUES(76, 136, '010-7929-9588', 5, '���� ������ �ʿ��� �� ���׿�.');
INSERT INTO REVIEW VALUES(77, 161, '010-7629-9886', 9, '�����̽�');
INSERT INTO REVIEW VALUES(78, 162, '010-1030-6863', 10, '���� ���־��.');
INSERT INTO REVIEW VALUES(79, 159, '010-6540-4464', 9, '���� ���ƿ�.');
INSERT INTO REVIEW VALUES(80, 165, '010-1220-9477', 9, '�ְ��Դϴ�!');
INSERT INTO REVIEW VALUES(81, 168, '010-1870-3463', 10, '������ �� �ðԿ�~');
INSERT INTO REVIEW VALUES(82, 169, '010-1670-9462', 10, '�̰� ���� ������ ����');
INSERT INTO REVIEW VALUES(83, 172, '010-7570-9468', 10, '���õ� ���̾�Ʈ ����');
INSERT INTO REVIEW VALUES(84, 170, '010-3330-9977', 8, '������ �б��� Ŀ�Ǹ�..��');

INSERT INTO REVIEW VALUES(85, 175, '010-6693-0384', 9, '���־��.');
INSERT INTO REVIEW VALUES(86, 178, '010-9893-0354', 10, '���ֳ׿�.');
INSERT INTO REVIEW VALUES(87, 173, '010-7911-2468', 10, '������ ��.');
INSERT INTO REVIEW VALUES(88, 176, '010-9590-3968', 10, '�ְ�!');
INSERT INTO REVIEW VALUES(89, 177, '010-9870-1288', 10, '���ƾ��Ф�');
INSERT INTO REVIEW VALUES(90, 178, '010-9893-0354', 5, '���� �����մϴ�~');
INSERT INTO REVIEW VALUES(91, 180, '010-1220-0911', 9, '���� �湮�� �����Դϴ�.');
INSERT INTO REVIEW VALUES(92, 184, '010-3330-9977', 10, '���� ���־��.');
INSERT INTO REVIEW VALUES(93, 186, '010-7629-9886', 9, '���� ���ƿ�.');
INSERT INTO REVIEW VALUES(94, 187, '010-9870-1238', 9, '�� �ְ��.');
INSERT INTO REVIEW VALUES(95, 188, '010-7422-9828', 10, '����..��');
INSERT INTO REVIEW VALUES(96, 190, '010-7499-9808', 4, '����� �ູ�ϼ���~~');
INSERT INTO REVIEW VALUES(97, 192, '010-7771-9459', 10, '������ �� �ֹ��ҰԿ�.');
INSERT INTO REVIEW VALUES(98, 161, '010-7629-9886', 1, '�� �ް� ���� ���� ��');

INSERT INTO REVIEW VALUES(99, 195, '010-6870-9098', 9, '���־��.');
INSERT INTO REVIEW VALUES(100, 193, '010-2320-0188', 10, 'JMT');
INSERT INTO REVIEW VALUES(101, 194, '010-1030-6863', 10, '���� ��ǰ�̿���.');
INSERT INTO REVIEW VALUES(102, 199, '010-2289-0978', 10, '���� ���׿�.');
INSERT INTO REVIEW VALUES(103, 200, '010-1870-3463', 10, '���־��!');
INSERT INTO REVIEW VALUES(104, 202, '010-6610-6467', 5, '���ֽ��ϴ�.');
INSERT INTO REVIEW VALUES(105, 201, '010-1670-9462', 9, '�ູ������ ���̿���Ф�');
INSERT INTO REVIEW VALUES(106, 198, '010-1870-3463', 10, '���ϰ� �Ծ Ŀ���� �峭 �ƴϿ���!');
INSERT INTO REVIEW VALUES(107, 203, '010-1570-3268', 9, '���� ���ƿ�.');
INSERT INTO REVIEW VALUES(108, 207, '010-7900-6408', 9, '�� �ְ��.');
INSERT INTO REVIEW VALUES(109, 210, '010-9893-0354', 10, '���� �ֹ��ҰԿ�. �ʹ� ���ֳ׿�.');
INSERT INTO REVIEW VALUES(110, 211, '010-7419-9188', 10, '��..');
INSERT INTO REVIEW VALUES(111, 212, '010-2320-0188', 10, '���ֽ��ϴ�.');
INSERT INTO REVIEW VALUES(112, 215, '010-6540-4464', 1, '����� �����մϴ�.');

INSERT INTO REVIEW VALUES(113, 214, '010-4220-0488', 8, '���־��.');
INSERT INTO REVIEW VALUES(114, 216, '010-7993-0334', 10, '���ֳ׿�.');
INSERT INTO REVIEW VALUES(115, 219, '010-9870-1238', 9, '���� ���Ƽ� ���ƿ�!!');
INSERT INTO REVIEW VALUES(116, 220, '010-6870-4498', 10, '��� �޴� �� ������');
INSERT INTO REVIEW VALUES(117, 224, '010-1770-9778', 10, '���ƴ�');
INSERT INTO REVIEW VALUES(118, 223, '010-9590-3668', 9, 'GOOD');
INSERT INTO REVIEW VALUES(119, 225, '010-2990-8768', 10, '����� �߰�');

-- Alarms
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(1, '������ �Ϸ�Ǿ����ϴ�.', '010-1030-6863', '02-872-6134');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(2, '������ �Ϸ�Ǿ����ϴ�.', '010-6870-9098', '02-871-6132');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(3, '������ �Ϸ�Ǿ����ϴ�.', '010-7090-9008', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(4, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-9477', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(5, '������ �Ϸ�Ǿ����ϴ�.', '010-6570-6098', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(6, '������ �Ϸ�Ǿ����ϴ�.', '010-7520-9529', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(7, '������ �Ϸ�Ǿ����ϴ�.', '010-1670-9462', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(8, '������ �Ϸ�Ǿ����ϴ�.', '010-6970-9078', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(9, '������ �Ϸ�Ǿ����ϴ�.', '010-9970-3428', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(10, '������ �Ϸ�Ǿ����ϴ�.', '010-7570-9468', '02-872-6134');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(11, '������ �Ϸ�Ǿ����ϴ�.', '010-7328-9429', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(12, '������ �Ϸ�Ǿ����ϴ�.', '010-7470-1768', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(13, '������ �Ϸ�Ǿ����ϴ�.', '010-6693-0384', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(14, '������ �Ϸ�Ǿ����ϴ�.', '010-9590-3968', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(15, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1288', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(16, '������ �Ϸ�Ǿ����ϴ�.', '010-9893-0354', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(17, '������ �Ϸ�Ǿ����ϴ�.', '010-7419-9188', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(18, '������ �Ϸ�Ǿ����ϴ�.', '010-1270-1768', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(19, '������ �Ϸ�Ǿ����ϴ�.', '010-7994-6763', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(20, '������ �Ϸ�Ǿ����ϴ�.', '010-4220-0488', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(21, '������ �Ϸ�Ǿ����ϴ�.', '010-6540-4464', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(22, '������ �Ϸ�Ǿ����ϴ�.', '010-3330-9977', '02-872-6134');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(23, '������ �Ϸ�Ǿ����ϴ�.', '010-7629-9886', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(24, '������ �Ϸ�Ǿ����ϴ�.', '010-1173-9761', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(25, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1238', '02-871-6132');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(26, '������ �Ϸ�Ǿ����ϴ�.', '010-7422-9828', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(27, '������ �Ϸ�Ǿ����ϴ�.', '010-1172-9728', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(28, '������ �Ϸ�Ǿ����ϴ�.', '010-3493-0373', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(29, '������ �Ϸ�Ǿ����ϴ�.', '010-7499-9808', '02-872-6134');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(30, '������ �Ϸ�Ǿ����ϴ�.', '010-1770-9778', '02-192-6574');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(31, '������ �Ϸ�Ǿ����ϴ�.', '010-2990-8768', '02-852-3133');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(32, '������ �Ϸ�Ǿ����ϴ�.', '010-2320-0188', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(33, '������ �Ϸ�Ǿ����ϴ�.', '010-3320-9420', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(34, '������ �Ϸ�Ǿ����ϴ�.', '010-1170-0463', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(35, '������ �Ϸ�Ǿ����ϴ�.', '010-6780-9098', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(36, '������ �Ϸ�Ǿ����ϴ�.', '010-7429-9889', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(37, '������ �Ϸ�Ǿ����ϴ�.', '010-2990-6748', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(38, '������ �Ϸ�Ǿ����ϴ�.', '010-7403-0334', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(39, '������ �Ϸ�Ǿ����ϴ�.', '010-5170-9758', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(40, '������ �Ϸ�Ǿ����ϴ�.', '010-9510-3118', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(41, '������ �Ϸ�Ǿ����ϴ�.', '010-0170-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(42, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-0911', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(43, '������ �Ϸ�Ǿ����ϴ�.', '010-7929-9588', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(44, '������ �Ϸ�Ǿ����ϴ�.', '010-6610-6467', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(45, '������ �Ϸ�Ǿ����ϴ�.', '010-7770-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(46, '������ �Ϸ�Ǿ����ϴ�.', '010-9370-3448', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(47, '������ �Ϸ�Ǿ����ϴ�.', '010-7800-1208', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(48, '������ �Ϸ�Ǿ����ϴ�.', '010-7769-9496', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(49, '������ �Ϸ�Ǿ����ϴ�.', '010-8870-1299', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(50, '������ �Ϸ�Ǿ����ϴ�.', '010-7443-0344', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(51, '������ �Ϸ�Ǿ����ϴ�.', '010-1570-3268', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(52, '������ �Ϸ�Ǿ����ϴ�.', '010-2870-5268', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(53, '������ �Ϸ�Ǿ����ϴ�.', '010-7499-0379', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(54, '������ �Ϸ�Ǿ����ϴ�.', '010-7900-6408', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(55, '������ �Ϸ�Ǿ����ϴ�.', '010-6780-9088', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(56, '������ �Ϸ�Ǿ����ϴ�.', '010-9590-3668', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(57, '������ �Ϸ�Ǿ����ϴ�.', '010-7800-1238', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(58, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1238', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(59, '������ �Ϸ�Ǿ����ϴ�.', '010-7993-0334', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(60, '������ �Ϸ�Ǿ����ϴ�.', '010-7911-2468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(61, '������ �Ϸ�Ǿ����ϴ�.', '010-6870-4498', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(62, '������ �Ϸ�Ǿ����ϴ�.', '010-9900-3478', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(63, '������ �Ϸ�Ǿ����ϴ�.', '010-7070-1267', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(64, '������ �Ϸ�Ǿ����ϴ�.', '010-7900-6408', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(65, '������ �Ϸ�Ǿ����ϴ�.', '010-6780-9088', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(66, '������ �Ϸ�Ǿ����ϴ�.', '010-9590-3668', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(67, '������ �Ϸ�Ǿ����ϴ�.', '010-7800-1238', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(68, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1238', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(69, '������ �Ϸ�Ǿ����ϴ�.', '010-7520-9529', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(70, '������ �Ϸ�Ǿ����ϴ�.', '010-1670-9462', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(71, '������ �Ϸ�Ǿ����ϴ�.', '010-6970-9078', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(72, '������ �Ϸ�Ǿ����ϴ�.', '010-9970-3428', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(73, '������ �Ϸ�Ǿ����ϴ�.', '010-7570-9468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(74, '������ �Ϸ�Ǿ����ϴ�.', '010-7422-9828', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(75, '������ �Ϸ�Ǿ����ϴ�.', '010-1172-9728', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(76, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1288', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(77, '������ �Ϸ�Ǿ����ϴ�.', '010-9893-0354', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(78, '������ �Ϸ�Ǿ����ϴ�.', '010-7419-9188', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(79, '������ �Ϸ�Ǿ����ϴ�.', '010-1270-1768', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(80, '������ �Ϸ�Ǿ����ϴ�.', '010-7994-6763', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(81, '������ �Ϸ�Ǿ����ϴ�.', '010-4220-0488', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(82, '������ �Ϸ�Ǿ����ϴ�.', '010-1173-9761', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(83, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1238', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(84, '������ �Ϸ�Ǿ����ϴ�.', '010-1770-9778', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(85, '������ �Ϸ�Ǿ����ϴ�.', '010-2990-8768', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(86, '������ �Ϸ�Ǿ����ϴ�.', '010-6610-6467', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(87, '������ �Ϸ�Ǿ����ϴ�.', '010-7911-2468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(88, '������ �Ϸ�Ǿ����ϴ�.', '010-6870-4498', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(89, '������ �Ϸ�Ǿ����ϴ�.', '010-7993-0334', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(90, '������ �Ϸ�Ǿ����ϴ�.', '010-7429-9889', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(91, '������ �Ϸ�Ǿ����ϴ�.', '010-2990-6748', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(92, '������ �Ϸ�Ǿ����ϴ�.', '010-7403-0334', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(93, '������ �Ϸ�Ǿ����ϴ�.', '010-1030-6863', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(94, '������ �Ϸ�Ǿ����ϴ�.', '010-6870-9098', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(95, '������ �Ϸ�Ǿ����ϴ�.', '010-7090-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(96, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(97, '������ �Ϸ�Ǿ����ϴ�.', '010-1870-3463', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(98, '������ �Ϸ�Ǿ����ϴ�.', '010-6570-6098', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(99, '������ �Ϸ�Ǿ����ϴ�.', '010-6540-4464', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(100, '������ �Ϸ�Ǿ����ϴ�.', '010-3330-9977', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(101, '������ �Ϸ�Ǿ����ϴ�.', '010-7629-9886', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(102, '������ �Ϸ�Ǿ����ϴ�.', '010-2320-0188', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(103, '������ �Ϸ�Ǿ����ϴ�.', '010-3320-9420', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(104, '������ �Ϸ�Ǿ����ϴ�.', '010-1170-0463', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(105, '������ �Ϸ�Ǿ����ϴ�.', '010-6780-9098', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(106, '������ �Ϸ�Ǿ����ϴ�.', '010-7770-9008', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(107, '������ �Ϸ�Ǿ����ϴ�.', '010-9370-3448', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(108, '������ �Ϸ�Ǿ����ϴ�.', '010-2289-0978', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(109, '������ �Ϸ�Ǿ����ϴ�.', '010-5770-3488', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(110, '������ �Ϸ�Ǿ����ϴ�.', '010-7800-1208', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(111, '������ �Ϸ�Ǿ����ϴ�.', '010-7769-9496', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(112, '������ �Ϸ�Ǿ����ϴ�.', '010-8870-1299', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(113, '������ �Ϸ�Ǿ����ϴ�.', '010-7443-0344', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(114, '������ �Ϸ�Ǿ����ϴ�.', '010-1570-3268', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(115, '������ �Ϸ�Ǿ����ϴ�.', '010-2870-5268', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(116, '������ �Ϸ�Ǿ����ϴ�.', '010-7499-0379', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(117, '������ �Ϸ�Ǿ����ϴ�.', '010-5170-9758', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(118, '������ �Ϸ�Ǿ����ϴ�.', '010-9510-3118', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(119, '������ �Ϸ�Ǿ����ϴ�.', '010-0170-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(120, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-0911', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(121, '������ �Ϸ�Ǿ����ϴ�.', '010-7929-9588', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(122, '������ �Ϸ�Ǿ����ϴ�.', '010-5170-9758', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(123, '������ �Ϸ�Ǿ����ϴ�.', '010-1172-9728', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(124, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1288', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(125, '������ �Ϸ�Ǿ����ϴ�.', '010-9893-0354', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(126, '������ �Ϸ�Ǿ����ϴ�.', '010-7419-9188', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(127, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1238', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(128, '������ �Ϸ�Ǿ����ϴ�.', '010-7994-6763', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(129, '������ �Ϸ�Ǿ����ϴ�.', '010-4220-0488', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(130, '������ �Ϸ�Ǿ����ϴ�.', '010-7993-0334', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(131, '������ �Ϸ�Ǿ����ϴ�.', '010-7429-9889', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(132, '������ �Ϸ�Ǿ����ϴ�.', '010-2990-6748', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(133, '������ �Ϸ�Ǿ����ϴ�.', '010-7403-0334', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(134, '������ �Ϸ�Ǿ����ϴ�.', '010-1030-6863', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(135, '������ �Ϸ�Ǿ����ϴ�.', '010-6870-9098', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(136, '������ �Ϸ�Ǿ����ϴ�.', '010-7090-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(137, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(138, '������ �Ϸ�Ǿ����ϴ�.', '010-1870-3463', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(139, '������ �Ϸ�Ǿ����ϴ�.', '010-6570-6098', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(140, '������ �Ϸ�Ǿ����ϴ�.', '010-1870-3463', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(141, '������ �Ϸ�Ǿ����ϴ�.', '010-1670-9462', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(142, '������ �Ϸ�Ǿ����ϴ�.', '010-3330-9977', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(143, '������ �Ϸ�Ǿ����ϴ�.', '010-9970-3428', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(144, '������ �Ϸ�Ǿ����ϴ�.', '010-7570-9468', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(145, '������ �Ϸ�Ǿ����ϴ�.', '010-7911-2468', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(146, '������ �Ϸ�Ǿ����ϴ�.', '010-7470-1768', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(147, '������ �Ϸ�Ǿ����ϴ�.', '010-6693-0384', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(148, '������ �Ϸ�Ǿ����ϴ�.', '010-9590-3968', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(149, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1288', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(150, '������ �Ϸ�Ǿ����ϴ�.', '010-9893-0354', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(151, '������ �Ϸ�Ǿ����ϴ�.', '010-7419-9188', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(152, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-0911', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(153, '������ �Ϸ�Ǿ����ϴ�.', '010-8870-1299', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(154, '������ �Ϸ�Ǿ����ϴ�.', '010-4220-0488', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(155, '������ �Ϸ�Ǿ����ϴ�.', '010-9590-3668', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(156, '������ �Ϸ�Ǿ����ϴ�.', '010-6610-6467', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(157, '������ �Ϸ�Ǿ����ϴ�.', '010-1570-3268', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(158, '������ �Ϸ�Ǿ����ϴ�.', '010-7570-9468', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(159, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1288', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(160, '������ �Ϸ�Ǿ����ϴ�.', '010-7470-1768', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(161, '������ �Ϸ�Ǿ����ϴ�.', '010-7900-6408', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(162, '������ �Ϸ�Ǿ����ϴ�.', '010-9590-3968', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(163, '������ �Ϸ�Ǿ����ϴ�.', '010-1570-3268', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(164, '������ �Ϸ�Ǿ����ϴ�.', '010-9893-0354', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(165, '������ �Ϸ�Ǿ����ϴ�.', '010-7419-9188', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(166, '������ �Ϸ�Ǿ����ϴ�.', '010-2320-0188', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(167, '������ �Ϸ�Ǿ����ϴ�.', '010-7070-1267', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(168, '������ �Ϸ�Ǿ����ϴ�.', '010-4220-0488', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(169, '������ �Ϸ�Ǿ����ϴ�.', '010-6540-4464', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(170, '������ �Ϸ�Ǿ����ϴ�.', '010-7993-0334', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(171, '������ �Ϸ�Ǿ����ϴ�.', '010-7629-9886', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(172, '������ �Ϸ�Ǿ����ϴ�.', '010-9900-3478', '02-352-6014');
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(173, '������ �Ϸ�Ǿ����ϴ�.', '010-7070-1267', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(174, '������ �Ϸ�Ǿ����ϴ�.', '010-7771-9459', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(175, '������ �Ϸ�Ǿ����ϴ�.', '010-7771-9459', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(176, '������ �Ϸ�Ǿ����ϴ�.', '010-7499-0379', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(177, '������ �Ϸ�Ǿ����ϴ�.', '010-5170-9758', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(178, '������ �Ϸ�Ǿ����ϴ�.', '010-7771-9459', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(179, '������ �Ϸ�Ǿ����ϴ�.', '010-9510-3118', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(180, '������ �Ϸ�Ǿ����ϴ�.', '010-6780-9088', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(181, '������ �Ϸ�Ǿ����ϴ�.', '010-7929-9588', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(182, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-0911', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(183, '������ �Ϸ�Ǿ����ϴ�.', '010-7443-0344', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(184, '������ �Ϸ�Ǿ����ϴ�.', '010-9970-3428', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(185, '������ �Ϸ�Ǿ����ϴ�.', '010-7570-9468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(186, '������ �Ϸ�Ǿ����ϴ�.', '010-7090-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(187, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(188, '������ �Ϸ�Ǿ����ϴ�.', '010-1870-3463', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(189, '������ �Ϸ�Ǿ����ϴ�.', '010-6780-9098', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(190, '������ �Ϸ�Ǿ����ϴ�.', '010-6540-4464', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(191, '������ �Ϸ�Ǿ����ϴ�.', '010-3330-9977', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(192, '������ �Ϸ�Ǿ����ϴ�.', '010-7629-9886', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(193, '������ �Ϸ�Ǿ����ϴ�.', '010-1030-6863', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(194, '������ �Ϸ�Ǿ����ϴ�.', '010-6870-9098', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(195, '������ �Ϸ�Ǿ����ϴ�.', '010-7090-9008', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(196, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(197, '������ �Ϸ�Ǿ����ϴ�.', '010-1870-3463', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(198, '������ �Ϸ�Ǿ����ϴ�.', '010-3330-9977', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(199, '������ �Ϸ�Ǿ����ϴ�.', '010-7629-9886', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(200, '������ �Ϸ�Ǿ����ϴ�.', '010-1173-9761', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(201, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1238', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(202, '������ �Ϸ�Ǿ����ϴ�.', '010-7422-9828', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(203, '������ �Ϸ�Ǿ����ϴ�.', '010-1172-9728', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(204, '������ �Ϸ�Ǿ����ϴ�.', '010-3493-0373', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(205, '������ �Ϸ�Ǿ����ϴ�.', '010-7499-9808', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(206, '������ �Ϸ�Ǿ����ϴ�.', '010-7911-2468', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(207, '������ �Ϸ�Ǿ����ϴ�.', '010-7771-9459', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(208, '������ �Ϸ�Ǿ����ϴ�.', '010-2320-0188', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(209, '������ �Ϸ�Ǿ����ϴ�.', '010-1030-6863', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(210, '������ �Ϸ�Ǿ����ϴ�.', '010-6870-9098', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(211, '������ �Ϸ�Ǿ����ϴ�.', '010-7771-9459', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(212, '������ �Ϸ�Ǿ����ϴ�.', '010-1220-9477', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(213, '������ �Ϸ�Ǿ����ϴ�.', '010-1870-3463', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(214, '������ �Ϸ�Ǿ����ϴ�.', '010-2289-0978', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(215, '������ �Ϸ�Ǿ����ϴ�.', '010-1870-3463', '02-352-6014'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(216, '������ �Ϸ�Ǿ����ϴ�.', '010-1670-9462', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(217, '������ �Ϸ�Ǿ����ϴ�.', '010-1173-9761', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(218, '������ �Ϸ�Ǿ����ϴ�.', '010-9870-1238', '02-871-6132'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(219, '������ �Ϸ�Ǿ����ϴ�.', '010-6870-4498', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(220, '������ �Ϸ�Ǿ����ϴ�.', '010-7900-6408', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(221, '������ �Ϸ�Ǿ����ϴ�.', '010-3493-0373', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(222, '������ �Ϸ�Ǿ����ϴ�.', '010-9590-3668', '02-872-6134'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(223, '������ �Ϸ�Ǿ����ϴ�.', '010-1770-9778', '02-192-6574'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(224, '������ �Ϸ�Ǿ����ϴ�.', '010-2990-8768', '02-852-3133'); 
INSERT INTO ALARM(ALARMNO, DONE, UPHONE, CPHONE) VALUES(225, '������ �Ϸ�Ǿ����ϴ�.', '010-7911-2468', '02-871-6132');
