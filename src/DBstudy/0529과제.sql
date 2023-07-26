
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
values(1, '박지성','영국맨체스터','000-5000-0001');
insert into CUSTOMER
values(2, '김연아','대한민 서울','000-6000-0001');
insert into CUSTOMER
values(3, '장미란','대한민국강원도','000-7000-0001');
insert into CUSTOMER
values(4, '추신수','미국클리블랜드','000-5000-0001');
insert into CUSTOMER
values(5, '박세리','대한민국대전','000-5000-0031');
commit;