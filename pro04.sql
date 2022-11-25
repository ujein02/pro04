select * from member;

create table member as select * from memberb;

-- 멤버 테이블
create table member(
id	varchar2(16)	primary key,
pw	varchar2(300)	not null,
name	varchar2(50)	not null,
addr	varchar2(100),	
tel	varchar2(20) not null,	
regdate	date	default sysdate,
pt number
);

desc member;

drop table member;
alter table member rename column email to addr;
alter table member modify pw varchar2(300);

commit;

insert into member values('kje', '1234', '테스트', '테스트 주소1','010-1111-1111',sysdate,0);
insert into member values('admin', '1234', '테스트2', '테스트 주소2','010-1111-1111',sysdate,0);
select * from member;

CREATE table board(seq number primary key, 
title varchar2(100) not null, 
content varchar2(1000) not null, 
nickname varchar2(20), 
regdate date default sysdate, 
visited number default 0);

select * from board order by regdate desc;
select * from board where seq=2;
drop sequence seq;

create sequence seq start with 1;

select * from board;

alter table member rename column email to addr;

insert into board values(1, '테스트 1', '테스트  내용1', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '테스트 2', '테스트  내용2', 'admin', sysdate, 0);
insert into board values((select nvl(max(seq), 0)+1 from board), '테스트 3', '테스트  내용3', 'admin', sysdate, 0);


commit;

drop table board;

-- 공지사항 테이블
create table board(seq int primary key,
title varchar2(100) not null,
content varchar2(800) not null,
nickname varchar2(20),
regdate date,
visited int
);

select * from board order by regdate desc;

desc board;

-- 자유게시판 테이블
create table free(fno int primary key,
title varchar2(100) not null,
content varchar2(800) not null,
nickname varchar2(20),
regdate date,
visited int,
rec int
);

commit;

select * from free;
