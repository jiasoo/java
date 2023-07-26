-- PL/SQL : ����Ŭ���� �����ϴ� ���α׷��� ����� Ư���� ������ SQL�� Ȯ��
--          SQL�� ������ + ���(if, loop, for)�� ���
--          ������ ���α׷��� �����ϰ� �ϴ� ����Ŭ SQL ������
-- ���� : ����Ŭ  PL/SQL  Tutorial ����Ʈ https://www.tutorialspoint.com/plsql/index.htm\

-- 1. ���ν��� : return ���� ������� ����
--              �۾������� ������ ������ ���α׷��� ���� ����
--              ����� ������ �ǵ��� ������ out ���� ����ؾ� �Ѵ�.
--    �⺻���� : [������], ������, [������]
--     1.������ : DECLARE
--                ��������;
--     2.������ : BEGIN
--                SQL ����� ;
--     3.������ : EXCEPTION
--               END;

-- Hello, World! ����ϱ� 
-- String msg = "hello, world!" -> msg varchar2(50) := 'hello, world!'
-- System.out.println(����)      -> dbms_output.put_line(����);
-- ��. dbms_output.put_line()����ϱ� ���ؼ��� set serveroutput on;

-- 1) �͸� ���ν��� : ��ȸ��, ��������ʴ´�.
set SERVEROUTPUT on;
    DECLARE
        msg VARCHAR2(50) := 'Hello, world!';
    BEGIN
        dbms_output.put_line(msg);
    END;

-- �͸� ���ν����� Ȱ���� ��� ����
    -- 1) if ���ǽ� then
    --      ���ǽ��� ���̸� ������ ����(SQL ����);
    --    end if ;
    
    -- ���� i�� 10�̻� �̸� �����Ͱ��� �������
    DECLARE
        i number := 24;
    BEGIN
        if(i>=10)then
            dbms_output.put_line('i��' || i || '�̴�.');
        end if;
    END;
    
-- 2) if ���ǽ� then
--      ���ǽ��� ���̸� ������ ����(SQL ����);
--     else
--      ���ǽ��� �����̸� ������ ����(SQL ����);
--     end if;

 -- ���� i�� Ȧ�� ���� ¦�� ���� �Ǻ��ϴ� ���ν��� 
    DECLARE
        i number :=28;
    BEGIN
        if(mod(i,2)=0) then
            dbms_output.put_line('i' || i || '¦���̴�.');
        else
            dbms_output.put_line('i' || i || 'Ȧ���̴�.');
        end if;
    END;

    DECLARE
        i number :=3;
        res VARCHAR2(50);
    BEGIN
        if(mod(i,2)=0) then
            res := '¦��';
        else
            res := 'Ȧ��';
        end if;
            dbms_output.put_line('i' || i || '��' || res || '�̴�.');
    END;
    
-- 3) if ���ǽ� then 
--      ���๮(SQL ����) ;
--     elsif ���ǽ� then
--      ���๮(SQL ����);
--     elsif ���ǽ� then
--      ���๮(SQL ����);
--     [else ���๮;   ]
--     end if;

    DECLARE
        i int := 80;
        hak VARCHAR2(50);
    BEGIN
        if(i>=90)then
            hak := 'A����';
        elsif   (i>=80)then
            hak := 'B����';
        elsif   (i>=70)then
            hak := 'C����';
        else hak := 'F����';
        end if;
        dbms_output.put_line('����� ������'|| hak ||' �Դϴ�.');
    END;
    
-- �ݺ��� : for��, while��, loop��
-- 1) for ��
--    for ���� in �ʱⰪ .. ������ loop
--        �ݺ������� ����(SQL��)
--    end loop;

-- 1-10���� ����ϴ� ���ν���

    DECLARE
        i number ;
    BEGIN
        for i in 1..10 loop
         dbms_output.put_line('i = ' || i);
        end loop;
    END;
    
    
    DECLARE
    BEGIN
        for cnt in 11..20 loop
         dbms_output.put_line('cnt = ' || cnt);
        end loop;
    END;
    
 -- 1-10���� ¦���� ���
    DECLARE
        
    BEGIN
      for cnt in 1 .. 10 loop
      if(mod(cnt,2)=0) then
      dbms_output.put_line('cnt = ' || cnt);
      end if;
      end loop;
    end;
 
 -- 1-10���� ¦������ ���   
     DECLARE
        i number := 0 ;
    BEGIN
      for cnt in 1 .. 10 loop
        if(mod(cnt,2)=0) then
         i := i + cnt;
         end if;
      end loop;
      dbms_output.put_line('¦���� ����'||i);
    end;
    
