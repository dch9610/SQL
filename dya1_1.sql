--: sql 주석문 [ctrl+/]
-- oracle 폴더에 저장

-- 현재 사용자 확인하기
-- 해당 명령 실행은 블록 잡은 후 ctrl + enter
show user;

-- 계정에 생성되어 있는 모든 테이블 조회
select * from tab;

-- 특정 테이블의 구조 확인
-- desc 테이블명;
desc emp;
desc bonus;
desc dept;
desc salgrade;

-- 전체 테이블 조회
-- select * from 테이블 명;

-- 특정 테이블 조회
-- select 컬럼명1, 컬럼명2, ... from 테이블명;

select * from emp;
select ename, job from emp;

-- 테이블에서 중복 데이터를 삭제하고 표시하기
-- select distinct 컬럼명1, 컬럼명2, .. from 테이블명;
select distinct job from emp;

-- 별칭 사용하기
-- select 컬럼명 as 별칭명 from 테이블명;
-- 별칭에 공백이 들어간 경우 인용부호( " " )사용
desc emp;
select 
    empno as "사원 번호", 
    ename as 사원이름 
from emp;

-- 기존 컬럼에서 연산식을 이용
-- EMP 테이블에서연봉컬럼추가하기 
--연봉= SAL*12+COMM
select *  from emp;
select 
    ename as "사원 이름", 
    sal as 한달급여,
    sal*12 as 일년급여
from emp;

-- 오름차순, 내림차순으로 정렬
-- select 칼럼명1, 칼럼명2
-- from 테이블명  order by 기준 칼럼명1, 기준 칼럼명2 ,
-- desc(내림차순 z~a, 숫자는 큰수에서 작은수), asc (오름차순 a~z)
select * from emp 
    order by sal desc;
    
-- emp 테이블에서 deptno, ename 기준으로 정렬 (1 순위: deptno, 2순위 ename)
select * from emp 
    order by deptno, ename;

    
-- where 절을 이용한 조회
-- select * , 컬럼명1, 컬럼명2. ..
--  from 테이블명
-- where 절 (비교, 논리 연산자);

-- 비교 연산자: <, >, <=, >=. =, !=, <>
--emp 테이블에서 부서번호가 10번인 레코드만 조회
-- 조건을 먼저 주고 정렬을 추가
select * from emp
    where deptno!=10 order by deptno;
    
-- emp 테이블에서 급여가 1000 이상인 레코드 조회
select * from emp
    where sal >=1000 order by ename;
    
-- 논리연산자  and , or, not 
-- EMP 테이블에서 부서번호가 30이고 직업이 'SALESMAN' 출력 VARCHAR 자료형은 ( ' ' ) 붙여야함
select * from emp
    where deptno=30 and job='SALESMAN';
    
-- EMP 테이블에서 부서번호가 30이 아닌 데이타출력 where not 
select * from emp
    where not deptno=30;
    
-- IN/ NOT IN 연산자
--조건식에서특정값이있는데이타조회 
-- select * ,컬럼명1, 컬럼명2 ...
-- from 테이블명
-- where 컬럼명 in/not in (값1, 값2, ...)

 --EMP 테이블에서 직책이 'MANAGER' 이거나 'SALESMAN'인 데이타출력
select * from emp
    where job='MANAGER' OR JOB='SALESMAN';
SELECT * FROM EMP
    WHERE JOB IN ('MANAGER', 'SALESMAN');
    
-- COUNT(*) : 총 갯수 반환 SELECT COUNT(*) FROM 테이블명
SELECT COUNT(*) FROM EMP    
    WHERE  job!='MANAGER' AND JOB!='SALESMAN';
SELECT COUNT(*) FROM EMP
    WHERE JOB NOT IN ('MANAGER', 'SALESMAN');

-- BETWEEN / NOT BETWEEN 연산자 
--최소와 최고범위를 지정하여 범위내의 데이터만 조회
-- selcet *, 컬럼명1, 컬럼명2
-- from 테이블명
-- where 컬럼명 between 최솟값 조건 and 최댓값 조건;

-- EMP 테이블에서급여가2000이상이고 2999 이하인데이타출력
select * from emp
    where sal >=2000 and sal<=2999;
select * from emp
    where sal between 2000 and 2999;
    
-- like 연산자
-- select * from 테이블명 
-- where ename like '%나_ 이용조건식';
-- % : 길이에 상관없음
-- _(언더바) : 한글자 길이

-- EMP 테이블에서 사원이름이 'S'로 시작하는 데이타출력 
SELECT * FROM EMP WHERE ENAME LIKE 'S%';

-- EMP 테이블에서 사원이름이 'R'로 끝나는 데이타출력 
SELECT * FROM EMP WHERE ENAME LIKE '%R';

-- EMP 테이블에서 사원이름이 3글자 뒤( _ _ _)에 D로 문자열이 끝나는 데이타 출력 
SELECT * FROM EMP WHERE ENAME LIKE '___D';

-- EMP 테이블에서 사원이름이 3번째 글자가'A', 전체길이는 5인 데이터
select * from emp
    where ename like '__A__';
    
--IS NULL / IS NOT NULL 연산자
-- select 컬럼명1, 컬럼명2, ... from 테이블명
-- where 컬럼명 is null;
select * from emp;

--emp 테이블에서 추가 수당이 없는 (null) 데이터 출력
-- 이렇게 쓰면 사용불가
select * from emp
    where comm=NULL;
SELECT * FROM EMP
WHERE COMM IS NULL;

-- 집합 연산자
-- 2개의 SELECT 구문의 조회되는 컬럼의 갯수와 형태가 같아야한다.
-- SELECT ... FROM 테이블명 WHERE ...
-- 집합 연산자  (UNION/ UNION ALL/ MINUS/ INTERSECT
-- SELECT ... FROM 테이블명 WHERE ...;

-- EMP 테이블에서 부서번호가 10 + 부서번호가 20 인 데이터조회
SELECT * FROM EMP WHERE DEPTNO=10
UNION --중복이 제거되는 합집합
SELECT * FROM EMP WHERE DEPTNO=20;

-- 오류가 안나는 이유는 EMPNO, MGR은 같은 숫자형태
-- ENAME, JOB은 같은 문자열 형태이기 때문에 조회 가능
-- 반은 empno, ename 정보 반은 mgr, job 정보 컬럼이름은 첫번째 select를 따름
SELECT empno, ename FROM EMP WHERE DEPTNO=10
UNION --중복이 제거되는 합집합
SELECT  mgr, job FROM EMP WHERE DEPTNO=20;    

-- EMP 테이블에서 부서번호가 10인 데이터를 제외한 데이터조회 
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP 
MINUS 
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10;

-- EMP 테이블에서 부서번호가 10인 데이터만 데이터조회 
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP 
INTERSECT
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10;

-- day1 폴더에  