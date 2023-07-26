



--1.모든 도서의 이름과 가격을 검색하시오.
SELECT bookname,price from book;
--2.모든 도서의 가격과 이름을 검색하시오.
SELECT price,bookname from book;
--3.모든 도서의 도서번호,  도서이름, 출판사, 가격을 검색하시오.
SELECT bookid,bookname,publisher,price from book;
--4.도서 테이블에 있는 모든 출판사를 검색하시오.
SELECT publisher from book;
--5.도서 테이블에 있는 모든 출판사를 검색하시오.(중복제거)
select distinct publisher from book;
--6.가격이 10,000원 이상 20,000 이하인 도서를 검색하시오.
select * from book where price >= 10000 AND price<= 20000;
--7.출판사가 ‘굿스포츠’ 혹은 ‘대한미디어’인 도서를 검색하시오.
 select * from book where publisher = '국스포츠' or publisher = '대한미디어';
--8.'축구의 역사’를 출간한 출판사를 검색하시오.
 select * from book where publisher in ('축구의역사');
--9.도서이름에 ‘축구’가 포함된 출판사를 검색하시오.
 select * from book where publisher like '%축구%';
--10.도서이름의 왼쪽 두 번째 위치에 ‘구’라는 문자열을 갖는 도서를 검색하시오
select * from book where bookname like '_구%';
--11.축구에 관한 도서 중 가격이 20,000원 이상인 도서를 검색하시오.
select * from book where price >=20000;
--12.도서를 이름순으로 검색하시오.
select *from book order by bookname asc ;
--13.도서를 가격순으로 검색하고, 가격이 같으면 이름순으로 검색하시오.
select * from book order by pcrie asc , bookname asc ;
--14.도서를 가격의 내림차순으로 검색하시오. 만약 가격이 같다면 출판사의 오름차순으로 검색한다. 
select * from book order by pcrie desc , bookname asc ;
--도서번호가 1인 도서의 이름
select * from book where bookid = 1;
-- 가격이 20000원 이상인 도서의 이름
select * from 고객테이블 where price >= 20000;
-- 모든 고객의 이름 ,주소
select name,address from customer;

-- 2014년 7월 4일 ~ 7월 7일 사이에 주문받은 도서의 주문번호
SELECT orderid FROM ORDERS WHERE orderdate BETWEEN '2014-07-04' AND '2014-07-07';
-- 2014년 7월 5일 ~ 7월 7일 사이에 주문받은 도서를 제외한 도서의 주문 번호
SELECT orderid FROM ORDERS WHERE NOT orderdate BETWEEN '2014-07-04' AND '2014-07-07';
-- 성이 '김'씨인 고객의 이름과 주소
 select name,address from customer where name like '김%';
-- 성이 '김'씨이고 이름이 '아'로 끝나는 고객의 이름과 주소
select name,address from customer where name like '김%아';
