delimiter //
create trigger t1 before delete on library for each row
begin
insert into library_audit values(old.book_no, old.book_published, old.book_cost);
end;
//