CREATE table BOOK(
bookid number,
bookname VARCHAR2(50) not null PRIMARY key,
publisher VARCHAR2(50),
price number
);
INSERT INTO BOOK
 VALUES(1,'�౸�ǿ���','�½�����',7000);
 INSERT INTO BOOK
 VALUES(2,'�౸�ƴ¿���','������',13000);
 INSERT INTO BOOK
 VALUES(3,'�౸������','���ѹ̵��',22000);
 INSERT INTO BOOK
 VALUES(4,'�������̺�','���ѹ̵��',35000);
 INSERT INTO BOOK
 VALUES(5,'�ǰܱ���','�½�����',8000);
 INSERT INTO BOOK
 VALUES(6,'�����ܰ躰���','�½�����',6000);
 INSERT INTO BOOK
 VALUES(7,'�߱����߾�','�̻�̵��',20000);
 INSERT INTO BOOK
 VALUES(8,'�߱�����Ź��','�̻�̵��',13000);
 INSERT INTO BOOK
 VALUES(9,'�ø����̾߱�','�ɼ���',7500);
 INSERT INTO BOOK
 VALUES(10,'Olympic Champions','Pearson',13000);
 COMMIT;
 