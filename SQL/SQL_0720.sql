-- as 사용법 =============================================================
select  
bno as '게시판번호', 
title as '제목',
writer as '작성자',
regdate '작성일자',
cnt '조회수'
from board;

select  
bno , 
title ,
writer ,
regdate ,
cnt +1 as cnt -- 컬럼명에 연상이 되지 않도록 as를 써서 컴럼명에 영향이 가지 않도록 해줌.
from board;


create database exam_01;
use exam_01;

create table emp(
    EMPNO int primary key,
    ENAME varchar(10),
    JOB varchar(20),
    MGR int,
    HIREDATE date,
    SAL int,
    COMM int,
    DEPTNO int
);

select * 
from emp;

insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
    values
( 7839, 'KING', 'PRESIDENT', null, '1981-11-17', 5000, null, 10),
( 7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, null, 30),
( 7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, null, 10),
( 7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, null, 20),
( 7788, 'SCOTT', 'ANALYST', 7566, '1987-07-13' , 3000, null, 20),
( 7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, null, 20),
( 7369, 'SMITH', 'CLERK', 7902,'1980-12-17', 800, null, 20),
( 7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
( 7521, 'WARD', 'SALESMAN', 7698,'1981-02-22', 1250, 500, 30),
( 7654, 'MARTIN', 'SALESMAN', 7698,'1981-09-28', 1250, 1400, 30),
( 7844, 'TURNER', 'SALESMAN', 7698,'1981-09-08', 1500, 0, 30),
( 7876, 'ADAMS', 'CLERK', 7788, '1987-07-13', 1100, null, 20),
( 7900, 'JAMES', 'CLERK', 7698,'1981-12-03', 950, null, 30),
( 7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, null, 10);

create table DEPT(
    DEPTNO int primary key,
    ENAME varchar(20),
    LOC varchar(20)
);

insert into DEPT (DEPTNO,ENAME,LOC)
    values
    (10,'ACCOUNTING','NEW YORK'),
    (20,'RESEARCH','DALLAS'),
    (30,'SALES','CHICAGO'),
    (40,'OPERATIONS','BOSTON'),
    (50,'DEVELOPER','KOREA');

select * 
from DEPT;

-- 사원테이블에서 부서번호 (DEPTNO)이 20번이고 월급(SALARY)가 400이상인
-- 사원의 이름 (ENAME)과 직책 (JOB)검색

SELECT ENAME,JOB -- 사원의 이름과 직책 검색
FROM emp  -- 사원테이블
WHERE DEPTNO = 20 -- 부서번호가 20번이고 월급이 400이상
AND SAL>=400;

-- 사원테이블에서 월금이 2000대인
-- 사원의 이름과 직책 검색
select ENAME,JOB
FROM emp
WHERE SAL BETWEEN 2000 AND 2999;

-- 사원테이블에서 직업이 'SALESMAN'이거나 'MANAGER'인 
-- 사원의 사원번호와, 이름을 검색
SELECT EMPNO, ENAME
FROM EMP
WHERE JOB = 'SALESMAN' OR JOB = 'MANAGER';      -- WHERE JOB IN ('SALESMAN','MANAGER');

-- 사원테이블에서 COMM이 NULL 값인 
-- 사원의 번호와 이름을 검색
SELECT EMPNO, ENAME
FROM EMP
WHERE COMM IS NULL;

-- 사원테이블에서 이름에 'S'가 포함된 사원의
-- 월급과 부서번호를 검색
SELECT SAL,DEPTNO
FROM EMP
WHERE ENAME LIKE '%S%';
-- 이름에 'S'로 시작하는 사원 -> WHERE ENAME LIKE 'S%'
-- 이름이 'S'로 끝나는 사원  -> WHERE ENAME LIKE '%S'
-- 이름이 'S'로 시작하는 사원(두글자)  -> WHERE ENAME LIKE 'S_'
-- 이름이 'S'로 끝나는 사원(두글자)  -> WHERE ENAME LIKE '_S'
-- 이름이 'S'라는 문자가 포함된 문자 (세글자) ->  WHERE ENAME LIKE '_S_'

-- 사원 테이블에서 급여가 높은순 부터 정렬하시오.
SELECT *
FROM EMP
-- WHERE 
ORDER BY SAL ASC; -- ASC 오름차순 * 기본적인 ORDER BY 설정이 오름차순이라 생략이 가능함.
				  -- DESC 내림차순
                  
-- ====================================== 연습문제 ================================================

-- 1. 사원테이블에서 사원번호와 이름과 월급을 출력하라.

select EMPNO,ENAME,SAL
FROM emp;

-- 2. 직업이 'SALESMAN' 이고 월급이 1000 이상인 사원의 이름과 월급을 출력하라
SELECT ENAME, SAL
FROM EMP
WHERE JOB = 'SALESMAN'
AND SAL>=1000;

-- 3.직업이 MANAGER인 사원을 뽑는데 월급이 높은 사람순으로 이름,직업,월급을 출력하라.
SELECT ENAME,JOB,SAL
FROM EMP
WHERE JOB = 'MANAGER'
ORDER BY SAL DESC;

-- 4. 이름이 SCOTT인 사원의 이름,월급,직업,입사일,부서번호를 출력.
SELECT ENAME,SAL,JOB,HIREDATE,DEPTNO
FROM EMP
WHERE ENAME = 'SCOTT';

-- 5. 81년 11월 17일에 입사한 사원의 이름, 월급, 직업, 입사일을 출력.
SELECT ENAME,SAL,JOB,HIREDATE
FROM EMP
WHERE HIREDATE = '1981-11-17';

-- 6.월급이 3600 이상인 사원들의 이름과 월급을 출력하라.
SELECT ENAME,SAL
FROM EMP
WHERE SAL>=3600;

-- 7.월급이 1200 이하인 사원들의 이름,월급,직업,부서번호를 출력하라.
SELECT ENAME,SAL,JOB,DEPTNO
FROM EMP
WHERE SAL<=1200;

-- 8.직업이 SALESMAN이 아닌 사원들의 이름과 부서번호, 직업을 출력하라.
SELECT ENAME,DEPTNO,JOB
FROM EMP
WHERE NOT JOB = 'SALESMAN';   -- >> WHERE JOB != 'SALESMAN'  가능.

-- 9. 월급이 1000에서 3000사이가 아닌 사원들의 이름과 월급을 출력하라
SELECT ENAME,SAL
FROM EMP
WHERE SAL<1000 OR SAL>3000;   -- >> WHERE NOT SAL BETWEEN 1000 AND 3000;

-- 10.이름의 끝 글자가 T로 끝나는 사원들의 이름과 월급을 출력하라.
SELECT ENAME,SAL
FROM EMP
WHERE ENAME LIKE '%T';

-- 11. 커미션이 NULL인 사원들의 이름과 커미션을 출력하라.
SELECT ENAME,COMM
FROM EMP
WHERE COMM IS NULL;

-- 12. 직업이 SALESMAN,ANALYST,MANAGER가 아닌 사원들의 이름, 월급 직업을 출력하라.
SELECT ENAME,SAL,JOB
FROM EMP
-- >> WHERE NOT JOB LIKE '%A%'; 가능
-- >> WHERE NOT JOB = 'SALESMAN' AND JOB = 'ANALYST' AND JOB = 'MANAGER'; 가능.
WHERE NOT JOB IN ('SALESMAN','ANALYST','MANAGER');

