
--소개글 리스트 뽑기------------------------------------------------------


select introduce.board_no, member.nickname, image.image_name, introduce.region 
from member member, board board, image image, introduce introduce ,INTRODUCE_CATEGORY category
where introduce.category_no=1

and member.id=board.id and board.board_no=introduce.board_no and  board.board_no=image.board_no
and introduce.category_no = category.category_no;
--and introduce.category_no = category.category_no;

select introduce.board_no, member.nickname, image.image_name, introduce.region 
from member member, board board, image image, introduce introduce 
where introduce.category_no=1
and member.id=board.id and  board.board_no=image.board_no

select b.board_no, m.nickname, i.image_name, m.name
from member m, board b, image i
where m.id=b.id and b.board_no=i.board_no

--------------요거
select b.board_no, i.image_name
from  board b, image i
where b.board_no=i.board_no AND i.image_no =1;

select * from introduce; 
select * from board;
select * from member;

select count(*) from keyword where board_no=1;
select count(*) from keyword where board_no=2;

		select keyword.keyword_name
		from keyword keyword, introduce introduce
		where keyword.board_no=introduce.board_no and introduce.board_no=1
		
	select companymember.id,member.nickname,authorities.authority,companymember.approval
	from companymember companymember,member member,authorities authorities
	
	where  authorities.id=member.id and companymember.id=member.id
	and companymember.id='spring'
	
	
select board.board_no, board.content, board.id, introduce.region 
from  board board, introduce introduce 
where  board.board_no=introduce.board_no 
and introduce.category_no='1' and i.image_no=1;
	
select * from introduce where category_no=1;
select * from image;


select introduce.board_no, member.nickname, image.image_name, introduce.region 
from member member, board board, image image, introduce introduce 
where introduce.category_no=1 and
member.id=board.id and board.board_no=introduce.board_no 
and board.board_no=image.board_no and image.image_no=1;

--and image.image_no=1;
delete from image;
insert into image(image_no, image_name, image_original_name, board_no) 
values('1', sysdate, 'asdf', 1);
insert into image(image_no, image_name, image_original_name, board_no) 
values('1', sysdate, 'asdf', 2);
select * from image where board_no=1;


-----------------기업회원 마이페이지
	select companymember.id,member.nickname,authorities.authority,companymember.approval,companymember.write
	from companymember companymember,member member,authorities authorities
	where companymember.id=member.id and member.id=authorities.id
	and companymember.id='spring'
	

select *from COMPANYMEMBER;
update COMPANYMEMBER set approval=1 where id='oracle' --승인상태


update COMPANYMEMBER set write=1 where id='spring' --글쓴 상태

--글쓴후 테이블 확인
select * from board;
select * from introduce;
	
delete from introduce where board_no='28';
insert into introduce(board_no, company_name, region, location, business_hours,tel,category_no )
		values('28', '홍콩반점', '건대', '건대 사거리','24시간','01022222828','1')

		
		
select * from BOARDCOMMENT;