-- �Լ�(function) : ���ν����� ��������� �ݵ� return ���� ���
--                 ���� �Ϲ� sql������ ȣ���ؼ� ��� (�÷��� �����Ͽ� ��ȯ)

-- ����) create function �̸�()                 create procedure �̸�() as
--      return dataType                        brgin
--      as                                          ���๮(sql��)
--      begin
--           ���๮(sql��)                      end;
--        return ���ϵǴ� �� �Ǵ� ������ �ִ� ����;
--      end;
--     ���� �Ϲ� SQL������ ȣ��                   -- exec ���ν����̸� �Ǵ� �͸� ���ν������� ȣ��

-- �Ǹŵ� ������ ���� ������ ����ϴ� �Լ�(f_interest)
-- ������ 30,000�̻��̸� 10%, 20,000�̸��̸� 5%
    create FUNCTION f_interest(f_price orders.saleprice%type)
    return number
    as
    my_price number ; -- ����� �����Ҷ� ����ϴ� ����
    begin
        if f_price >= 20000 then
            my_price := my_price *0.1;
        else
            my_price := my_price *0.05;
        end if;
        return my_price;
    end;
    
-- ����
-- drop function f_interest ;

-- ���� : �Ϲ� SQL������ ȣ�Ⱑ��
select * from orders ;
select o.* ,f_interest(saleprice) as ������ from orders o;
select sum (f_interest(saleprice)) as ��_������ from orders o;

-- ��¥ �����ϴ� �Լ�
create function  d_format(fd orders.orderdata%type)
return VARCHAR2
as
f_date vatchar2(50);
begin
    f_date := to_char(fd, 'yyyy�� mm�� dd��');
    return f_date;
end;

select o.*, d_format(o.orderdate) from orders o;

-- ��¥�� ����Ⱓ�� 5�Ϸ� �����Ͽ� ����Ⱓ ��¥�� ���� �Լ��� ������.
create function d_format2(fd orders.orderdate%type)
return VARCHAR2
as
f_date VARCHAR2(50);
begin
    f_date := to_char(fd+5,'yyyy"��" mm"��" dd"��"');
    return f_date;
end;
select o.*, d_format(o.orderdate) ������¥,d_format2(o.orderdate) as ����Ⱓ from orders o;

------------------------------------------------------------------------------------------
-- Ŀ��(cursor) : ������ ���̺��� �ѹ��� �� �྿ ó���ϱ� ���ؼ�
--               ��� ���̺��� ���� ������� ����Ű�µ� ���

-- �Ͻ���(������)Ŀ�� : �ڵ����� ������ ����, ������ó���� �̷������.
-- ������ Ŀ�� : �������� �����ڿ� ���ؼ� ����, ����, ������ó���� �̷������.
-- Ŀ���� ���õ� Ű���� 
    -- cursor Ŀ���̸� is Ŀ������ => Ŀ�� ����
    -- open   Ŀ���̸�           => Ŀ�� ��� ����
    -- fetch  Ŀ���̸� into ����  => �� �����͸� ������
    -- close  Ŀ���̸�           => Ŀ�� ��� ����
    -- rowcount : ���� ��
    -- isopen   : �Ͻ����϶� �׻� false
    --            �������϶� ������ �˾ƺ��� ���ɾ�
    -- found    : ����� �ϳ� �̻��϶� true
    -- not found : ����� �ϳ��� ���� ��� true
    
    -- �Ͻ��� Ŀ��
    create PROCEDURE cursor_test(c_id book.bookid%type)
    as
    c_name book.bookname%type;
    c_price book.price%type;
    begin
        select bookname, price into c_name, c_price
        from book where bookid = c_id;
        
        if sql%found then 
            dbms_output.put_line('å �̸� : ' || c_name);
            dbms_output.put_line('å ���� : ' || c_price);
            dbms_output.put_line('��� : ' || sql%rowcount);
        end if;
        exception
            when no_data_found then
                dbms_output.put_line('bookid�� �������� �ʽ��ϴ�.');
            when others then
                dbms_output.put_line('�����߻�');
    end;
