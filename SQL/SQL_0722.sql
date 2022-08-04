USE EXAM_01;

SELECT *
FROM BOARD;

-- 제목을 클릭했을때 (트랜잭션 발동)
START transaction;
-- 제목과 내용이 조회됨과 동시에
select TITLE,CONTENT
FROM BOARD
WHERE ID = 'bbbb222';
-- 조회수가 1씩 증가
UPDATE BOARD
SET CNT = CNT +1
WHERE ID = 'bbbb222';

commit;
rollback;

-- 프로시저
DELIMITER //
create procedure PR1(a varchar(2))
begin 
    select * from EMP WHERE DEPTNO = a;
	
end
//
DELIMITER ;

-- pr1 프로시저 호출(부서번호 10을 매개변수 a에 셋팅)
call PR1(10);


-- 함수 
SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER //
create function FU1(a int, b int) returns int
begin
    return a+b;
end
//
DELIMITER ;
-- FU1 함수 호출
select FU1(10,20);


DELIMITER //
create function FU2() returns double
begin
    -- 변수 선언 (DECLARE)
    declare R double;
    select avg(sal) 
    into R
    from emp;
    return R; 
end
//
DELIMITER ;
-- FU2 함수 호출
select FU2();
-- 예제 문제
-- EMP 테이블을 이용해서 인수에 부서번호를 하나 설정하면, 해당하는 부서의 급여 합계를 반환하는 저장함수 F_SALES()를 만드시오.
DELIMITER //
create function F_SALES(A INT) returns int
begin
    declare sumsal int; -- 급여 합계를 저장할 변수 
    select sum(sal)
    into sumsal
    from emp
    where deptno = A ;  
    RETURN sumsal;
end
//
DELIMITER ;
select F_SALES(20) as '부서별급여총합';
