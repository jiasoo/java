--����(join) �˻� : 2�� �̻��� ���̺��� �����Ͽ� �����͸� �˻��ϴ� ��
--                �Ϲ������� �ܷ�Ű�� �̿��ؼ� ���� �Ѵ�.
--                �����Ϸ��� ���̺��� �Ӽ��� �̸� �޶� ������ ������(������Ÿ��,ũ��)�� ���ƾ� �Ѵ�.
--                from ���� �˻��� �ʿ��� ��� ���̺��� ����
--                where ���� ���� �Ӽ��� ���� ���ƾ� ���� �ǹ��ϴ� ���������� ����
--                ��Ī�� �̿��� SQL �ۼ��ϴ� ���� ����.

--��������(Inner join)
-- select A���̺��.�÷���,A���̺��.�÷���,B���̺��.�÷���,B���̺��.�÷���
-- from A���̺��, B���̺��
-- where A���̺��.�÷��� = B���̺��.�÷���
--     **A���̺��.�÷��� = B���̺��.�÷��� �̶� �÷��� �ܷ�Ű�� �⺻�̴�.
--     **�� ���̺��� ��� ���� �÷��� ������ ������ ���

-- banana���� �ֹ��� ��ǰ�� �̸��� �˻��� ����.
select p.��ǰ�� from ��ǰ���̺� p, �ֹ����̺� o where p.��ǰ��ȣ = o.�ֹ���ǰ and o.�ֹ��� ='banana';

-- ���̰� 30���̻��� ���� �ֹ��� ��ǰ�� ��ȣ�� �ֹ�����, ���̸��� �˻�����
select c.���̸�, c.����, o.�ֹ���ǰ, o.�ֹ�����
from �����̺� c, �ֹ����̺� o
where c.�����̵� = o.�ֹ��� and c.���� >= 30;

select c.���̸� , c.����, o.�ֹ���ǰ, p.��ǰ��, o.�ֹ�����
from �����̺� c, �ֹ����̺� o, ��ǰ���̺� p
where c.�����̵� = o.�ֹ��� and o.�ֹ���ǰ = p.��ǰ��ȣ and c.���� >=30;

-- ��� ���� �ֹ��� ��ǰ�� ��ǰ���� �˻����� 
select p.��ǰ��
from �����̺� c, �ֹ����̺� o, ��ǰ���̺� p
where c.�����̵� = o.�ֹ��� and o.�ֹ���ǰ = p.��ǰ��ȣ and c.���̸�= '���';

-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�.(����)
select c.name, o.saleprice
from customer c, orders o
where c.custid = o.custid;

-- ��id�� �ֹ��� ��� ������ �� �Ǹž��� ���ϱ�(group by)
select custid, sum(saleprice)
from orders
group by custid;

-- ��id�� �ֹ��� ��� ������ �� �Ǹž��� ���ϰ�, ���̸����� ���� �Ͻÿ�
select c.custid,sum(o.saleprice)
from customer c, orders o
where c.custid = o.custid
group by c.custid
order by c.custid asc;

-- ���� �̸��� ���� �ֹ��� ������ �̸�, �ֹ� ��¥�� ���Ͻÿ�
select c.name, b.book, o.orderdate
from customer c, orders o, book b
where c.custid = o.custid and b.bookid = o.bookid;
order by c.name asc;

-- ������ 20,000�� �̻��� ������ �ֹ��� ���� �̸��� ������ �̸��� ���Ͻÿ�.



-- inner join, left join, right join
-- select �Ӽ�
-- from ���̺�1 inner jpin ���̺�2 on ��������
-- [where �˻�����]

-- banana ���� �ֹ��� ��ǰ�� �̸��� �˻��� ����.
select p.��ǰ��
from ��ǰ���̺� p,inner join �ֹ����̺� o on p.��ǰ��ȣ = o.�ֹ���ǰ
where o.�ֹ��� = 'banana';


-- ���̰� 30���̻��� ���� �ֹ��� ��ǰ�� ��ȣ�� �ֹ�����, ���̸��� �˻�����
select  c.���̸�, c.����, o.�ֹ���ǰ, o.�ֹ�����
from �����̺� c, �ֹ����̺� o
where c.�����̵� = o.�ֹ��� and c.���� >= 30;