exec cursor_test(11);
    -- ������ Ŀ��
    create PROCEDURE cursor_test2
    as
    -- Ŀ�� ����
        cursor cur is select bookname from book;
    -- Ŀ���� ��� ����ϴ� ����    
        c_name book.bookname%type;
    begin
     open cur;
     loop
        fetch cur into c_name;
        --Ż��
        exit when cur%notfound;
        dbms_output.put_line(c_name);
      
      
     end loop;
     close cur;
    end;
    -- ����
    exec cursor_test2;
    
    create PROCEDURE cursor_test3(c_id book.bookid%type)
    as
    -- �� ��ü Ÿ��
    cur_row book%rowtype;
    -- Ŀ�� ����
    cursor cur is select * from book where bookid = c_id;
    begin
        open cur;
         loop
          fetch cur into cur_row;
          exit when cur%notfound;
          dbms_output.put_line('å �̸�: ' || cur_row.bookname);
          dbms_output.put_line('å ����: ' || cur_row.price);
         end loop;
        close cur;
    end;
    
    exec cursor_test3(3);
 -------------------------------------------------------------------------------
 -- Ʈ���� : �ڵ����� ��� 
 --         ȣ���ؼ� �����ϴ� ���� �ƴ�
 --         Ư�� �̺�Ʈ�� �߻��ϸ� �ڵ����� �߰� �̺�Ʈ�� �����
 --         Ư���̺�Ʈ ; insert, update, delete
 -- ����)    create trigger �̸� before|after
 --         Ʈ���� �̺�Ʈ on Ÿ�� ���̺� �̸�
 --         [ for each row ]
 --         [ when ������   ]
 --         begin
 --              ����;
 --         end ;
 
 --     for each row : ������ �޴� �� �࿡ ���� Ʈ���Ÿ� ���� ��ų �� ���
 
 -- ���ǻ���)insert ��� �ԷµǴ� �����Ͱ� :new �� ����ȴ�.
 --        delete ��� ������� �����Ͱ� :old �� ����ȴ�. 
 --        update ��� ���� �� :old, ���� �� :new �� ����ȴ�.
 --        begin ~ end; �� ����� new, old �� ���ȴ�.
 
 -- Ʈ���� ���� : drop trigger �̸�
 
 create trigger t_test after
 insert on customer
 for each row
 begin
    dbms_output.put_line(:new.name || '���Լ���');
end;
-- ������ ȣ���ϴ� ���� �ƴϴ�.
SELECT * FROM CUSTOMER ORDER BY CUSTID;

INSERT INTO CUSTOMER(CUSTID, NAME, ADDRESS, PHONE)
VALUES(CUSTOMER_SEQ.NEXTVAL, '�����', '���� ��Ʈ��', '000-1111-7777');

 CREATE TRIGGER T_TEST2 AFTER
 INSERT ON CUSTOMER
 FOR EACH ROW
 BEGIN
    DBMS_OUTPUT.PUT_LINE('���� �� �̸� : '  ||:OLD.NAME);
    DBMS_OUTPUT.PUT_LINE('���� �� �̸� : '  ||:NEW.NAME);
END;

-- ������ ȣ���ϴ� ���� �ƴϴ�.
select *from customer_del order by custid;

update customer set name = '������', address = '������ ���丣ī' where custid=21;

-- customer�� ������ �ο��� customer_del �� ������ �־�����
-- customer ���̺��� ���� ������ customer_del ���̺��� ������
create table customer_del as select * from customer where 1=0;
-- customer_del���̺��� ���� ��¥�� ����ϴ� �÷��� �߰�����.
alter table customer_del add del_date date;

CREATE TRIGGER t_test3 after
delete on customer
for each row
begin
    insert into customer_del(custid, name, address, phone, del_date)
    values(:old.custid, :old.name, :old.address, :old.phone, sysdate);
    
end;    

delete from customer where custid = 21;
select * from customer;
select * from customer_del;