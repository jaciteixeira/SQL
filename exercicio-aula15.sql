SELECT * FROM emp;
SELECT * FROM dept;
--1.Crie uma consulta para exibir o nome, o n�mero e o nome do departamento de 
--todos os funcion�rios. 
SELECT emp.ename, emp.empno, dept.dname
FROM emp
JOIN dept ON emp.deptno = dept.deptno;

--2.Crie uma lista �nica de todos os cargos existentes no departamento 30. 
--Inclua a localiza��o do departamento 30 na sa�da.
SELECT DISTINCT dept.deptno, emp.job, dept.loc
FROM emp
JOIN dept ON emp.deptno = dept.deptno
WHERE emp.deptno = 30;

--3.Crie uma consulta para exibir o nome do funcion�rio, o nome do departamento 
--e a localiza��o de todos os funcion�rios que recebem uma comiss�o.
SELECT distinct emp.ename, dept.dname, dept.loc
from emp join dept 
ON emp.deptno = dept.deptno
where comm is not null;

--SELECT * FROM emp where ename = 'jones';

--4.Exiba o nome do funcion�rio e o nome do departamento para todos os 
--funcion�rios que possuem um A em seus nomes. 
SELECT emp.ename, dept.dname 
from emp join dept
on emp.deptno = dept.deptno
where emp.ename LIKE '%A%';

--5.Crie uma consulta para exibir o nome, o cargo, o n�mero e o nome do 
--departamento para todos os funcion�rios que trabalham em DALLAS.
SELECT emp.ename, emp.job, emp.deptno, dept.dname
from emp join dept 
on emp.deptno = dept.deptno
where dept.loc = 'dallas';

--6.	Exiba o nome e o n�mero do funcion�rio junto com o nome e o n�mero do gerente. 
--Coloque um label nas colunas Employee, Emp#, Manager e Mgr#, respectivamente.
SELECT emp.ename AS "Employee", emp.empno AS "Emp#", mgr.ename AS "Manager", mgr.empno AS "Mgr#"
FROM emp
LEFT JOIN emp mgr ON emp.mgr = mgr.empno;