select  c.���̸�, c.����, o.�ֹ���ǰ, o.�ֹ�����
from �����̺� c inner join �ֹ����̺� o on c.�����̵� = o.�ֹ��� 
where c.���� >= 30;

-----------------------------------------------------------------------------


create table AAA(
    id number PRIMARY key ,
    ename VARCHAR2(50)
);

create table BBB(
    id number PRIMARY key ,
    kname VARCHAR2(50)
);

insert into AAA values(1,'AAA');
insert into AAA values(2,'BBB');
insert into AAA values(3,'CCC');

insert into BBB values(1,'��');
insert into BBB values(2,'��');
insert into BBB values(4,'��');
insert into BBB values(5,'��');
commit;

-- left join : �������̺� �ִ� �� ��,
-- select �÷���, ...from ���̺�1 left join ���̺�2 on �������� [where �˻�����]
select a.id, a.ename,b.kname
from AAA a left join BBB b on a.id = b.id;

-- right join : ���������̺� �ִ� �� ��,
-- select �÷���, ...from ���̺�1 left join ���̺�2 on �������� [where �˻�����]
select a.id, a.ename, b.kname
from AAA a right join BBB b on a.id = b.id;

select a.id, a.ename,b.kname
from BBB b left join AAA a on a.id = b.id;

-- �����̺��� �������� ���̸�, �ֹ���Ǫ�� �ֹ����ڸ� �˻�����
select c.���̸�, o.�ֹ�����, o.�ֹ�����
from �����̺� c left join �ֹ����̺� o ON c.�����̵� = o.�ֹ���
order by c.���̸�;

-- ������ �������� ���� ���� �����Ͽ� ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�.
select c.name, o.saleprice
from customer c left join orders o ON c.custid = o.custid;

drop table orders;

--------------------------------------------------------------------------------

-- �������� : ����(Query = ����) �� ������ �ۼ��ϴ� ��
-- ������ ������ : ����� ����   => �񱳿�����
-- ������ ������ : ����� ������ => in , any , all , exists;

-- book ���̺��� ���� ��� ������ �̸��� �˻�����.
-- 1. ���� ��� �ݾ� : 
    select max(price) from book;
-- 2. ������ 35000�� �����̸�
    select bookname from book where price = 35000;

    select bookname from book where price =(select max(price) from book);
-- ������ ������ ���� �մ� ���� �̸��� �˻��Ͻÿ�.
-- 1. ������ ������ ���� �մ� �ڷḦ �˻� (�ߺ� ����)
    select distinct custid from orders;
    
    select name from customer where custid = 1 ;
    select name from customer where custid = 2 ;
    select name from customer where custid = 3 ;
    select name from customer where custid = 4 ;

    select name from customer where custid in (1,2,3,4);
-- subquery��������
    select name from customer where custid in (select distinct custid from orders);
-- join
    select distinct c.name from customer c ,orders o where c.custid = o.custid;
    
-- �̻�̵��� ������ ������ ������ ���� �̸��� ���̽ÿ�.
-- 1. �̻�̵�� bookid
select bookid from book whered publisfher = '�̻�̵��'--7,8
-- 2. bookid�� 7,8 �� custid
select custind from orders where bookind in(7,8);  -- 4 3 3
-- 3. custid 3,4 �� ���� �̸����
select name from customer where custid = 4 or custid=3;
select name from customer where custid in (3,4);

-- subquery
select name from customer
where custid in (select custid from orders
                    where bookid in (select bookid from book where publisher = '�̻�̵��'));
     
-- join
select distinct name
from customer c, orders o , book b
where c.custid = o.custid and b.bookid = o.bookid and b.publisher = '�̻�̵��';

-- _���� ������ å�� ������ ����̸�
    -- 1._���� ������ å�� bookid
select bookid from book where bookname like '_��%';
    -- 2. 1,2,3,7,8 �� custid
    select custid from orders where bookid in(1,2,3,7,8);
    -- 3. custid(1,1,4,1,4,3)�� ���̸�
    select name from customer where custid in (1,1,4,1,4,3);
    
    -- 4. subquery
     select name from customer 
        where custid in (select custid from orders 
                            where bookid in (select bookid from book where bookname like '_��%'));
-- ��յ������ݺ��� ��� �����̸�
    --1. ������ ��հ��� ; 14450
    select avg(price)from book;
    --2. 14450 ���� ��� �����̸�
    select bookname from book where price>14450;
    --3.subquery
