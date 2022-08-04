create database exam;
use exam;

create table memder(
    id varchar(20) PRIMARY KEY, 
    password varchar(30) NOT NULL,
    name varchar(5) ,
    birth date,
    gender varchar(1)
);
-- memder테이블에 주소 컬럼 추가 
alter table memder add column address varchar(30);
-- memder테이블에 비밀번호 컬럼의 글자수를 20자로 변경
alter table memder modify column password varchar(20) NOT NULL;
-- memder테이블 제거
drop table memder;
-- --------------------------------------------------------------------
create table member(
    id varchar(20) PRIMARY KEY,
    password varchar(30) NOT NULL,
    addr varchar(30) NOT NULL,
    phone varchar(20),
    email varchar(30),
    name varchar(5),
    age varchar(3)
    );
-- member 테이블에 age컬럼을 int로 변경
alter table member modify column age int;

-- insert into 테이블명(컬러명,컬러명,컬러명,컬러명...)
insert into member(id,password,addr,phone,email,name,age)
    values('abcd1234','1234','울산','010','green@naver.com','정자바',10);
    
insert into member(id,password,addr)  -- 중복이라 안됨
    values('abcd1234','1234','울산');
insert into member(id,addr) -- password가 null값이라 안됨
    values('zzz1111','울산');
    
insert into member(id,password,addr) -- 제약 조건이 성립하므로 됨
    values('zzz1111','1234','울산');
    
    
-- member테이블에 있는 모든 컬럼을 조회
-- select 컬럼명 from 테이블명
select * from member;

-- member테이블에 있는 아이디,비밀번호,이메일 컬럼을 조회
select id,password,email from member;

-- 개명(정자바 -> 정씨샵)
-- update 테이블명
-- set 변경하고자 하는 컬럼명 = 값
update member
set name = '정씨샵';

-- 비밀번호 변경
update member
set password = '5678';


-- member 테이블에 중에 id가 abcd1234인 데이터의 모든 컬럼을 조회 -> where 조건식
select * 
from member 
where id = 'abcd1234';

-- id가 abcd1234인 데이터의 이름 변경
update member
set name = '이재서'
where id = 'abcd1234';

-- id가 abcd1234인 데이터의 비밀번호 변경
update member
set password = '1234'
where id = 'abcd1234';

-- id가 abcd1234인 데이터는 member테이블에서 삭제
-- delete from 테이블명
-- where 조건식
delete from member
where id = 'abcd1234';

-- 하나의 insert를 가지고 2개의 데이터 생성
insert into member(id,password,addr) 
    values('aaaa1234','8484','서울'),
          ('bbbb222','9999','부산');
          
-- ==================================================================================================
-- 게시판 

create table board(
    bno int primary key auto_increment,   
    title varchar(100) not null,
    content text null,
    writer varchar(10) not null,
    regdate timestamp default now(),  -- insert 할때 datetime sysdate()입력으로도 사용 가능.  
    cnt int default 0,
    id varchar(20) not null
    );

select * from board;

insert into board(title,content,writer,id) 
    values('제목','내용입니다.','글쓴이','aaaa1234');
insert into board(title,content,writer,id) 
    values('제목2','추가된 내용입니다.','글쓴이','aaaa1234');
    













