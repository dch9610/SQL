show user;
select * from tab;

-- dual ���̺� -> �ӽ�����
-- dummy �÷����θ� ����
SELECT * FROM DUAL;
SELECT 23+100-60 FROM DUAL;

-- ���ڿ� �Լ�
-- upper ('���ڿ�'): �빮��
-- lower ('���ڿ�'): �ҹ���
-- initcap ('���ڿ�'):  ù���ڸ� �빮��
select upper('apple'),lower( 'aPPle'), initcap('apPle') from dual;

-- LENGTH() : ���ڿ��� ���� ��ȯ 
-- LENGTHB() : ���ڿ��� ����Ʈ �� ��ȯ. ����� �ѱ��ڰ� 1����Ʈ, �ѱ��� ��� �ѱ��ڰ� 3����Ʈ
SELECT LENGTH('aPPLE'), LENGTH('ȫ�浿'), LENGTH('DATABASE') FROM DUAL; 
SELECT LENGTHB('aPPLE'), LENGTHB('ȫ�浿'), LENGTHB('���') FROM DUAL;

-- SUBSTR() : ���ڿ����� �Ϻ� ����
-- SUBSTR(���ڿ�����Ÿ, ������ġ, �������) 
-- SUBSTR(���ڿ�����Ÿ, ������ġ)

-- EMP ���̺�����å�÷��� 3���ڸ�����Ÿ��ȸ
SELECT JOB, SUBSTR(JOB, 1,3) FROM EMP;
SELECT SUBSTR('ABCDEFGH',2,5) AS WOW  FROM DUAL;

-- INSTR()  : ���ڿ� ������ �� Ư�� ���� ��ġ ã��
-- INSTR(���ڿ����, ã�����ϴ¹��ڿ�,  ã�������ġ) 
--ã�� ������ġ���� ������ ã�¹��ڰ� ���°����
SELECT INSTR('HELLO ORACLE!!!', 'L') FROM DUAL; -- 3
SELECT INSTR('HELLO ORACLE!!!', 'L', 5) FROM DUAL; -- 11      

-- REPLACE() : ���ڿ� ��ü
-- REPLACE(���ڿ����, ã�¹���, ��ü����)
SELECT '010-1234-5678' AS RESULT, 
REPLACE('010-1234-5678', '-', '*') AS CHANGE FROM DUAL;

-- LPAD() / RPAD() : ���ʰ� ������ Ư�� ���ڷ� ä���
-- LPAD(���ڿ����, ���ڿ� ��ü �ڸ���, ä�﹮��)
-- RPAD(���ڿ����, ���ڿ� ��ü �ڸ���, ä�﹮��)
SELECT  LPAD('ORACLE', 10, '$') AS RESULT1, --���ʿ������� 10������ 'ORACLE'�� �����ϰ� ä��
RPAD('ORACLE', 10, '*') AS RESULT2,
LPAD('ORACLE', 10) AS RESULT3 
FROM DUAL;

--�����������ڸ� * ǥ���ϱ�
SELECT  
    RPAD('901201-', 14, '*') AS RESULT1,
    RPAD('010-4567-', 13, '*') AS RESULT2 
FROM DUAL;

-- CONCAT() : ���ڿ� ����Ÿ ��ġ��
-- CONCAT(�÷���1, �÷���2);
-- CONCAT(�÷���1, CONCAT('���ڿ�', �÷���2));
-- �÷���1 || �÷���2,  �÷���1 || " " || �÷���2

-- EMP ���̺��� �����ȣ�� ����̸��� �ϳ��� �÷��� ����ϱ�
SELECT CONCAT(EMPNO, ENAME) FROM EMP; 
SELECT EMPNO || '---' || ENAME FROM EMP;
-- EMP ���̺��� �����ȣ�� ����̸��� ' : ' ���ο����ϱ� 
SELECT CONCAT(EMPNO, CONCAT(' : ', ENAME)) FROM EMP;

SELECT CONCAT('������','123') AS SUM FROM DUAL;