select bookname from book where price>(select avg(price)from book);
-- ���޺�Ŷ�� ������ ������ü�� ���� ��ǰ���� ��ǰ��� �ܰ��� �˻�
    --1. ���޺�Ŷ�� ������ ������ü:����Ǫ��
    select ������ü from ��ǰ���̺� where ��ǰ�� = '���޺�Ŷ';
    --2. �Ѻ������� ��ǰ��� �ܰ��� �˻�
    select ��ǰ��,�ܰ� from ��ǰ���̺� where ������ü = '����Ǫ��';
    --3.subquery
     select ��ǰ��,�ܰ� from ��ǰ���̺� 
     where ������ü =(select ������ü from ��ǰ���̺� where ��ǰ�� = '���޺�Ŷ');
     
-- �������� ���� ���� ���� ���̸��� �������� �˻��غ���--���̸� ���̺� ������
    --1. ���� ���� ������ �ݾ�:5000
    select max(������) from �����̺�;
    --2.�������� 5000�� ���� ���̸�,�������� �˻�
    select ���̸�,������ from �����̺� where ������=5000;
    --3. subquery
    select ���̸�,������ from �����̺� where ������ = (select max(������) from �����̺�);

-- in : ��ġ�ϴ� ���� ������ �˻� ������ ��
-- not in : ��ġ���� ������ �˻� ������ ��
-- exists : �ϳ��� �����ϸ� �˻� ������ ��

-- banana ���� �ֹ��� ��ǰ�� ��ǰ��� ������ü�� �˻��غ���
select ��ǰ��,������ü
from ��ǰ���̺� 
where ��ǰ��ȣ in(select �ֹ���ǰ from �ֹ����̺� where �ֹ��� = 'banana');
-- banana ���� �ֹ��������� ��ǰ�� ��ǰ��� ������ü�� �˻��غ���
select ��ǰ��,������ü
from ��ǰ���̺� 
where ��ǰ��ȣ not in(select �ֹ���ǰ from �ֹ����̺� where �ֹ��� = 'banana');
-- ���ѽ�ǰ�� ������ ��� ��ǰ�� �ܰ����� ��� ��ǰ�� ��ǰ��,�ܰ�,������ü�� �˻��غ���
    -- ���ѽ�ǰ�� ������ ��ǰ�� �ܰ�(4500,1200)
    select max(�ܰ�) from ��ǰ���̺� where ������ü = '���ѽ�ǰ';
    --4500���� ��� ��ǰ�� ��ǰ��,�ܰ�,������ü�� �˻��غ���
    select ��ǰ��,�ܰ�,������ü
    from ��ǰ���̺�
    where �ܰ� >4500;
    --subquery
    select ��ǰ��,�ܰ�,������ü 
    from ��ǰ���̺� 
    where �ܰ� > (select max(�ܰ�) from ��ǰ���̺� where ������ü = '���ѽ�ǰ');
    
    --ALL (AND : �־��� ���� ��� �����ؾ� ��)
    --IN (OR : �־��� ���� �� �ϳ��� �����ϸ� ��)
    select ��ǰ��,�ܰ�,������ü 
    from ��ǰ���̺� 
    where �ܰ� > (select (�ܰ�) from ��ǰ���̺� where ������ü = '���ѽ�ǰ');
                  -- ALL(4500,1200)
    
-- 2022��3��15�� ��ǰ�� �ֹ��� ���� ���̸��� �˻��� ����
    --�ֹ����̺��� 2022��3��15�� ��ǰ�� �ֹ��� �ֹ��� ;apple
    select �ֹ��� from �ֹ����̺� where �ֹ����� = '2022-03-20';
    --�����̺��� apple�� ���̸� �˻� 
    select ���̸� from �����̺� where �����̵� = 'APPLE';
    --subquery
    select ���̸� from �����̺� where �����̵� = (select �ֹ��� from �ֹ����̺� where �ֹ����� = '2022-03-20');
    
    
    
-- 2022��3��15�� ��ǰ�� �ֹ��������� ���� ���̸��� �˻��� ����.


    select ���̸� from �����̺� where �����̵� ! = (select �ֹ��� from �ֹ����̺� where �ֹ����� = '2022-03-20');


