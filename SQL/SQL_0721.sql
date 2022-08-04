-- mysql join
use exam;

SELECT *
FROM MEMBER;

SELECT *
FROM BOARD;

ALTER TABLE BOARD DROP WRITER;

-- 조인(JOIN) MEMBER테이블하고 BOARD 테이블하고 내부조인

SELECT BNO,TITLE, NAME, REGDATE, CNT
FROM MEMBER AS M,   -- 별칭을 넣어서 좀더 편하게 조인할수 있다.
     BOARD B
WHERE M.ID = B.ID;

-- 조인(JOIN) MEMBER테이블하고 BOARD 테이블하고 내부조인
-- (표기법:ANSI)
SELECT BNO,TITLE, NAME, REGDATE, CNT
FROM MEMBER AS M  
JOIN BOARD B
ON M.ID = B.ID
WHERE BNO = 5;

-- ==================================================
USE EXAM_01;

SELECT *
FROM EMP AS E,
	DEPT AS D
WHERE E.DEPTNO = D.DEPTNO;

-- ANSI --
SELECT EMPNO, ENAME, JOB, HIREDATE, SAL, LOC
FROM EMP AS E JOIN DEPT AS D
ON E.DEPTNO = D.DEPTNO;

-- 외부 조인 -- 
-- LEFT JOIN -> 왼쪽 테이블에는 있고, 오른쪽 테이블에는 없는 데이터
SELECT *
FROM EMP AS E LEFT OUTER JOIN DEPT AS D
ON E.DEPTNO = D.DEPTNO;

-- RIGHT JOIN -> 왼쪽 테이블에는 없고, 오른쪽 테이블에는 있는 데이터
SELECT *
FROM EMP AS E RIGHT OUTER JOIN DEPT AS D
ON E.DEPTNO = D.DEPTNO;

-- ==========집단 함수 =========================================

-- 총 직원 수, 총 급여 금액 
SELECT COUNT(*) AS '총 직원수',
       SUM(SAL) AS '총 급여금액',
       AVG(SAL) AS '급여 평균',
       MAX(SAL) AS '최대 급여',
       MIN(SAL) AS '최저 급여',
       DEPTNO 
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) >= 2500;

-- 연습 문제 =============================================================

-- 각 부서별로 지급되는 총 월급은?
SELECT SUM(SAL) AS '총 월급',
       DEPTNO
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- 각 직업별로 월급이 제일 많은 사람과 제일 적은 사람의 차이는?
SELECT MAX(SAL) AS '최대 월급',
       MIN(SAL) AS '최저 월급',
       MAX(SAL)-MIN(SAL) AS '최대 월급과 최저월급의 차이',
       JOB
FROM EMP
GROUP BY JOB
ORDER BY JOB;

-- 커미션이 없는 사람중에 각 부서별로 월급이 제일 작은 사람은?
SELECT MIN(SAL) AS '최저 월급',
       ENAME AS '사원이름',
       DEPTNO AS '부서번호'
FROM EMP
WHERE COMM IS NULL
AND SAL IN (SELECT MIN(SAL) FROM EMP GROUP BY DEPTNO)  -- 서브쿼리 적용
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- 급여가 3000대인 회원의 사원번호, 성명, 일하는 지역
SELECT EMPNO,ENAME,LOC                           -- SELECT EMPNO,ENAME,LOC 
FROM EMP AS E,                                   -- FROM EMP E
	DEPT AS D                                    -- JOIN DEPT D
WHERE E.DEPTNO = D.DEPTNO                        -- ON E.DEPTNO = D.DEPTNO
AND SAL<=3000                                    -- WHERE SAL BETWEEN 3000 AND 3999;
OR SAL>4000;

-- 성명에 'LA'가 포함된 회원의 성명, 부서명, 일하는 지역을 검색
SELECT ENAME,DNAME,LOC                           -- SELECT ENAME,DNAME,LOC
FROM EMP AS E,                                   -- FROM EMP E 
	 DEPT AS D                                   -- JOIN EDPT D
WHERE E.DEPTNO = D.DEPTNO                        -- ON E.DEPTNO = D.DEPTNO
AND ENAME LIKE '%LA%';                           -- WHERE ENAME LIKE '%LA%';

-- =============서브 쿼리 (subquery)=============================

-- 1. SELECT 안에 
-- 급여가 2000 이상인 사원번호 , 직업, 부서명을 조회(JOIN)
SELECT EMPNO,JOB,(SELECT DNAME FROM DEPT D WHERE E.DEPTNO = D.DEPTNO ) DNAME
FROM EMP E 
WHERE SAL >=2000;

