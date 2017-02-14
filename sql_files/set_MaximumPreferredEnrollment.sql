delimiter $$
drop procedure if exists set_MaximumPreferredEnrollment $$
create procedure set_MaximumPreferredEnrollment(
	in sid char(20),
    in dis_num char(20)
)
begin
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
start transaction;
update student set MaximumPreferredEnrollment=dis_num where Id=sid;
commit;
end $$
delimiter ;