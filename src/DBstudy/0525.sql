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

-- MEMBER02, MEMBER04 ���̺� ����
DROP TABLE MEMBER02 ;
DROP TABLE MEMBER04 ;

-- ���̺� ���� 
-- MEMBER01 TABLE�� ������ ������ �����ؼ� C_MEM01 TABLE ������
    CREATE TABLE C_MEM01 AS SELECT * FROM member01;
-- MEMBER01 TABLE�� ������ �����ؼ� C_MEM02 TABLE ������
    CREATE TABLE C_MEM2 AS SELECT * FROM member01 WHERE 1 = 2 ;
INSERT INTO MEMBER01 VALUES(1, 'HONG', 'H111', 'ȫ�浿', 24, SYSDATE);
COMMIT;
SELECT * FROM MEMBER01 ;

-- �����̺� (�����̵�(PK),���̸�,����,���,����,������)
-- ���߿� P�ֱ�
CREATE TABLE �����̺�(
    �����̵� VARCHAR2(50),
    ���̸� VARCHAR2(50),
    ���� NUMBER,
    ��� VARCHAR2(50),
    ���� VARCHAR2(50),
    ������ NUMBER);

-- book ���̺� �����
-- ������ȣ(bookid,pk), �����̸�(bookname,90), ���ǻ�(publishre,50), ����(prise,7)
CREATE TABLE book���̺�(
    BOOKID VARCHAR2(50) NOT NULL PRIMARY KEY,
    BOOKNAME VARCHAR2(90),
    PUBLISHER VARCHAR2(50),
    PRICE NUMBER(7)

);

-- ��������
  -- NOT NULL : ���� �̿����� ����
  -- DEFAULT : �⺻���� �����ϴ� Ű����
    -- ������ NUMBER DEFAULT 0 => ���� �Է��Ҷ� �Է����� ������ 0���� ä������.
  -- CHECK : ���̺� ��Ȯ�ϰ� ��ȿ�� �����͸� �����ϱ� ���� Ư�� �Ӽ��� ���� ���������� ����
    -- AGE NUMBER CHECK >= 19 => 19 �̻��� ���ڸ� ����
    -- ��� NUMBER CHECK (���>=0 AND ���<= 1000) => ����� 0~1000����

--���̺� ���� ���� : ALTER
-- �÷� �߰� (ADD) : ALTER TABLE ���̺��̸� ADD  �÷��� �ڷ���(ũ��)[��������]
 --MEMBER01 ���̺� �ּҸ� ���� (M_ADDR VARCHAR2(100) DEFAULT '����';    
 ALTER TABLE MEMBER01 ADD M_ADDR VARCHAR2(100);
 COMMIT;
 ALTER TABLE MEMBER01 ADD M_ADDR2 VARCHAR2(100) DEFAULT '����' ;
 COMMIT;
 
 --�÷� ����(DROP COLUMN �÷���) : ALTER TABLE ���̺��̸� DROP COLUMN �÷���;
 ALTER TABLE MEMBER01 DROP COLUMN M_ADDR ;
 COMMIT;
 -- �����Ͱ� �־ ���� �ȴ�
 -- ���࿡ ������ �Ӽ��� �����ϴ� �ٸ� �Ӽ��� ������ ���� �ȵ�
 ALTER TABLE MEMBER01 DROP COLUMN M_ADDR2 ;
 COMMIT;
 
 -- �÷� ���� (MODIFY) : ALTER TABLE ���̺��̸� MODIFY �÷��� �ڷ���(ũ��)[��������]
  -- �����Ͱ� ���� ��� : �÷��� �ڷ����� ũ�⸦ ������� ������ ���ִ�.
  -- M_ADDR�� �����Ͱ� �����Ƿ� ���� �ڷ����� ũ�� ������� ����
    ALTER TABLE MEMBER01 MODIFY M_ADDR VARCHAR2(150) ;
  -- M_ADDR�� �����Ͱ� �����Ƿ� �ٸ� �ڷ������� ���� ���� 
     ALTER TABLE MEMBER01 MODIFY M_ADDR NUMBER(7) ;
     
  -- ����Ŀ�� �ִ� ��� ���� �ڷ����� ũ�� ������ ���� (��, ���� �ִ� �������� ũ�⺸�ٴ� Ŀ�� �ȴ�.)   
     ALTER TABLE MEMBER01 MODIFY M_ADDR2 VARCHAR2(50);
  -- �����Ͱ� �ִµ� �ٸ� �ڷ������� ���� �Ҷ� (�� ��õ)
    -- ���ڸ� ���ڷ� ������ �� �ȵȴ�.
     ALTER TABLE MEMBER01 MODIFY M_ADDR2 NUMBER;   
    -- ���ڸ� ���ڷ� �����Ҷ� �ȵȴ�
     -- ALTER TABLE MEMBER01 MODIFY M_AGE VARCHAR2(6);
     
  -- ���۾�(DML) : ����(INSERT ~INTO), ����(DELETE FROM), ����(UPDATE~SET), �˻�(SELECT~FROM)
  -- �����(DCL) : GRANT, REVOKE, COMMIT : ROLLBACK
    -- COMMIT : ���� ���¸� DB�� ����(����)
    -- ROLLBACK : COMMIT �������·� �ǵ�����.
    -- COMMIT -�۾�1 - �۾�2 - �۾�3 - COMMIT - �۾�4 - �۾�5 - ROLLBACK(�۾�4,�۾�5 �������·� �ǵ�����.
  -- ������ ���� (INSERT INTO ~ VALUES ~)
  -- ���1) INSERT INTO ���̺��̸� VALUES(���̺��� ��,);
        -- ���� ������� ��� ä���� �Ѵ�.
        -- ��� ä���� ������ ���� �̴�.
        -- ���� �ֱ� ������ NULL�� ������ �ִ�.
        -- (��, �Ӽ� NOT NULL �̸� ������ ���� ���� �Ѵ�.)
        -- ��¥�͹��ڴ� �ݵ�� '' (���)
        -- SYSDATE�� ���ó�¥�� ���ϴ� ����Ŭ ��ɾ� �̴�.
        INSERT INTO MEMBER01
        VALUES (2,'KIM', '111' , '��Ѹ�', 24, SYSDATE, 02, '����');
        
        INSERT INTO MEMBER01
        VALUES(3,'PARK', 'P111' , '�ڲ���', NULL,NULL,02,'����');
        
        INSERT INTO MEMBER01
        VALUES(4,'LEE', 'L111' , '������', NULL,'2023/01/22',02,'����');
        COMMIT;
        SELECT * FROM MEMBER01;
        
   -- ���2) INSERT INTO ���̺��̸�(�÷���,�÷���, ...)
   --        VALUES(�� ��,��,....)
   --        �÷���� �� �ݵ�� 1:1 ��Ī
   --        �Ӽ��� NOT NULL �ݵ�� �־�� �ȴ�.
        INSERT INTO MEMBER01(IDX)
        VALUES(5);
    
     