--  SQL 퀴즈 

-- 대소문자 주의. www붙이면 안됨.
-- http://naver.me/FRY0h3jr (0는 영)
-- 비번은 오늘 날짜 : 0713
-- day1 폴더안의 파일 다운로드 


-- 1) HR 계정으로 접속한 후 계정이 HR인지 확인하여라. 
show user;


--  2) 모든 테이블을 출력하여라.  몇개인가? COUNT(*)  이용 
select * from tab;
select count(*) from tab;


-- 3)  COUNTRIES, JOBS 테이블의 구조를  출력하여라. 
select * from countries;
select * from jobs;


-- 4) EMPLOYEES 테이블 데이타와 총 행수를 출력하여라 
select * from employees;
select count(*) from employees;
select DISTINCT * from employees;

--  5) JOBS 테이블에서 직책 아이디와 직책명 컬럼만 출력하여라 
select job_id, job_title from jobs;

--  6) EMPLOYEES 테이블에서 직책 아이디 데이터를 중복없이 출력하고 총 갯수도 출력하여라 
select 



-- 7 ) LOCATIONS 테이블에서 별칭을 이용하여 다음과 같이 출력하여라.
/*
우편 번호        도시명               국가 코드 
------------ ----------------------    ----------
00989        Roma                     IT
               ...
 
*/



-- 8 ) EMPLOYEES 테이블에서 ||  연산자와  별칭을 이용하여  다음과 같이 출력하여라. 
--       FIRST_NAME || '   ' ||  LAST_NAME 이용 . 같은 컬럼에 데이타 값 출력 
--       정렬기준은 사원 이름 기준으로 한다. 
/*
 사원 번호         사원 이름                                           
---------------    ----------------------------
       121         Adam   Fripp                                    
       196        Alana   Walsh                                   
       147        Alberto   Errazuriz         
       
       .......
*/



-- 9) EMPLOYEES 테이블에서 산술 연산자를 이용하여 추가 수당을 구하고 추가 수당이 있는 경우만  출력하여라. 
--      추가 수당은 SALARY*COMMISSION_PCT 로 한다.
/*
     사원 번호        사원 이름               급여      추가 수당
---------------- --------------------------- ----------   ----------
       145         John   Russell           14000       5600
       
*/



-- 10) 급여가 가장 높은 사원 데이타를 5명만 출력하여라
--       WHERE ROWNUM<=5 이용 



-- 11) EMPLOYEES 테이블에서 부서 아이디가 90인 사원 데이터의 이름과 전화번호를 출력하여라. 



-- 12) COUNTRIES 테이블에서 지역 아이디가 1 이거나 3인 데이터를 나라 이름 순으로 출력하여라.  




-- 13)  COUNTRIES 테이블에서 지역 아이디가 2가 아닌 데이타에서 C로 시작하는 데이터를 출력하고 총 갯수도 출력하여라. 




-- 14) EMPLOYEES 테이블에서 급여가 2500 미만인 사원의 데이터를 급여 기준으로 정렬하여 출력하여라 



-- 15) LOCATIONS 테이블에서 LOCATION_ID 값이 1700, 1800이 아닌 데이터를 출력하여라. 
--       NOT IN 연산자 이용 



-- 16)  LOCATIONS 테이블에서 LOCATION_ID 값이 2000~2500인 데이터를 내림차순으로 출력하여라 
--        BEWEEN .. AND  연산자 이용




-- 17) EMPLOYEES 테이블에서 급여가 9000~12000 사이이며 부서 아이디가 60인  사원의 데이터를 출력하여라 




--  18) COUNTRIES 테이블에서 국가 이름이 M으로 시작하거나  a로 끝나는 데이터를 출력하여라.



--  19) EMPLOYEES 테이블에서 JOB_ID의 2번째 글자가  C로 삽입되어 있거나 
--         LAST_NAME 값이 J로 시작하는 데이터를 출력하여라.



-- 20) 집합연산자 이용. 
--       JOB_HISTORY 테이블에서 직책 아이디가 ST_CLERK 이거나 부서 아이디가 90인 데이터를 출력하여라 



-- 21) 집합연산자 이용. 
--       JOB_HISTORY 테이블에서 직책 아이디가 A나 S 글자로 시작하는 데이터에서 
--       부서 아이디가 90인 데이터를 제외한 후 출력시켜라.




-- 22) 집합연산자 이용. 
--       EMPLOYEES 테이블에서 이메일 주소가 A로 끝나는 데이터에서 
--       부서 아이디가 30이 아닌 사원 데이타의 이름, 이메일, 부서번호를 출력하여라, 












