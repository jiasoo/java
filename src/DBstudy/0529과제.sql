
create table book(
    bookid number not null PRIMARY key,
    bookname VARCHAR2(50),
    publisher VARCHAR2(50),
    price number
    
);
CREATE TABLE orders(
    orderid number not null PRIMARY KEY,
    custid number not null,
    bookid number not null,
    saleprice number,
    orderdate date
);
create table customer(
    custid number not null primary key,
    name VARCHAR2(50),
    address VARCHAR2(50),
    phone VARCHAR2(50)
);
commit;

insert into CUSTOMER
values(1, '������','������ü����','000-5000-0001');
insert into CUSTOMER
values(2, '�迬��','���ѹ� ����','000-6000-0001');
insert into CUSTOMER
values(3, '��̶�','���ѹα�������','000-7000-0001');
insert into CUSTOMER
values(4, '�߽ż�','�̱�Ŭ������','000-5000-0001');
insert into CUSTOMER
values(5, '�ڼ���','���ѹα�����','000-5000-0031');
commit;