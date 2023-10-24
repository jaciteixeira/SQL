SELECT * FROM emp;
SELECT * FROM dept;


-- Seleciona os nomes dos empregados (ename) e dos departamentos (dname)
-- onde o n�mero do departamento (deptno) nas tabelas "emp" e "dept" coincide.
SELECT ename, dname
    FROM emp, dept
    WHERE emp.deptno = dept.deptno;
    
-- Seleciona os nomes dos empregados (ename) e dos departamentos (dname)
-- usando um INNER JOIN expl�cito entre as tabelas "emp" e "dept" com base na igualdade
-- dos n�meros do departamento (deptno).
SELECT emp.ename, dept.dname FROM emp JOIN dept ON emp.deptno = dept.deptno;

-- Seleciona os nomes dos empregados (ename) e dos departamentos (dname)
-- usando uma jun��o natural, que combina automaticamente colunas com o mesmo nome.
select ename,dname
    from emp natural join dept;
    
-- Seleciona os nomes dos empregados (ename) e dos departamentos (dname)
-- usando um INNER JOIN com a cl�usula USING para juntar as tabelas na coluna "deptno".
select ename, dname
    from emp join dept
    using (deptno);

-- Seleciona os nomes dos empregados (ename) e dos departamentos (dname)
-- usando um INNER JOIN com a cl�usula ON, juntando as tabelas com base na igualdade do "deptno".
select ename, dname
from emp join dept
on (emp.deptno = dept.deptno);

-- Seleciona valores distintos da coluna "losal" na tabela "salgrade".
select distinct losal from salgrade;

-- Seleciona os nomes dos empregados (ename), seus sal�rios (sal), seus n�veis de sal�rio (grade),
-- o sal�rio m�nimo (losal) e o sal�rio m�ximo (hisal) com base em uma jun��o entre as tabelas "emp" e "salgrade",
-- onde o sal�rio do empregado est� dentro do intervalo definido pelo "losal" e "hisal".
select ename, sal, grade, losal, hisal
    from emp join salgrade
    on (sal BETWEEN losal and hisal);

-- Seleciona os nomes dos empregados (ename) e os nomes dos departamentos (dname)
-- usando um INNER JOIN com base na igualdade do "deptno".
select ename, dname
    from emp join dept
    on (emp.deptno = dept.deptno);

-- Seleciona os nomes dos empregados (ename) e os nomes dos departamentos (dname)
-- usando um RIGHT OUTER JOIN, que incluir� todas as linhas da tabela "dept" e as correspondentes da tabela "emp".
select ename, dname
    from emp right outer join dept
    on (emp.deptno = dept.deptno);

    
-- Seleciona os nomes dos empregados (ename) e os nomes dos departamentos (dname)
-- usando um LEFT OUTER JOIN, que incluir� todas as linhas da tabela "emp" e as correspondentes da tabela "dept".
select ename, dname
    from emp left outer join dept
    on (emp.deptno = dept.deptno);

-- Seleciona os nomes dos empregados (ename) e os nomes dos departamentos (dname)
-- usando um FULL OUTER JOIN, que incluir� todas as linhas de ambas as tabelas "emp" e "dept"
-- combinadas com base na correspond�ncia dos n�meros dos departamentos (deptno).
select ename, dname
    from emp full outer join dept
    on (emp.deptno = dept.deptno);

-- Seleciona os nomes dos empregados (ename) e os nomes dos departamentos (dname)
-- usando um CROSS JOIN, que combina todas as linhas da tabela "emp" com todas as linhas da tabela "dept",
-- resultando em todas as combina��es poss�veis entre empregados e departamentos.
select ename, dname
from emp cross join dept;

