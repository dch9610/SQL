--  SQL ���� 

-- 1) HR �������� ������ �� ������ HR���� Ȯ���Ͽ���. 
show user;


--  2) ��� ���̺��� ����Ͽ���.  ��ΰ�? COUNT(*)  �̿�  -- 8��
select count(*) from tab;


-- 3)  COUNTRIES, JOBS ���̺��� ������  ����Ͽ���. 
select * from JOBS, COUNTRIES;


-- 4) EMPLOYEES ���̺� ����Ÿ�� �� ����� ����Ͽ���  -107��
select count(*) from employees;
select * from employees;



--  5) JOBS ���̺��� ��å ���̵�� ��å�� �÷��� ����Ͽ��� 
select job_id, job_title from jobs;



--  6) EMPLOYEES ���̺��� ��å ���̵� �����͸� �ߺ����� ����ϰ� �� ������ ����Ͽ��� 
select distinct EMPLOYEE_ID from EMPLOYEES;
select count(distinct EMPLOYEE_ID) from EMPLOYEES;



-- 7 ) LOCATIONS ���̺��� ��Ī�� �̿��Ͽ� ������ ���� ����Ͽ���.
/*
���� ��ȣ        ���ø�               ���� �ڵ� 
------------ ----------------------    ----------
00989        Roma                     IT
               ...
 
*/
select * from LOCATIONS;
select location_id as �����ȣ, city as ���ø�, country_id as �����ڵ� from LOCATIONS;b



-- 8 ) EMPLOYEES ���̺��� ||  �����ڿ�  ��Ī�� �̿��Ͽ�  ������ ���� ����Ͽ���. 
--       FIRST_NAME || '   ' ||  LAST_NAME �̿� . ���� �÷��� ����Ÿ �� ��� 
--       ���ı����� ��� �̸� �������� �Ѵ�. 
/*
 ��� ��ȣ         ��� �̸�                                           
---------------    ----------------------------
       121         Adam   Fripp                                    
       196        Alana   Walsh                                   
       147        Alberto   Errazuriz         
       .......
*/
select * from EMPLOYEES;
select employee_id as "��� ��ȣ", 
first_name || '  ' || last_name as "��� �̸�" 
from EMPLOYEES
    order by "��� �̸�" asc;



-- 9) EMPLOYEES ���̺��� ��� �����ڸ� �̿��Ͽ� �߰� ������ ���ϰ� �߰� ������ �ִ� ��츸  ����Ͽ���. 
--      �߰� ������ SALARY*COMMISSION_PCT �� �Ѵ�.
/*
     ��� ��ȣ        ��� �̸�               �޿�      �߰� ����
---------------- --------------------------- ----------   ----------
       145         John   Russell           14000       5600
       
*/
select * from EMPLOYEES;
select employee_id as "��� ��ȣ", 
    first_name || ' ' || last_name as "��� �̸�",
    salary as �޿�, 
    salary*commission_pct as "�߰� ����" 
from employees
        WHERE COMMISSION_PCT IS NOT NULL;

-- 10) �޿��� ���� ���� ��� ����Ÿ�� 5�� ����Ͽ���
--       WHERE ROWNUM<=5 �̿� 
select * from EMPLOYEES
    where SALARY>=13500 ORDER by salary desc;



-- 11) EMPLOYEES ���̺��� �μ� ���̵� 90�� ��� �������� �̸��� ��ȭ��ȣ�� ����Ͽ���. 
select * from EMPLOYEES;
select first_name, phone_number from EMPLOYEES
    WHERE DEPARTMENT_ID =90;


-- 12) COUNTRIES ���̺��� ���� ���̵� 1 �̰ų� 3�� �����͸� ���� �̸� ������ ����Ͽ���.  
SELECT * FROM COUNTRIES;
SELECT * FROM COUNTRIES
    WHERE REGION_ID =1 OR REGION_ID =3 
        ORDER BY COUNTRY_NAME ASC;


