use AddressBook;
create table checkDuplicateEntry
(
 name varchar(50),
 address varchar(50),
 email varchar(50)
);
delete from checkDuplicateEntry;
insert into checkDuplicateEntry values('lokendra','1-30','lokilokendra12345@gmail.com');
insert into checkDuplicateEntry values('lokendra','1-30','lokilokendra12345@gmail.com');

select * from checkDuplicateEntry;

create table table2
(
  name varchar(50),
 address varchar(50),
 email varchar(50)
)
delete from table2;
insert into table2 select * from checkDuplicateEntry;
select * from table2;

delete from checkDuplicateEntry;
insert into checkDuplicateEntry select DISTINCT * from table2;
select * from checkDuplicateEntry;