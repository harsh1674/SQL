delimiter //
create procedure pro_copy()
begin
declare vfinished int default 0;
declare r int;
declare n char(10);
declare c char(10);
declare studcursor cursor for select * from student1;
declare continue handler for NOT FOUND set vfinished=1;
open studcursor;
getdata: loop
fetch studcursor into r,n,c;
if vfinished=1 then leave getdata;
end if;
insert into student2 values(r,n,c);
end loop getdata;
close studcursor;
end
//