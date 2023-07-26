CREATE table BOOK(
bookid number,
bookname VARCHAR2(50) not null PRIMARY key,
publisher VARCHAR2(50),
price number
);
INSERT INTO BOOK
 VALUES(1,'축구의역사','굿스포츠',7000);
 INSERT INTO BOOK
 VALUES(2,'축구아는여자','나무수',13000);
 INSERT INTO BOOK
 VALUES(3,'축구의이해','대한미디어',22000);
 INSERT INTO BOOK
 VALUES(4,'골프바이블','대한미디어',35000);
 INSERT INTO BOOK
 VALUES(5,'피겨교본','굿스포츠',8000);
 INSERT INTO BOOK
 VALUES(6,'역도단계별기술','굿스포츠',6000);
 INSERT INTO BOOK
 VALUES(7,'야구의추억','이상미디어',20000);
 INSERT INTO BOOK
 VALUES(8,'야구를부탁해','이상미디어',13000);
 INSERT INTO BOOK
 VALUES(9,'올림픽이야기','심성당',7500);
 INSERT INTO BOOK
 VALUES(10,'Olympic Champions','Pearson',13000);
 COMMIT;
 