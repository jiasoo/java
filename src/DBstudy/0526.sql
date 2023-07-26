-- 조작어(DML) : 삽입(INSERT ~INTO), 삭제(DELETE FROM), 수정(UPDATE~SET), 검색(SELECT~FROM)
  -- 제어어(DCL) : GRANT, REVOKE, COMMIT : ROLLBACK
    -- COMMIT : 현재 상태를 DB에 적용(저장)
    -- ROLLBACK : COMMIT 이전상태로 되돌린다.
    -- COMMIT -작업1 - 작업2 - 작업3 - COMMIT - 작업4 - 작업5 - ROLLBACK(작업4,작업5 이전상태로 되돌린다.
  -- 데이터 삽입 (INSERT INTO ~ VALUES ~)
  -- 방법1) INSERT INTO 테이블이름 VALUES(테이블에들어갈 값,);
        -- 값은 순서대로 모두 채워야 한다.
        -- 모두 채우지 않으면 오류 이다.
        -- 값을 넣기 싫으면 NULL을 넣을수 있다.
        -- (단, 속성 NOT NULL 이면 무조건 값이 들어가야 한다.)
        -- 날짜와문자는 반드시 '' (사용)
        -- SYSDATE는 오늘날짜를 뜻하는 오라클 명령어 이다.
        INSERT INTO MEMBER01
        VALUES (2,'KIM', 'K111' , '김둘리', 24, SYSDATE, 02, '서울');
        
        INSERT INTO MEMBER01
        VALUES(3,'PARK', 'P111' , '박꺽정', NULL,NULL,02,'서울');
        
        INSERT INTO MEMBER01
        VALUES(4,'LEE', 'L111' , '이지매', NULL,'2023/01/22',02,'서울');
        COMMIT;
        SELECT * FROM MEMBER01;
        
   -- 방법2) INSERT INTO 테이블이름(컬럼명,컬럼명, ...)
   --        VALUES(들어갈 값,값,....)
   --        컬럼명과 들어갈 반드시 1:1 매칭
   --        속성이 NOT NULL 반드시 넣어야 된다.
        INSERT INTO MEMBER01(IDX)
        VALUES(5);
        INSERT INTO 고객테이블
        VALUES('APPIE','정소화',20,'gold','학생',1000);
        
        INSERT INTO 고객테이블
        VALUES('banana','김선우',25,'vip','간호사',2500);
        
        INSERT INTO 고객테이블
        VALUES('carrot','고명석',28,'gold','교사',4500);
        
        INSERT INTO 고객테이블
        VALUES('orange','김용욱',22,'silver','학생',0);
        
        INSERT INTO 고객테이블
        VALUES('melon','성원용',35,'gold','회사원',5000);
        
        INSERT INTO 고객테이블
        VALUES('pear','채광주',31,'silver','회사원',500);
        
        INSERT INTO 고객테이블
        VALUES('peach','오형준',NULL,'silver','의사',500);
        commit;
        
    CREATE TABLE 제품테이블(
    제품번호 VARCHAR2(50) NOT NULL PRIMARY KEY,
    제품명 VARCHAR2(50),
    재고량 NUMBER,
    단가 NUMBER,
    제조업체 VARCHAR2(50)
 );
    INSERT INTO 제품테이블
    VALUES ('p01','그냥만두',5000,4500,'대한식품');
    
    INSERT INTO 제품테이블
    VALUES ('p02','매운쫄면',2500,5500,'민국푸드');
    
    INSERT INTO 제품테이블
    VALUES ('p03','쿵떡파이',3600,2600,'한빛제과');
    
    INSERT INTO 제품테이블
    VALUES ('p04','맛난초콜릿',1250,2500,'한빛제과');

    INSERT INTO 제품테이블
    VALUES ('p05','얼큰라면',2200,1200,'대한식품');
    
    INSERT INTO 제품테이블
    VALUES ('p06','통통우동',1000,1550,'민국푸드');
    
    INSERT INTO 제품테이블
    VALUES ('p07','달콤비스킷',1650,1500,'한빛제과');
    
    COMMIT;
    
    CREATE TABLE 주문테이블(
    주문번호 VARCHAR2(50) NOT NULL,
    주문고객 VARCHAR2(50),
    주문제품 VARCHAR2(50),
    수량 NUMBER,
    배송지 VARCHAR2(60),
    주문일자 DATE,
    PRIMARY KEY(주문번호)
    );
    
    INSERT INTO 주문테이블
    VALUES('o01','apple','p03',10,'서울시마포구','2022-01-01');
    
     INSERT INTO 주문테이블
    VALUES('o02','melon','p01',5,'인천시계양구','2022-01-10');
    
     INSERT INTO 주문테이블
    VALUES('o03','banana','p06',45,'경기도부천시','2022-01-11');
    
     INSERT INTO 주문테이블
    VALUES('o04','carrot','p02',8,'부산시금정구','2022-02-01');
    
     INSERT INTO 주문테이블
    VALUES('o05','melon','p06',36,'경기도용인시','2022-02-20');
    
     INSERT INTO 주문테이블
    VALUES('o06','banana','p01',19,'충청북도보은군','2022-03-02');
    
     INSERT INTO 주문테이블
    VALUES('o07','apple','p03',22,'서울시영등포구','2022-03-15');
    
     INSERT INTO 주문테이블
    VALUES('o08','pear','p02',50,'강원도춘천시','2022-04-10');
    
     INSERT INTO 주문테이블
    VALUES('o09','banana','p04',15,'전라남도목포시','2022-04-11');
    
     INSERT INTO 주문테이블
    VALUES('o10','carrot','p03',20,'경기도안양시','2022-05-22');
    
    COMMIT;
    
    CREATE TABLE ORDERS(
ORDERID NUMBER NOT NULL PRIMARY KEY,
CUSTID NUMBER NOT NULL,
BOOKID NUMBER NOT NULL,
SALEPRICE NUMBER,
ORDERDATE DATE
);