-- 2) while ��
-- DECLARE
-- ����(�ʱ��)
-- BEGIN
--  WHILE ���ǽ� LOOP
--      ������ ����;
--      ������;
--  END LOOP;
-- END;

-- 1-10 �������
    DECLARE
        i number := 1;
    BEGIN
        while i<11 loop
        
        dbms_output.put_line('i = ' || i);
        i:= i+1;
        
        end loop;
    END;

-- 1-10 ���� ¦���� ���
DECLARE
        i number := 1;
    BEGIN
        while i<11 loop
         if(mod(i,2)=0) then
        dbms_output.put_line('i = ' || i);
        end if;
        i:= i+1;      
        end loop;       
    END;


-- 1-10 ���� ¦���� �� ���
   DECLARE
        i number := 1;
        s number := 0;
    BEGIN
        while i<11 loop
         if(mod(i,2)=0) then
        s:= s+i;
        end if;
        i:= i+1;      
        end loop;       
        dbms_output.put_line('�հ� : ' ||s);
    END;
    
-- 3-1) loop 
-- DECLARE                                     DECLARE
-- ����(�ʱ��)                                    ����(�ʱ��)
-- BEGIN                                       BEGIN
-- LOOP                                        LOOP
--      ������ ����;                                 ������ ����;
--      if(�������� ���ǽ�) then                      exit when ���ǽ�;(�������� ���ǽ�)
--      exit;                                      ������;                                     
--      end if;                                    end loop;
--      ������;                                 END;
--  END LOOP;
-- END;    

-- 1-10 ���� ���
    DECLARE
        i number :=1;
    BEGIN
        LOOP
            dbms_output.put_line('i = ' || i);
            if(i>=10)then   exit;
            end if;       
        i := i+1;
     END LOOP;
    END;
      
     DECLARE
        i number :=5;
    BEGIN
        LOOP
            dbms_output.put_line('i = ' || i);
            exit when (i>=10);
        i := i + 1;
     END LOOP;
    END;
    
-------------------------------------------------------------------------------

-- ���� ���ν���
-- ����) create [or replace] procedure �̸� as
--      begin
--            ����(update, insert, delete�� �Ϲ� sql�� ����, select�� ���� �ٸ���)
--      end;
 
-- customer ���̺��� custid�� 2�� �ڷ��� �̸��� '�Ѹ�'�� ��������.
-- 1.���ν��� ����
    CREATE PROCEDURE ch_name as
    begin
        update customer set name = '�Ѹ�' where custid = 2;
    end;
    
     CREATE PROCEDURE ch_name2 as
    begin
        update customer set name = '�Ѹ�' where custid = 2;
    end;
    
    select *from customer order by custid ;

-- 2.���ν��� ���� : EXEC ���ν����̸�;
    EXEC ch_name;
-- ���� ��� Ȯ��    
    select *from customer order by custid ;
    
-- �ܺο��� custid�� �̸��� �޾Ƽ� customer ���̺��� �����ϴ� ���ν����� ������
-- �ܺο��� ������ �޴´� => �Ű�����,����, => IN(��������)
-- �ܺη� ������ ������  =>     return   => OUT
-- ���࿡ Ư�� ���̺��� ������ Ÿ���� �� �� : ���̺�.�÷�%type
--CREATE PROCEDURE ch_name3(p_name in customer.name%type , p_custid in customer.custid%type) as
    CREATE PROCEDURE ch_name3(p_name  customer.name%type , p_custid  customer.custid%type) as
    BEGIN
        update customer set name = p_name where custid = p_custid ;
    END;
    
-- ����
exec ch_name3('�Ӳ���', 2);
exec ch_name3('������', 4);
select * from customer;

-- customer ���̺� 6�� ����� ���ѹα� ��⵵ 010-1414-1414 �� ������ �����ϴ� ���ν��� ����
create PROCEDURE ins_customer as
begin
    insert into customer(custid, name, address, phone)
    values(6,'�����','���ѹα� ��⵵','00-8989-8989');
end;

-- ����
exec ins_customer;
select * from customer;

-- customer ���̺� ��ȣ,�̸�,�ּ�,��ȭ��ȣ�� �Է¹޾� ���� ���ν��� ����
create PROCEDURE ins_customer2(p_custid customer.custid%type,p_name customer.name%type,
p_address customer.address%type,p_phone customer.phone%type) as
BEGIN
   insert into customer(custid, name, address, phone)
    values(p_custid, p_name, p_address, p_phone);
