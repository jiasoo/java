-- ������� ���̺� primary key �߰�
-- ALTER TABLE ���̸��̸� ADD PRIMARY KEY (�÷���):

-- ������� ���̺��� ������ �ܷ�Ű�� ������
-- ALTER TABLE ���̺��̸� ADD CONSTRAINT FK�� FOREIGN KEY(�÷���)
    -- REFERENCES PK�� ��ġ�� ���̺��(�÷���);
    
ALTER TABLE �ֹ����̺� ADD CONSTRAINT FK�ֹ��� FOREIGN KEY (�ֹ���)
REFERENCES �����̺�(�����̵�);

ALTER TABLE �ֹ����̺� ADD CONSTRAINT FK�ֹ���ǰ FOREIGN KEY (�ֹ���ǰ)
REFERENCES ��ǰ���̺�(��ǰ��ȣ);


--FK�� �����ϸ� ������� ����/������ �� ����.
-- ���Ἲ ���� ���ǿ� ����� - �θ�Ű�� �����ϴ�.
INSERT INTO �ֹ����̺�(�ֹ���ȣ,�ֹ���,�ֹ���ǰ,����,�����,�ֹ�����)
VALUES('O12','MELON','P10',15,'���ֵ�','2022-06-01');
INSERT INTO �ֹ����̺�(�ֹ���ȣ,�ֹ���,�ֹ���ǰ,����,�����,�ֹ�����)
VALUES('O03','banana','P06',15,'���ֵ�','2022-06-01');

-- ra-02292: ���Ἲ ��������(c##JIASOO.FK_�ֹ���)�� ����Ǿ����ϴ� - �ڽ� ���ڵ尡 �߰ߵǾ����ϴ�
DELETE FROM �����̺� WHERE �����̵� = 'APPLE';
DELETE FROM ��ǰ���̺� WHERE ��ǰ��ȣ = 'P03';
-- �������� : �ֹ����̺��� �������� �ʾ����Ƿ� ���� ����
DELETE FROM ��ǰ���̺� WHERE ��ǰ��ȣ = 'P05';


-- ���̺� �����ϸ� �ܷ�Ű �����
CREATE TABLE CLIENTINFO (
    NAME VARCHAR2(20),
    AGE NUMBER -- ���̴� 0 ���� ũ�� 150 ���ٴ� �۴� 
        CONSTRAINT CHECK_AGE CHECK(AGE > 0 AND AGE < 150),
    GENDER VARCHAR2(3) -- ������ ���ĺ� M �Ǵ� W�� �Է� �޴´�.
        CONSTRAINT CHECK_GENDER CHECK(GENDER IN('M', 'W')),
    INFONO NUMBER -- ������ȣ�� INFO ���̺��� �⺻Ű��.
        CONSTRAINT PK_INFONO PRIMARY KEY
);
INSERT INTO CLIENTINFO VALUES('ȫ�浿',30,'M',1);
INSERT INTO CLIENTINFO VALUES('ȫ����',20,'W',2);
INSERT INTO CLIENTINFO VALUES('�谭',25,'M',3);
INSERT INTO CLIENTINFO VALUES('��ȫ��',40,'M',4);
INSERT INTO CLIENTINFO VALUES('����',44,'M',5);
INSERT INTO CLIENTINFO VALUES('�̳���',42,'W',6);
COMMIT;
SELECT *FROM CLIENTINFO;
    
-- �ܷ�Ű ���� ���̺� 
CREATE TABLE CLIENTJOIN(
    ID VARCHAR2(40) NOT NULL PRIMARY KEY,
    PW VARCHAR2(40),
    INFONO NUMBER,
    CONSTRAINT FK_INFONO FOREIGN KEY(INFONO) REFERENCES CLIENTINFO(INFONO)
);
COMMIT;
INSERT INTO CLIENTJOIN VALUES( '�ְ��浿88', '12345', 1);
INSERT INTO CLIENTJOIN VALUES( '������KK', '12345', 2);
INSERT INTO CLIENTJOIN VALUES( 'RLARKD', '12345', 3);
INSERT INTO CLIENTJOIN VALUES( 'PARK123', '12345', 4);
INSERT INTO CLIENTJOIN VALUES( '�߻������', '12345', 5);
INSERT INTO CLIENTJOIN VALUES( '��ۿ���', '12345', 6);

-- rownum : ����Ŭ ���ο��� �����ϴ� ���� �÷�, SQL ��ȸ ����� ������ ��Ÿ��
SELECT ROWNUM, K.*FROM(SELECT *FROM �����̺�) K WHERE ROWNUM BETWEEN 1 AND 3;

------------------------------------------------------------------------------

-- ��¥ / �ð� �Լ�
-- 1.sysdate : ����Ŭ���� �����ϴ� �ý��ۻ��� ���� ��¥ ��ȣ�� �ϴ� �Լ� , ���갡��
select sysdate -1 as ����, sysdate as ���� ,   sysdate +1 as ���� from  dual ;

-- 2.to+date(���ڿ�) : ���ڿ� �����͸� ��¥�� �����ͷ� ����
select sysdate from dual;
select sysdate + 20 from dual;
--����
-- select sysdate - '2023-06-01' from dual;
select trunc(sysdate - to_date('203-06-01')) from dual;

-- 3. to_char('��¥','��¥��') : ��¥�� �����͸� ������ �����ͷ� ����
select to_char(to_date('2023/06/05','yyyy-mm-dd'),'yyyymmdd') from dual;

-- 4. ADD_MONTHS(date, ����) : ��¥���� ��¥���� ������ �޸�ŭ ����(1:������,-1:������)
select sysdate, add_months(sysdate,4), add_months(sysdate,-4) from dual;

-- 5. last_day(date) : �ش� ���� ������ ��¥
select last_day(sysdate), last_day(add_months(sysdate,4)), last_day(add_months
(sysdate,3)) from dual;

-- 6. �ش� ������ ���� ����� ��¥(�̷�) : next_day(sysdate,'������')from dual;
select sysdate, next_day(sysdate,'�����'), next_day(sysdate,'������') from dual;

-- 7. �Ⱓ ���ϱ� : months_between(����¥,���۳�¥) : ������
select months_between(sysdate,'2023/01/01')from dual;
select trunc(months_between(sysdate, '2023/01/01')) from dual;
    
    