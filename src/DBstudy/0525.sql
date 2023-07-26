CREATE TABLE MEMBER01(
 IDX NUMBER NOT NULL PRIMARY KEY,
 M_ID VARCHAR2(50),
 M_PW VARCHAR2(50),
 M_NAME VARCHAR2(50),
 M_AGE NUMBER(3),
 M_REC DATE
);


CREATE TABLE MEMBER02(
 IDX NUMBER NOT NULL,
 M_ID VARCHAR2(50),
 M_PW VARCHAR2(50),
 M_NAME VARCHAR2(50),
 M_AGE NUMBER(3),
 M_REC DATE,
 PRIMARY KEY(IDX)
);

CREATE TABLE MEMBER03(
 IDX NUMBER NOT NULL PRIMARY KEY,
 M_ID VARCHAR2(50)NOT NULL PRIMARY KEY,
 M_PW VARCHAR2(50),
 M_NAME VARCHAR2(50),
 M_AGE NUMBER(3),
 M_REC DATE
);

CREATE TABLE MEMBER04(
 IDX NUMBER NOT NULL,
 M_ID VARCHAR2(50)NOT NULL,
 M_PW VARCHAR2(50),
 M_NAME VARCHAR2(50),
 M_AGE NUMBER(3),
 M_REC DATE,
 PRIMARY KEY(IDX, M_ID)
);

-- MEMBER02, MEMBER04 테이블 삭제
DROP TABLE MEMBER02 ;
DROP TABLE MEMBER04 ;

-- 테이블 복사 
-- MEMBER01 TABLE을 구조와 내용을 복사해서 C_MEM01 TABLE 만들자
    CREATE TABLE C_MEM01 AS SELECT * FROM member01;
-- MEMBER01 TABLE을 구조만 복사해서 C_MEM02 TABLE 만들자
    CREATE TABLE C_MEM2 AS SELECT * FROM member01 WHERE 1 = 2 ;
INSERT INTO MEMBER01 VALUES(1, 'HONG', 'H111', '홍길동', 24, SYSDATE);
COMMIT;
SELECT * FROM MEMBER01 ;

-- 고객테이블 (고객아이디(PK),고객이름,나이,등급,직업,적립금)
-- 나중에 P넣기
CREATE TABLE 고객테이블(
    고객아이디 VARCHAR2(50),
    고객이름 VARCHAR2(50),
    나이 NUMBER,
    등급 VARCHAR2(50),
    직업 VARCHAR2(50),
    적립금 NUMBER);

-- book 테이블 만들기
-- 도서번호(bookid,pk), 도서이름(bookname,90), 출판사(publishre,50), 가격(prise,7)
CREATE TABLE book테이블(
    BOOKID VARCHAR2(50) NOT NULL PRIMARY KEY,
    BOOKNAME VARCHAR2(90),
    PUBLISHER VARCHAR2(50),
    PRICE NUMBER(7)

);

-- 제약조건
  -- NOT NULL : 널을 이용하지 않음
  -- DEFAULT : 기본값을 지정하는 키워드
    -- 적립금 NUMBER DEFAULT 0 => 값을 입력할때 입력하지 않으면 0으로 채워진다.
  -- CHECK : 테이블에 정확하고 유효한 데이터를 유지하기 위해 특정 속성에 대한 제약조건을 지정
    -- AGE NUMBER CHECK >= 19 => 19 이상인 숫자만 받자
    -- 재고량 NUMBER CHECK (재고량>=0 AND 재고량<= 1000) => 재고량이 0~1000까지

--테이블 구조 변경 : ALTER
-- 컬럼 추가 (ADD) : ALTER TABLE 테이블이름 ADD  컬럼명 자료형(크기)[제약조건]
 --MEMBER01 테이블에 주소를 넣자 (M_ADDR VARCHAR2(100) DEFAULT '서울';    
 ALTER TABLE MEMBER01 ADD M_ADDR VARCHAR2(100);
 COMMIT;
 ALTER TABLE MEMBER01 ADD M_ADDR2 VARCHAR2(100) DEFAULT '서울' ;
 COMMIT;
 
 --컬럼 삭제(DROP COLUMN 컬럼명) : ALTER TABLE 테이블이름 DROP COLUMN 컬럼명;
 ALTER TABLE MEMBER01 DROP COLUMN M_ADDR ;
 COMMIT;
 -- 데이터가 있어도 삭제 된다
 -- 만약에 삭제할 속성의 참조하는 다른 속성이 있으면 삭제 안됨
 ALTER TABLE MEMBER01 DROP COLUMN M_ADDR2 ;
 COMMIT;
 
 -- 컬럼 변경 (MODIFY) : ALTER TABLE 테이블이름 MODIFY 컬럼명 자료형(크기)[제약조건]
  -- 데이터가 없는 경우 : 컬럼의 자료형과 크기를 마음대로 변경할 수있다.
  -- M_ADDR는 데이터가 없으므로 같은 자료형의 크기 마음대로 변경
    ALTER TABLE MEMBER01 MODIFY M_ADDR VARCHAR2(150) ;
  -- M_ADDR는 데이터가 없으므로 다른 자료형으로 변경 가능 
     ALTER TABLE MEMBER01 MODIFY M_ADDR NUMBER(7) ;
     
  -- 데이커가 있는 경우 같은 자료형의 크기 변경은 가능 (단, 기존 있는 데이터의 크기보다는 커야 된다.)   
     ALTER TABLE MEMBER01 MODIFY M_ADDR2 VARCHAR2(50);
  -- 데이터가 있는데 다른 자료형으로 변경 할때 (비 추천)
    -- 문자를 숫자로 변경할 때 안된다.
     ALTER TABLE MEMBER01 MODIFY M_ADDR2 NUMBER;   
    -- 숫자를 문자로 변경할때 안된다
     -- ALTER TABLE MEMBER01 MODIFY M_AGE VARCHAR2(6);
     
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
        VALUES (2,'KIM', '111' , '김둘리', 24, SYSDATE, 02, '서울');
        
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
    
     