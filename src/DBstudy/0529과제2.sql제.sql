



--1.��� ������ �̸��� ������ �˻��Ͻÿ�.
SELECT bookname,price from book;
--2.��� ������ ���ݰ� �̸��� �˻��Ͻÿ�.
SELECT price,bookname from book;
--3.��� ������ ������ȣ,  �����̸�, ���ǻ�, ������ �˻��Ͻÿ�.
SELECT bookid,bookname,publisher,price from book;
--4.���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ�.
SELECT publisher from book;
--5.���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ�.(�ߺ�����)
select distinct publisher from book;
--6.������ 10,000�� �̻� 20,000 ������ ������ �˻��Ͻÿ�.
select * from book where price >= 10000 AND price<= 20000;
--7.���ǻ簡 ���½������� Ȥ�� �����ѹ̵��� ������ �˻��Ͻÿ�.
 select * from book where publisher = '��������' or publisher = '���ѹ̵��';
--8.'�౸�� ���硯�� �Ⱓ�� ���ǻ縦 �˻��Ͻÿ�.
 select * from book where publisher in ('�౸�ǿ���');
--9.�����̸��� ���౸���� ���Ե� ���ǻ縦 �˻��Ͻÿ�.
 select * from book where publisher like '%�౸%';
--10.�����̸��� ���� �� ��° ��ġ�� ��������� ���ڿ��� ���� ������ �˻��Ͻÿ�
select * from book where bookname like '_��%';
--11.�౸�� ���� ���� �� ������ 20,000�� �̻��� ������ �˻��Ͻÿ�.
select * from book where price >=20000;
--12.������ �̸������� �˻��Ͻÿ�.
select *from book order by bookname asc ;
--13.������ ���ݼ����� �˻��ϰ�, ������ ������ �̸������� �˻��Ͻÿ�.
select * from book order by pcrie asc , bookname asc ;
--14.������ ������ ������������ �˻��Ͻÿ�. ���� ������ ���ٸ� ���ǻ��� ������������ �˻��Ѵ�. 
select * from book order by pcrie desc , bookname asc ;
--������ȣ�� 1�� ������ �̸�
select * from book where bookid = 1;
-- ������ 20000�� �̻��� ������ �̸�
select * from �����̺� where price >= 20000;
-- ��� ���� �̸� ,�ּ�
select name,address from customer;

-- 2014�� 7�� 4�� ~ 7�� 7�� ���̿� �ֹ����� ������ �ֹ���ȣ
SELECT orderid FROM ORDERS WHERE orderdate BETWEEN '2014-07-04' AND '2014-07-07';
-- 2014�� 7�� 5�� ~ 7�� 7�� ���̿� �ֹ����� ������ ������ ������ �ֹ� ��ȣ
SELECT orderid FROM ORDERS WHERE NOT orderdate BETWEEN '2014-07-04' AND '2014-07-07';
-- ���� '��'���� ���� �̸��� �ּ�
 select name,address from customer where name like '��%';
-- ���� '��'���̰� �̸��� '��'�� ������ ���� �̸��� �ּ�
select name,address from customer where name like '��%��';
