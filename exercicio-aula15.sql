SELECT * FROM emp;
SELECT * FROM dept;
--1.Crie uma consulta para exibir o nome, o número e o nome do departamento de 
--todos os funcionários. 
SELECT emp.ename, emp.empno, dept.dname
FROM emp
JOIN dept ON emp.deptno = dept.deptno;

--2.Crie uma lista única de todos os cargos existentes no departamento 30. 
--Inclua a localização do departamento 30 na saída.
SELECT DISTINCT dept.deptno, emp.job, dept.loc
FROM emp
JOIN dept ON emp.deptno = dept.deptno
WHERE emp.deptno = 30;

--3.Crie uma consulta para exibir o nome do funcionário, o nome do departamento 
--e a localização de todos os funcionários que recebem uma comissão.
SELECT distinct emp.ename, dept.dname, dept.loc
from emp join dept 
ON emp.deptno = dept.deptno
where comm is not null;

--SELECT * FROM emp where ename = 'jones';

--4.Exiba o nome do funcionário e o nome do departamento para todos os 
--funcionários que possuem um A em seus nomes. 
SELECT emp.ename, dept.dname 
from emp join dept
on emp.deptno = dept.deptno
where emp.ename LIKE '%A%';

--5.Crie uma consulta para exibir o nome, o cargo, o número e o nome do 
--departamento para todos os funcionários que trabalham em DALLAS.
SELECT emp.ename, emp.job, emp.deptno, dept.dname
from emp join dept 
on emp.deptno = dept.deptno
where dept.loc = 'dallas';

--6.	Exiba o nome e o número do funcionário junto com o nome e o número do gerente. 
--Coloque um label nas colunas Employee, Emp#, Manager e Mgr#, respectivamente.
SELECT emp.ename AS "Employee", emp.empno AS "Emp#", mgr.ename AS "Manager", mgr.empno AS "Mgr#"
FROM emp
LEFT JOIN emp mgr ON emp.mgr = mgr.empno;
