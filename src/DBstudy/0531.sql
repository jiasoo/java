-- SELECT [ALL |DISTINCT] �Ӽ��̸�(��)
-- FROM             ���̺��̸�(��)
--[WHERE            �˻�����(��)]
--[GROUP BY         �Ӽ��̸�]
--[HAVING           �˻�����(��)]
--[ORDER BY         �Ӽ��̸� [ASC | DESC]





-- �����Լ� : Ư���� ��츦 �����ϰ�� �Ϲ� �÷��� ���� ��� �Ұ�
--          Ư�� �Ӽ����� ��������� ����� ����� �˻��ϱ� ���� �Լ�
-- ���ǻ��� : NULL �Ӽ����� �����ϰ� ����Ѵ�.
--          WHERE ������ ����� �� ����, SELECT ���̳� HAVING�������� ��� ����
-- ���� : SUM(�÷���) : �ش� �÷��� �հ� ���ϱ� 
--       AVG(�÷���) : �ش� �÷��� ��� ���ϱ� 
--       MAX(�÷���) : �ش� �÷��� �ִ밪 ���ϱ� 
--       MIN(�÷���) : �ش� �÷��� �ּҰ� ���ϱ� 
--       COUNT(�⺻ �÷��� �Ǵ�*) : �ش� �÷��� ���� ���ϱ�

--��ǰ���̺��� ��� ��ǰ�� �ܰ� ����� �˻� �غ���.
    SELECT AVG(�ܰ�),SUM(�ܰ�),COUNT(*)  FROM ��ǰ���̺�;
--�Ѻ��������� ������ ��ǰ�� ��� �հ踦 ��ǰ ���̺��� �˻��غ���.(����)
    SELECT AVG(�ܰ�), SUM(�ܰ�),COUNT(*) FROM ��ǰ���̺� WHERE ������ü = '�Ѻ�����';
--�����̺� ���� �� �� ��ϵǾ� �ִ��� �˻��غ���.
    SELECT COUNT(*) FROM �����̺�;
--��ǰ���̺��� ������ü�� ���� �˻��غ���.(**�ߺ�����)
    SELECT COUNT(DISTINCT ������ü) FROM ��ǰ���̺�;
    
    SELECT * FROM orders;
--orders ���̺��� ���� �ֹ��� ������ �� �Ǹž�, ��� �� ���Ͻÿ�.
    SELECT SUM(saleprice) AS ���Ǹž� , AVG(saleprice) ��� FROM orders;
--orders ���̺� �� 2�� �迬�� ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
    SELECT SUM(saleprice) AS ���Ǹž� , AVG(saleprice) ��� FROM ORDERS WHERE CUSTID =2;
    
------------------------------------------------------------------------------
-- GROUP BY �Ӽ��� [HAVING ����]
-- Ư�� �Ӽ����� ���� Ʃ���� ��� �׷��� ����
-- GROUP BY ���� SELECT ���� �����Լ���, GROUP BY���� ����� �÷��� ��� ����
-- �����Լ� WHERE �������� ��� ���ϰ� HAVING ������ ��� ����
-- HAVING ���� GROUP BY�� ����� ������ ������ ���� �� �� ���
-- WHERE ���� GROUP BY ������ ������ ������ ������ �� ���
SELECT * FROM �ֹ����̺�;
SELECT * FROM ��ǰ���̺�;
-- �ֹ����̺��� �ֹ���ǰ�� ������ �հ踦 �˻�����
SELECT �ֹ���ǰ, SUM(����) FROM �ֹ����̺� GROUP BY �ֹ���ǰ;
-- ��ǰ���̺��� ������ü���� ��ǰ�� ������ ������ �ܰ��� �˻�����.
SELECT ������ü, COUNT(*)AS "��ǰ�� ��",MAX(�ܰ�) AS �ְ� FROM ��ǰ���̺� GROUP BY ������ü;
-- ��ǰ���̺��� ������ü���� ��ǰ�� ������ ������ �ܰ��� �˻�����.(��, ��ǰ���� 3���̻�)
SELECT ������ü, COUNT(*)AS "��ǰ�� ��",MAX(�ܰ�) AS �ְ� 
FROM ��ǰ���̺� GROUP BY ������ü HAVING COUNT(*) >=3;
--�����̺��� ������ ����� 1000�� �̻��� ��޿� ���� ��޺� ������ ������ ����� �˻��� ����.
SELECT ���, COUNT(*) AS ���� , AVG(������)
FROM �����̺� GROUP BY ��� HAVING AVG(������)>=1000;

SELECT * FROM orders;
--orders ���̺��� ������ �ֹ��� ������ �� ������ �� �Ǹž��� ���Ͻÿ�.
select custid,  count(*), sum(saleprice)
from orders group by custid order by custid asc;
--������ 8,000�� �̻��� ������ ������ ���� ���Ͽ� ���� �ֹ� ������ �Ѽ����� ���Ͻÿ�.
select custid,  count(*) 
from orders
WHERE saleprice>=8000
group by custid;
--������ 8,000�� �̻��� ������ ������ ���� ���Ͽ� ���� �ֹ� ������ �Ѽ����� ���Ͻÿ�.
--��, �� �� �̻� ������ �������Ѵ�
select custid,  count(*) 
from orders
WHERE saleprice>=8000
group by custid
having count(*) >=2;

--ORDERS ���̺��� �������� �� ���ž�(�������� ����ȣ�� 1������ ���� �ۼ�)
select sum(saleprice)from orders where custid =1;
--�������� ������ ������ ��(�������� ����ȣ�� 1������ ���� �ۼ�)
select count(*) from orders where custid =1;
--BOOK ���̺����� ������ �� ���� 
SELECT count(*) from book;
--BOOK ���̺����� ���ǻ��� �� ���� (�ߺ�����)
select count(distinct publisher) from book;

    