delimiter //
create procedure addn(a int, b int)
begin
declare c int;
set c=a+b;
select concat('Addition is: ', c);
end
//