-- 2. FROM 안에 
-- 부서별 최대 인원수를 검색
SELECT MAX(DEPTNOCNT)
FROM (SELECT COUNT(*) DEPTNOCNT FROM EMP GROUP BY DEPTNO) AS EMPVIEW; 
 
-- 3. WHERE 안에 
-- 사원테이블의 평균급여보다 많이 받는 사원의 사원번호, 이름, 월급, 부서명을 검색
SELECT EMPNO, ENAME, SAL, DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE SAL >= (SELECT AVG(SAL) FROM EMP);

-- 부서별 평균 단일 서브쿼리 --
SELECT AVG(SAL) FROM EMP GROUP BY DEPTNO;

-- 다중행 서브쿼리 
SELECT EMPNO, ENAME, SAL, DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
-- 각 부서별 평균급여보다 많이 받는 직원
WHERE SAL >= ANY (SELECT AVG(SAL) FROM EMP GROUP BY DEPTNO);
-- 전체 부서별 평균급여보다 많이 받는 직원
-- WHERE SAL >= ALL (SELECT AVG(SAL) FROM EMP GROUP BY DEPTNO);
-- 커미션을 받는 직원
-- WHERE ENAME IN (SELECT ENAME FROM EMP WHERE COMM > 0);

-- =================== 연습문제 ==========================================

-- 1) 'ALLEN'의 직무와 같은 사람의 이름, 부서명, 급여, 직무를 출력하세요.
SELECT ENAME, DNAME, SAL, JOB
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN');

-- 2) JONES가 속해있는 부서의 모든 사람의 사원번호, 이름, 입사일, 급여를 출력하세요.
SELECT EMPNO, ENAME, HIREDATE, SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE DNAME = (SELECT DNAME FROM EMP WHERE ENAME = 'JONES');

-- 3) 전체 사원의 평균 임금보다 많은 사원의 사원번호, 이름, 부서명, 입사일, 지역, 급여를 출력하세요.
SELECT EMPNO, ENAME, DNAME, HIREDATE, LOC, SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE SAL > (SELECT AVG(SAL) FROM EMP);

-- 4) 10번 부서와 같은 일을 하는 사원의 사원번호, 이름, 부서명, 지역, 급여를 급여가 많은 순으로 출력하세요.
SELECT EMPNO, ENAME, DNAME, LOC, SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE DNAME = (SELECT DNAME FROM DEPT WHERE DNAME='ACCOUNTING')
ORDER BY SAL DESC;

-- 5) 'MARTIN'이나 'SCOTT'의 급여와 같은 사원의 사원번호, 이름, 급여를 출력하세요.
SELECT EMPNO,ENAME,SAL
FROM EMP 
WHERE SAL IN (SELECT SAL FROM EMP WHERE ENAME='SCOTT' OR ENAME='MARTIN');

-- 6) 부서번호가 30번 부서의 최고 급여보다 높은 사원의 사원번호, 이름, 급여를 출력하세요.
SELECT EMPNO, ENAME, SAL
FROM EMP 
WHERE SAL>(SELECT MAX(SAL) FROM EMP WHERE DEPTNO=30);

-- 7) 사원중에서 급여(sal)와 보너스(comm)을 합친 금액이 가장 많은 경우와 가장 적은 경우, 평균 금액을 구하세요.
SELECT ifnull(COMM,0),MAX(SAL+COMM),MIN(SAL+COMM),AVG(SAL+COMM)
FROM EMP;

-- 8) 부서별로 급여합계를 구하세요.
SELECT SUM(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- 9) 급여가 3000이상이면, 급여+급여의 15%의 격려금을, 급여가 2000이상이면, 급여+급여의 10%의 격려금을,급여가 1000이상이면, 급여+급여의 5%의 격려금을, 그렇지 않으면 급여를 구하여, 이름, 직업, 급여,격려금을 표시하시오.
-- HINT : DECODE사용(구글로 검색해보세요.)
SELECT ENAME,JOB,SAL,IF(SALM,SAL>=3000,SAL*0.15)RESULT
FROM EMP;

-- 10) 'MARTIN'과 같은 매니저와 일하는 이름, 직업, 급여, 부서명, 지역을 구하세요.
SELECT ENAME,JOB,SAL,DNAME,LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE DNAME = (SELECT DNAME FROM DEPT D JOIN EMP E ON D.DEPTNO = E.DEPTNO WHERE ENAME='MARTIN');

