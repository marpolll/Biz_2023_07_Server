-- oneday_book


create database bookDB;

use bookDB;

create table tbl_books (
	b_code varchar(6) not null primary key,
    b_name	varchar(125)	NOT NULL,
	b_auther	varchar(125)	NOT NULL,
	b_comp	varchar(125),	
	b_year	int	NOT NULL,
	b_iprice	int,	
	b_rprice	int	NOT NULL,
    b_rent varchar(5),
    b_use varchar(5)

);

select * from tbl_books;

create table tbl_users (

u_code	varchar(6)	NOT NULL	primary key,
u_name	varchar(125)	NOT NULL,	
u_tel	varchar(125),		
u_addr	varchar(125),
u_rent varchar(5),
u_out varchar(5)		

);

DROP TABLE tbl_users;
drop database bookdb;

drop table tbl_users;


create table tbl_rent_book (

r_seq	int	 NOT NULl  AUTO_INCREMENT primary key,
r_date	varchar(30)	NOT NULl,
r_return_date	varchar(10)	NOT NULl,	
r_bcode	varchar(6)	NOT NULl,	
r_ucode	varchar(6)	NOT NULl,	
r_return_yn	varchar(1)	,	
r_point	int		
);

select * from tbl_books;

ALTER TABLE tbl_rent_book 
ADD CONSTRAINT f_book 
FOREIGN KEY (r_ucode)
REFERENCES tbl_books(b_code); 


ALTER TABLE tbl_rent_book 
ADD CONSTRAINT f_user 
FOREIGN KEY (r_ucode)
REFERENCES tbl_users(u_code); 


CREATE VIEW view_rent_book
AS (
SELECT ah_aid, ah_hbcode, hb_name, a_name, a_tel, a_addr
    FROM tbl_addr_hobby
        LEFT JOIN tbl_address
            ON ah_aid = a_id
        LEFT JOIN tbl_hobby
            ON ah_hbcode = hb_code
);

select * from tbl_books;
select * from tbl_users;

INSERT INTO tbl_books(b_code,b_name,b_auther,b_comp,b_year,b_iprice,b_rprice,b_rent,b_use)
VALUES('001', '착하게살자', '양평','나눔드림', 20230701, 20000, 2000,'O','O');



