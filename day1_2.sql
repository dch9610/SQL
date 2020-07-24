show user;
select * from tab;

-- dual 테이블 -> 임시파일
-- dummy 컬럼으로만 구성
SELECT * FROM DUAL;
SELECT 23+100-60 FROM DUAL;

-- 문자열 함수
-- upper ('문자열'): 대문자
-- lower ('문자열'): 소문자
-- initcap ('문자열'):  첫글자만 대문자
select upper('apple'),lower( 'aPPle'), initcap('apPle') from dual;

-- LENGTH() : 문자열의 길이 반환 
-- LENGTHB() : 문자열의 바이트 수 반환. 영어는 한글자가 1바이트, 한글인 경우 한글자가 3바이트
SELECT LENGTH('aPPLE'), LENGTH('홍길동'), LENGTH('DATABASE') FROM DUAL; 
SELECT LENGTHB('aPPLE'), LENGTHB('홍길동'), LENGTHB('사과') FROM DUAL;

-- SUBSTR() : 문자열에서 일부 추출
-- SUBSTR(문자열데이타, 시작위치, 추출길이) 
-- SUBSTR(문자열데이타, 시작위치)

-- EMP 테이블에서직책컬럼의 3글자만데이타조회
SELECT JOB, SUBSTR(JOB, 1,3) FROM EMP;
SELECT SUBSTR('ABCDEFGH',2,5) AS WOW  FROM DUAL;

-- INSTR()  : 문자열 데이터 내 특정 문자 위치 찾기
-- INSTR(문자열대상, 찾고자하는문자열,  찾기시작위치) 
--찾기 시작위치부터 시작해 찾는문자가 몇번째인지
SELECT INSTR('HELLO ORACLE!!!', 'L') FROM DUAL; -- 3
SELECT INSTR('HELLO ORACLE!!!', 'L', 5) FROM DUAL; -- 11      

-- REPLACE() : 문자열 교체
-- REPLACE(문자열대상, 찾는문자, 대체문자)
SELECT '010-1234-5678' AS RESULT, 
REPLACE('010-1234-5678', '-', '*') AS CHANGE FROM DUAL;

-- LPAD() / RPAD() : 왼쪽과 오른쪽 특정 문자로 채우기
-- LPAD(문자열대상, 문자열 전체 자릿수, 채울문자)
-- RPAD(문자열대상, 문자열 전체 자릿수, 채울문자)
SELECT  LPAD('ORACLE', 10, '$') AS RESULT1, --왼쪽에서부터 10글자중 'ORACLE'을 제외하고 채움
RPAD('ORACLE', 10, '*') AS RESULT2,
LPAD('ORACLE', 10) AS RESULT3 
FROM DUAL;

--개인정보뒷자리 * 표시하기
SELECT  
    RPAD('901201-', 14, '*') AS RESULT1,
    RPAD('010-4567-', 13, '*') AS RESULT2 
FROM DUAL;

-- CONCAT() : 문자열 데이타 합치기
-- CONCAT(컬럼명1, 컬럼명2);
-- CONCAT(컬럼명1, CONCAT('문자열', 컬럼명2));
-- 컬럼명1 || 컬럼명2,  컬럼명1 || " " || 컬럼명2

-- EMP 테이블에서 사원번호와 사원이름을 하나의 컬럼에 출력하기
SELECT CONCAT(EMPNO, ENAME) FROM EMP; 
SELECT EMPNO || '---' || ENAME FROM EMP;
-- EMP 테이블에서 사원번호와 사원이름을 ' : ' 으로연결하기 
SELECT CONCAT(EMPNO, CONCAT(' : ', ENAME)) FROM EMP;

SELECT CONCAT('가나다','123') AS SUM FROM DUAL;