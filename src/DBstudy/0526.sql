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
        VALUES (2,'KIM', 'K111' , '��Ѹ�', 24, SYSDATE, 02, '����');
        
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
        INSERT INTO �����̺�
        VALUES('APPIE','����ȭ',20,'gold','�л�',1000);
        
        INSERT INTO �����̺�
        VALUES('banana','�輱��',25,'vip','��ȣ��',2500);
        
        INSERT INTO �����̺�
        VALUES('carrot','���',28,'gold','����',4500);
        
        INSERT INTO �����̺�
        VALUES('orange','����',22,'silver','�л�',0);
        
        INSERT INTO �����̺�
        VALUES('melon','������',35,'gold','ȸ���',5000);
        
        INSERT INTO �����̺�
        VALUES('pear','ä����',31,'silver','ȸ���',500);
        
        INSERT INTO �����̺�
        VALUES('peach','������',NULL,'silver','�ǻ�',500);
        commit;
        
    CREATE TABLE ��ǰ���̺�(
    ��ǰ��ȣ VARCHAR2(50) NOT NULL PRIMARY KEY,
    ��ǰ�� VARCHAR2(50),
    ��� NUMBER,
    �ܰ� NUMBER,
    ������ü VARCHAR2(50)
 );
    INSERT INTO ��ǰ���̺�
    VALUES ('p01','�׳ɸ���',5000,4500,'���ѽ�ǰ');
    
    INSERT INTO ��ǰ���̺�
    VALUES ('p02','�ſ��̸�',2500,5500,'�α�Ǫ��');
    
    INSERT INTO ��ǰ���̺�
    VALUES ('p03','��������',3600,2600,'�Ѻ�����');
    
    INSERT INTO ��ǰ���̺�
    VALUES ('p04','�������ݸ�',1250,2500,'�Ѻ�����');

    INSERT INTO ��ǰ���̺�
    VALUES ('p05','��ū���',2200,1200,'���ѽ�ǰ');
    
    INSERT INTO ��ǰ���̺�
    VALUES ('p06','����쵿',1000,1550,'�α�Ǫ��');
    
    INSERT INTO ��ǰ���̺�
    VALUES ('p07','���޺�Ŷ',1650,1500,'�Ѻ�����');
    
    COMMIT;
    
    CREATE TABLE �ֹ����̺�(
    �ֹ���ȣ VARCHAR2(50) NOT NULL,
    �ֹ��� VARCHAR2(50),
    �ֹ���ǰ VARCHAR2(50),
    ���� NUMBER,
    ����� VARCHAR2(60),
    �ֹ����� DATE,
    PRIMARY KEY(�ֹ���ȣ)
    );
    
    INSERT INTO �ֹ����̺�
    VALUES('o01','apple','p03',10,'����ø�����','2022-01-01');
    
     INSERT INTO �ֹ����̺�
    VALUES('o02','melon','p01',5,'��õ�ð�籸','2022-01-10');
    
     INSERT INTO �ֹ����̺�
    VALUES('o03','banana','p06',45,'��⵵��õ��','2022-01-11');
    
     INSERT INTO �ֹ����̺�
    VALUES('o04','carrot','p02',8,'�λ�ñ�����','2022-02-01');
    
     INSERT INTO �ֹ����̺�
    VALUES('o05','melon','p06',36,'��⵵���ν�','2022-02-20');
    
     INSERT INTO �ֹ����̺�
    VALUES('o06','banana','p01',19,'��û�ϵ�������','2022-03-02');
    
     INSERT INTO �ֹ����̺�
    VALUES('o07','apple','p03',22,'����ÿ�������','2022-03-15');
    
     INSERT INTO �ֹ����̺�
    VALUES('o08','pear','p02',50,'��������õ��','2022-04-10');
    
     INSERT INTO �ֹ����̺�
    VALUES('o09','banana','p04',15,'���󳲵�������','2022-04-11');
    
     INSERT INTO �ֹ����̺�
    VALUES('o10','carrot','p03',20,'��⵵�Ⱦ��','2022-05-22');
    
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
    -- ����, ������ �ݵ�� ���ǽ��� �־�� �Ѵ�.
    -- ���ǽ��� ���� ������ ��ü�� ���� �ǰų� ��ü�� ���� �ȴ�.
    
    -- ������ ���� (delete from ���̺��̸� [where ���ǽ�])
     -- ���ǽ��� ������ ���ǽ��� ���� �͸� ���� �ȴ�.
     -- ���ǽ��� ������ ��ü�� ���� �ȴ�.
     delete from �����̺�;
     select * from �����̺�;
     select * from ��ǰ���̺�;
     --������ü�� '�Ѻ�����'�� �ุ ����
     delete from ��ǰ���̺� where ������ü = '�Ѻ�����';
     --������ü�� '�α�Ǫ��'�̸鼭 �ܰ� 3000������ �ุ ����
     delete from ��ǰ���̺� where ������ü = '�α�Ǫ��' and �ܰ� <=3000;
   
     
     -- ������ ���� (update ���̺��̸� set ���泻�� [where ���ǽ�] )
     -- ���ǽ��� ������ ���ǽ� �� ���� �͸� ���� �ȴ�.
     -- ���ǽ��� ������ ������ ���� �ȴ�.
     
     -- ������ü�� ����Ǫ��� ����
     update ��ǰ���̺� set ������ü='����Ǫ��';
     -- ������ü�� �Ѻ������� ���� ��, �ܰ��� 2000�̻��� �ุ ����
     update ��ǰ���̺� set ������ü='�Ѻ�����' where �ܰ� >= 2000;
     -- ������ü�� ���ѽ�ǰ, ��� = 10000���� ���� ��, ��ǰ��ȣ�� p01 �Ǵ� p05 �ุ ����
     update ��ǰ���̺� set ������ü='���ѽ�ǰ' ,��� = 10000 where ��ǰ��ȣ ='p01'or ��ǰ��ȣ= 'p05';
     COMMIT;
     SELECT * FROM ��ǰ���̺�;
     -- ��ǰ���̺��� ��ǰ��ȣ�� p03�� ��ǰ�� ��ǰ���� ��ū���̷� ��������
     update ��ǰ���̺� set ��ǰ�� = '��ū����' where ��ǰ��ȣ = 'p03';  
     -- ��ǰ ���̺� �ִ� ��� ��ǰ�� �ܰ��� 10% �λ��� ����
     update ��ǰ���̺� set �ܰ� = �ܰ� * 1.1 ;
     SELECT * FROM �ֹ����̺�;
     -- �ֹ����̺��� �ֹ����ڰ� 2022-05-22�� �ֹ������� ��������
     delete from �ֹ����̺� where �ֹ����� ='2022-05-22';
     -- �ֹ����̺��� �ֹ����ڰ� 2022-03 ~2022~04�� �ֹ������� ��������
     delete from �ֹ����̺� where �ֹ����� >='2022-03-01' AND �ֹ����� <= '2022-04-30';
     -- �ֹ����̺��� �ֹ����ڸ� ��� 5�� ��������
     update �ֹ����̺� set �ֹ����� = �ֹ����� + '5';
     -- �Ǹ� �����Ϳ��� ����ȭ ���� �ֹ��� ��ǰ�� �ֹ� ������ 5���� �����غ���
    COMMIT;
    
     
     
     