END;

exec ins_customer2(7,'�̰���',null,null);

-- customer ���̺� ��ȣ�� �޾Ƽ� �����ϴ� ���ν��� ����
create PROCEDURE ins_customer3(p_custid customer.custid%type)as
BEGIN
    DELETE from customer where custid = p_custid;
end;
exec ins_customer3(7);
select * from customer;

-- ** begin ~end ; ��Ͼȿ��� ���Ǵ� select��
--  select �÷�
--  into ���庯��(����� ����)
--  from ���̺��̸� 
--  where ���ǽ�

-- Ư¡ : where ���ǽ��� ����Ͽ� ����� �ϳ��� ������ ����
--       ���� ����� into ������ �մ� ���庯���� ��������

DECLARE
    v_name customer.name%type;
    v_phone customer.phone%type;
BEGIN
    select name,phone into v_name, v_phone
    from customer
    where custid = 2;
    dbms_output.put_line('customer name : '|| v_name);
    dbms_output.put_line('customer name : '|| v_phone);
END;

DECLARE
  v_customer customer%rowtype;
BEGIN
    select * into v_customer
    from customer
    where custid = 2;
    dbms_output.put_line('customer name : '|| v_customer.name);
    dbms_output.put_line('customer phone : '|| v_customer.phone);
    dbms_output.put_line('customer address : '|| v_customer.address);
    dbms_output.put_line('customer custid : '|| v_customer.custid);
END;

select * from book;

-- customer���̺� �����͸� �Է��ؼ� ���� ������ ������ �������͸� ������ ������ ����
-- ( �⺻Ű�� �������� ������ �־�� �Ѵ�)

    create PROCEDURE chk_customer(
        p_name customer.name%type,
        p_address customer.address%type,
        p_phone customer.phone%type
        )as
        cnt number := 0 ;
    BEGIN
        select count(*)
        into cnt
        from customer
        where name = p_name and phone = p_phone  ;
        
        if(cnt = 0)then
          -- ����
            insert into customer(custid, name, address, phone)
            values(customer_seq.nextval,p_name,p_address,p_phone );
        else
          -- ������Ʈ
          update customer set name = p_name, address= p_address,phone= p_phone where name = p_name and phone = p_phone;
        end if; 
    END;
 select * from customer;
 exec chk_customer('�Ѹ�','���ֵ�','000-6000-0001');
 exec chk_customer('�Ѹ�','�︪��','000-1004-0001');
 
 -- out�� �̿��ؼ� ���ν��� ����� ��������
 -- book ���̺��� ����Ǿ� �ִ� ������ ��� ������ ��ȯ�ϴ� ���ν���
 select * from book;
 select avg(price) from book;
 
 create procedure avg_price(avg_val out number)as
 begin
    select avg(price)
    into avg_val
    from book
    where price is not null;
 end;
 -- exec�� ���� �ȵ�
 -- �͸� ���ν����� ���� ��Ų��.
 -- exec avg_price();
DECLARE
 a_val number;
BEGIN
--�̸� ������� ���ν��� ȣ��
avg_price(a_val);
dbms_output.put_line('å ��ձݾ� : '|| trunc(a_val));
END;
-- bookid�� �Է¹޾Ƽ� å�̸�, ������ ����ϴ� ���ν��� (���1)
create PROCEDURE book_test01(p_id book.bookid%type,
    v_name out book.bookname%type, v_price out book.price%type)as
BEGIN
    select bookname, price 
    into v_name, v_price
    from book
    where bookid = p_id;
    
END;

-- exec book_test01(3,);
DECLARE
k_book book.bookname%type;
k_price book.price%type;
BEGIN
-- ���ν����� ȣ��
book_test01(3, k_book, k_price);
dbms_output.put_line('å �̸� : ' || k_book);
dbms_output.put_line('å ���� : ' || k_price);
end;
-- bookid�� �Է¹޾Ƽ� å�̸�, ������ ����ϴ� ���ν��� (���2)
create PROCEDURE book_test2(v_id book.bookid%type)as
v_name book.bookname%type;
v_price book.price%type;
BEGIN
    select bookname, price
    into v_name, v_price
    from book
    where bookid = v_id;
    
    dbms_output.put_line('å �̸� : ' || v_name);
    dbms_output.put_line('å ���� : ' || v_price);
    
    exception
        when no_data_found then
        dbms_output.put_line('bookid �� �������� �ʽ��ϴ�.');
        when others then
        dbms_output.put_line('�������');
end;
--����
exec book_test2(17);
