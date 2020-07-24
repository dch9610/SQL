--: sql �ּ��� [ctrl+/]
-- oracle ������ ����

-- ���� ����� Ȯ���ϱ�
-- �ش� ��� ������ ��� ���� �� ctrl + enter
show user;

-- ������ �����Ǿ� �ִ� ��� ���̺� ��ȸ
select * from tab;

-- Ư�� ���̺��� ���� Ȯ��
-- desc ���̺��;
desc emp;
desc bonus;
desc dept;
desc salgrade;

-- ��ü ���̺� ��ȸ
-- select * from ���̺� ��;

-- Ư�� ���̺� ��ȸ
-- select �÷���1, �÷���2, ... from ���̺��;

select * from emp;
select ename, job from emp;

-- ���̺��� �ߺ� �����͸� �����ϰ� ǥ���ϱ�
-- select distinct �÷���1, �÷���2, .. from ���̺��;
select distinct job from emp;

-- ��Ī ����ϱ�
-- select �÷��� as ��Ī�� from ���̺��;
-- ��Ī�� ������ �� ��� �ο��ȣ( " " )���
desc emp;
select 
    empno as "��� ��ȣ", 
    ename as ����̸� 
from emp;

-- ���� �÷����� ������� �̿�
-- EMP ���̺��������÷��߰��ϱ� 
--����= SAL*12+COMM
select *  from emp;
select 
    ename as "��� �̸�", 
    sal as �Ѵޱ޿�,
    sal*12 as �ϳ�޿�
from emp;

-- ��������, ������������ ����
-- select Į����1, Į����2
-- from ���̺��  order by ���� Į����1, ���� Į����2 ,
-- desc(�������� z~a, ���ڴ� ū������ ������), asc (�������� a~z)
select * from emp 
    order by sal desc;
    
-- emp ���̺��� deptno, ename �������� ���� (1 ����: deptno, 2���� ename)
select * from emp 
    order by deptno, ename;

    
-- where ���� �̿��� ��ȸ
-- select * , �÷���1, �÷���2. ..
--  from ���̺��
-- where �� (��, �� ������);

-- �� ������: <, >, <=, >=. =, !=, <>
--emp ���̺��� �μ���ȣ�� 10���� ���ڵ常 ��ȸ
-- ������ ���� �ְ� ������ �߰�
select * from emp
    where deptno!=10 order by deptno;
    
-- emp ���̺��� �޿��� 1000 �̻��� ���ڵ� ��ȸ
select * from emp
    where sal >=1000 order by ename;
    
-- ��������  and , or, not 
-- EMP ���̺��� �μ���ȣ�� 30�̰� ������ 'SALESMAN' ��� VARCHAR �ڷ����� ( ' ' ) �ٿ�����
select * from emp
    where deptno=30 and job='SALESMAN';
    
-- EMP ���̺��� �μ���ȣ�� 30�� �ƴ� ����Ÿ��� where not 
select * from emp
    where not deptno=30;
    
-- IN/ NOT IN ������
--���ǽĿ���Ư�������ִµ���Ÿ��ȸ 
-- select * ,�÷���1, �÷���2 ...
-- from ���̺��
-- where �÷��� in/not in (��1, ��2, ...)

 --EMP ���̺��� ��å�� 'MANAGER' �̰ų� 'SALESMAN'�� ����Ÿ���
select * from emp
    where job='MANAGER' OR JOB='SALESMAN';
SELECT * FROM EMP
    WHERE JOB IN ('MANAGER', 'SALESMAN');
    
-- COUNT(*) : �� ���� ��ȯ SELECT COUNT(*) FROM ���̺��
SELECT COUNT(*) FROM EMP    
    WHERE  job!='MANAGER' AND JOB!='SALESMAN';
SELECT COUNT(*) FROM EMP
    WHERE JOB NOT IN ('MANAGER', 'SALESMAN');

-- BETWEEN / NOT BETWEEN ������ 
--�ּҿ� �ְ������ �����Ͽ� �������� �����͸� ��ȸ
-- selcet *, �÷���1, �÷���2
-- from ���̺��
-- where �÷��� between �ּڰ� ���� and �ִ� ����;

-- EMP ���̺����޿���2000�̻��̰� 2999 �����ε���Ÿ���
select * from emp
    where sal >=2000 and sal<=2999;
select * from emp
    where sal between 2000 and 2999;
    
-- like ������
-- select * from ���̺�� 
-- where ename like '%��_ �̿����ǽ�';
-- % : ���̿� �������
-- _(�����) : �ѱ��� ����

-- EMP ���̺��� ����̸��� 'S'�� �����ϴ� ����Ÿ��� 
SELECT * FROM EMP WHERE ENAME LIKE 'S%';

-- EMP ���̺��� ����̸��� 'R'�� ������ ����Ÿ��� 
SELECT * FROM EMP WHERE ENAME LIKE '%R';

-- EMP ���̺��� ����̸��� 3���� ��( _ _ _)�� D�� ���ڿ��� ������ ����Ÿ ��� 
SELECT * FROM EMP WHERE ENAME LIKE '___D';

-- EMP ���̺��� ����̸��� 3��° ���ڰ�'A', ��ü���̴� 5�� ������
select * from emp
    where ename like '__A__';
    
--IS NULL / IS NOT NULL ������
-- select �÷���1, �÷���2, ... from ���̺��
-- where �÷��� is null;
select * from emp;

--emp ���̺��� �߰� ������ ���� (null) ������ ���
-- �̷��� ���� ���Ұ�
select * from emp
    where comm=NULL;
SELECT * FROM EMP
WHERE COMM IS NULL;

-- ���� ������
-- 2���� SELECT ������ ��ȸ�Ǵ� �÷��� ������ ���°� ���ƾ��Ѵ�.
-- SELECT ... FROM ���̺�� WHERE ...
-- ���� ������  (UNION/ UNION ALL/ MINUS/ INTERSECT
-- SELECT ... FROM ���̺�� WHERE ...;

-- EMP ���̺��� �μ���ȣ�� 10 + �μ���ȣ�� 20 �� ��������ȸ
SELECT * FROM EMP WHERE DEPTNO=10
UNION --�ߺ��� ���ŵǴ� ������
SELECT * FROM EMP WHERE DEPTNO=20;

-- ������ �ȳ��� ������ EMPNO, MGR�� ���� ��������
-- ENAME, JOB�� ���� ���ڿ� �����̱� ������ ��ȸ ����
-- ���� empno, ename ���� ���� mgr, job ���� �÷��̸��� ù��° select�� ����
SELECT empno, ename FROM EMP WHERE DEPTNO=10
UNION --�ߺ��� ���ŵǴ� ������
SELECT  mgr, job FROM EMP WHERE DEPTNO=20;    

-- EMP ���̺��� �μ���ȣ�� 10�� �����͸� ������ ��������ȸ 
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP 
MINUS 
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10;

-- EMP ���̺��� �μ���ȣ�� 10�� �����͸� ��������ȸ 
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP 
INTERSECT
SELECT EMPNO, ENAME, SAL, DEPTNO FROM EMP WHERE DEPTNO = 10;

-- day1 ������  