-- 13)  COUNTRIES ���̺��� ���� ���̵� 2�� �ƴ� ����Ÿ���� C�� �����ϴ� �����͸� ����ϰ� �� ������ ����Ͽ���. 
SELECT * FROM COUNTRIES;
SELECT * FROM COUNTRIES
    WHERE REGION_ID != 2 AND COUNTRY_NAME LIKE 'C%';



-- 14) EMPLOYEES ���̺��� �޿��� 2500 �̸��� ����� �����͸� �޿� �������� �����Ͽ� ����Ͽ��� 
select * from EMPLOYEES;
SELECT * FROM EMPLOYEES
    WHERE SALARY < 2500 ORDER BY SALARY ASC;


-- 15) LOCATIONS ���̺��� LOCATION_ID ���� 1700, 1800�� �ƴ� �����͸� ����Ͽ���. 
--       NOT IN ������ �̿� 
SELECT * FROM LOCATIONS;
SELECT * FROM LOCATIONS
    WHERE LOCATION_ID NOT IN(1700,1800);

-- 16)  LOCATIONS ���̺��� LOCATION_ID ���� 2000~2500�� �����͸� ������������ ����Ͽ��� 
--        BEWEEN .. AND  ������ �̿�
SELECT * FROM LOCATIONS;
SELECT * FROM LOCATIONS
    WHERE LOCATION_ID BETWEEN 2000 AND 2500 ORDER BY LOCATION_ID DESC;



-- 17) EMPLOYEES ���̺��� �޿��� 9000~12000 �����̸� �μ� ���̵� 60��  ����� �����͸� ����Ͽ��� 
SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES
    WHERE SALARY BETWEEN 9000 AND 12000 AND DEPARTMENT_ID =60;


--  18) COUNTRIES ���̺��� ���� �̸��� M���� �����ϰų�  a�� ������ �����͸� ����Ͽ���.
SELECT * FROM COUNTRIES;
SELECT * FROM COUNTRIES
    WHERE COUNTRY_NAME LIKE 'M%' OR COUNTRY_NAME LIKE '%a';


--  19) EMPLOYEES ���̺��� JOB_ID�� 2��° ���ڰ�  C�� ���ԵǾ� �ְų� 
--         LAST_NAME ���� J�� �����ϴ� �����͸� ����Ͽ���.
SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES
    WHERE JOB_ID LIKE '_C%' OR LAST_NAME LIKE 'J%';

-- 20) ���տ����� �̿�. 
--       JOB_HISTORY ���̺��� ��å ���̵� ST_CLERK �̰ų� �μ� ���̵� 90�� �����͸� ����Ͽ��� 
SELECT * FROM JOB_HISTORY;
SELECT * FROM JOB_HISTORY
    WHERE JOB_ID = 'ST_CLERK'
UNION
SELECT * FROM JOB_HISTORY
    WHERE  DEPARTMENT_ID=90;

-- 21) ���տ����� �̿�. 
--       JOB_HISTORY ���̺��� ��å ���̵� A�� S ���ڷ� �����ϴ� �����Ϳ��� 
--       �μ� ���̵� 90�� �����͸� ������ �� ��½��Ѷ�.
SELECT * FROM JOB_HISTORY
    WHERE JOB_ID LIKE 'A%' OR JOB_ID LIKE 'S%'
MINUS
SELECT * FROM JOB_HISTORY
    WHERE  DEPARTMENT_ID=90;



-- 22) ���տ����� �̿�. 
--       EMPLOYEES ���̺��� �̸��� �ּҰ� A�� ������ �����Ϳ��� 
--       �μ� ���̵� 30�� �ƴ� ��� ����Ÿ�� �̸�, �̸���, �μ���ȣ�� ����Ͽ���, 
SELECT * FROM EMPLOYEES;
SELECT FIRST_NAME || ' ' || LAST_NAME AS �̸�, EMAIL as �̸���, DEPARTMENT_ID as �μ���ȣ
    FROM EMPLOYEES 
    WHERE EMAIL LIKE '%A'
INTERSECT
SELECT FIRST_NAME || ' ' || LAST_NAME AS �̸�, EMAIL as �̸���, DEPARTMENT_ID as �μ���ȣ FROM EMPLOYEES 
    WHERE DEPARTMENT_ID != 30