INSERT INTO ORDERS
VALUES(1, 1, 1, 6000, '2014-07-01');
INSERT INTO ORDERS
VALUES(2, 1, 3, 2100, '2014-07-03');
INSERT INTO ORDERS
VALUES(3, 2, 5, 8000, '2014-07-03');
INSERT INTO ORDERS
VALUES(4, 3, 6, 6000, '2014-07-04');
INSERT INTO ORDERS
VALUES(5, 4, 7, 20000, '2014-07-05');
INSERT INTO ORDERS
VALUES(6, 1, 2, 12000, '2014-07-07');
INSERT INTO ORDERS
VALUES(7, 4, 8, 13000, '2014-07-07');
INSERT INTO ORDERS
VALUES(8, 3, 10, 12000, '2014-07-08');
INSERT INTO ORDERS
VALUES(9, 2, 10, 7000, '2014-07-09');
INSERT INTO ORDERS
VALUES(10, 3, 8, 13000, '2014-07-10');

COMMIT;
    -- 수정, 삭제는 반드시 조건식을 넣어야 한다.
    -- 조건식을 넣지 않으면 전체가 삭제 되거나 전체가 수정 된다.
    
    -- 데이터 삭제 (delete from 테이블이름 [where 조건식])
     -- 조건식이 있으면 조건식이 참인 것만 실행 된다.
     -- 조건식이 없으면 전체가 삭제 된다.
     delete from 고객테이블;
     select * from 고객테이블;
     select * from 제품테이블;
     --제조업체가 '한빛제과'인 행만 삭제
     delete from 제품테이블 where 제조업체 = '한빛제과';
     --제조업체가 '민국푸드'이면서 단가 3000이하인 행만 삭제
     delete from 제품테이블 where 제조업체 = '민구푸드' and 단가 <=3000;
   
     
     -- 데이터 수정 (update 테이블이름 set 변경내용 [where 조건식] )
     -- 조건식이 있으면 조건식 이 참인 것만 수정 된다.
     -- 조건식이 없으면 전제가 수정 된다.
     
     -- 제조업체를 대한푸드로 수정
     update 제품테이블 set 제조업체='대한푸드';
     -- 제조업체를 한빛제과로 수정 단, 단가가 2000이상인 행만 수정
     update 제품테이블 set 제조업체='한빛제과' where 단가 >= 2000;
     -- 제조업체를 대한식품, 재고량 = 10000으로 수정 단, 제품번호가 p01 또는 p05 행만 수정
     update 제품테이블 set 제조업체='대한식품' ,재고량 = 10000 where 제품번호 ='p01'or 제품번호= 'p05';
     COMMIT;
     SELECT * FROM 제품테이블;
     -- 제품테이블에서 제품번호가 p03인 제품의 제품명을 통큰파이로 수정하자
     update 제품테이블 set 제품명 = '통큰파이' where 제품번호 = 'p03';  
     -- 제품 테이블에 있는 모든 제품의 단가를 10% 인상해 보자
     update 제품테이블 set 단가 = 단가 * 1.1 ;
     SELECT * FROM 주문테이블;
     -- 주문테이블에서 주문일자가 2022-05-22인 주문내역을 삭제하자
     delete from 주문테이블 where 주문일자 ='2022-05-22';
     -- 주문테이블에서 주문일자가 2022-03 ~2022~04인 주문내역을 삭제하자
     delete from 주문테이블 where 주문일자 >='2022-03-01' AND 주문일자 <= '2022-04-30';
     -- 주문테이블의 주문일자를 모두 5일 수정하자
     update 주문테이블 set 주문일자 = 주문일자 + '5';
     -- 판매 데이터에서 정소화 고객이 주문한 제품의 주문 수량을 5개로 수정해보자
    COMMIT;
    
     
     
     