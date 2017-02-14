delimiter $$
drop procedure if exists set_NonPreferredClassroomType $$
create procedure set_NonPreferredClassroomType(
	in sid char(20),
    in dis_type char(20)
)
begin
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
start transaction;
update student set NonPreferredClassroomType=dis_type where Id=sid;
commit;
end $$
delimiter ;
call set_NonPreferredClassroomType('3213','sfdwf');