-- 11) 부서명이 'RESEARCH'인 사람의 이름, 직업, 급여,부서명을 표시하시오.
SELECT ENAME,JOB,SAL,DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE DNAME = 'RESEARCH';

-- 12) 각 부서별 평균 급여를 구하고, 그 중에서 평균 급여가 가장 적은 부서    
SELECT DNAME,AVG(SAL) AVG_SAL
FROM EMP E,DEPY D
WHERE E.DEPTNO = D.DEPTNO
GROUP BY DNAME
HAVING AVG(SAL) = (SELECT MIN(AVG(SAL)) FROM EMP GROUP BY DEPTNO);

-- 13) 'BLAKE'와 같은 부서에 있는 사원들의 이름과 고용일을 뽑는데 'BLAKE'는 빼고 출력하라.
SELECT ENAME,HIREDATE
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='BLAKE')
AND ENAME != 'BLAKE';

-- 14) 이름에 'T'를 포함하고 있는 사원들과 같은 부서에서 근무하고있는 사원의 사원번호와 이름을 출력하라.
SELECT EMPNO,ENAME
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME LIKE '%T%');

-- 15) 자신의 급여가 평균 급여보다 많고, 이름에 'S'가 들어가는 사원과 동일한 부서에서 근무하는 모든 사원의 사원번호, 이름, 급여를 출력하라.
SELECT EMPNO,ENAME,SAL
FROM EMP
WHERE SAL>(SELECT AVG(SAL) FROM EMP)
AND DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME LIKE '%S%');

-- 16) 커미션을 받는 사원과 부서번호, 월급이 같은 사원의 이름, 월급, 부서번호를 출력하라.
SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE SAL IN (SELECT SAL FROM EMP WHERE NOT COMM IS NULL));

-- 17) 직업명과 사원의 등급을 직업이 'PRESIDENT' 이면 'A', 직업이 'ANALYST' 이면 'B', 직업이 'MANAGER' 이면 'C', 직업이 'SALESMAN' 이면 'D', 직업이 'CLEARK' 이면 'E' 로 표시하시오.

-- 18) 10번 부서중에서 30번 부서에는 없는 업무를 하는 사원의 사원번호, 이름, 부서명,입사일, 지역을 출력하라.
SELECT EMPNO,ENAME,DNAME,HIREDATE,LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
GROUP BY DEPTNO = 10
HAVING JOB != (SELECT JOB FROM ENP WHERE NOT DEPTNO = 30);

-- 19) 급여가 30번 부서의 최고 급여보다 높은 사원의 사원번호, 이름, 급여를 출력하라.
SELECT EMPNO,ENAME,SAL
FROM EMP
WHERE  SAL>(SELECT MAX(SAL) FROM EMP WHERE DEPTNO=30);

-- 20) 급여가 30번 부서의 최저 급여보다 낮은 사원의 사원번호, 이름, 급여를 출력하라.

SELECT EMPNO,ENAME,SAL
FROM EMP
WHERE  SAL<(SELECT MIN(SAL) FROM EMP WHERE DEPTNO=30);

-- 21) 사원 중에서 입사일이 가장 빠른 사원의 사원번호, 이름, 입사일, 부서명을 출력하세요.
SELECT EMPNO,ENAME,HIREDATE,DNAME
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE HIREDATE IN (SELECT MIN(HIREDATE) FROM EMP);

-- 22) 평균 연봉보다 많이 받는 사원들의 사원번호, 이름, 연봉을 연봉이 높은 순으로 정렬하여 출력하세요.
-- (연봉은 sal*12+comm으로 계산)

SELECT EMPNO,ENAME,YSAL
FROM (SELECT YSAL(SAL*12+COMM) FROM EMP)
WHERE YSAL>(SELECT AVG(YSAL) FROM EMP);

-- 23) EMP와 DEPT TABLE을 JOIN하여 부서 번호, 부서명, 이름, 급여를 출력하라.

SELECT E.DEPTNO,DNAME,ENAME,SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO; 

-- 24) 이름이 'ALLEN'인 사원의 부서명을 출력하라.
SELECT DNAME
FROM EMP E
RIGHT JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE ENAME = 'ALLEN';

-- 25) DEPT Table 에는 존재하는 부서코드이지만 해당부서에 근무하는 사람이 존재하지 않는 경우의 결과를 출력하라.
SELECT D.DEPTNO
FROM EMP E 
LEFT JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;

















