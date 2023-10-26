-- Criar a tabela EMP
CREATE TABLE EMP (
    EMPNO NUMBER(4),
    ENAME VARCHAR2(20),
    JOB VARCHAR2(20),
    DEPTNO NUMBER(2)
);

-- Inserir os valores na tabela EMP
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7839, 'KING', 'PRESIDENT', 10);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7698, 'BLAKE', 'MANAGER', 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7782, 'CLARK', 'MANAGER', 10);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7566, 'JONES', 'MANAGER', 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7499, 'ALLEN', 'SALESMAN', 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7844, 'TURNER', 'SALESMAN', 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7900, 'JAMES', 'CLERK', 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7521, 'WARD', 'SALESMAN', 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7902, 'FORD', 'ANALYST', 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7369, 'SMITH', 'CLERK', 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7654, 'MARTIN', 'SALESMAN', 30);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7934, 'MILLER', 'CLERK', 10);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7876, 'ADAMS', 'CLERK', 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7788, 'SCOTT', 'ANALYST', 20);
INSERT INTO EMP (EMPNO, ENAME, JOB, DEPTNO) VALUES (7905, 'MILES', 'CLERK', 30);

-- Consulta SQL para selecionar os funcion�rios que t�m o cargo 'MANAGER'
---SELECT EMPNO, ENAME, JOB, DEPTNO FROM EMP WHERE JOB = 'MANAGER';
 SELECT * FROM EMP;
 
 
 -- Adicionar a coluna SAL � tabela EMP
ALTER TABLE EMP ADD (SAL NUMBER(7, 2));

-- Atualizar os valores de sal�rio (SAL)
UPDATE EMP SET SAL = 5000.00 WHERE EMPNO = 7839;
UPDATE EMP SET SAL = 2850.00 WHERE EMPNO = 7698;
UPDATE EMP SET SAL = 2450.00 WHERE EMPNO = 7782;
UPDATE EMP SET SAL = 2975.00 WHERE EMPNO = 7566;
UPDATE EMP SET SAL = 1600.00 WHERE EMPNO = 7499;
UPDATE EMP SET SAL = 1500.00 WHERE EMPNO = 7844;
UPDATE EMP SET SAL = 950.00 WHERE EMPNO = 7900;
UPDATE EMP SET SAL = 1250.00 WHERE EMPNO = 7521;
UPDATE EMP SET SAL = 3000.00 WHERE EMPNO = 7902;
UPDATE EMP SET SAL = 800.00 WHERE EMPNO = 7369;
UPDATE EMP SET SAL = 1250.00 WHERE EMPNO = 7654;
UPDATE EMP SET SAL = 1300.00 WHERE EMPNO = 7934;
UPDATE EMP SET SAL = 1100.00 WHERE EMPNO = 7876;
UPDATE EMP SET SAL = 3000.00 WHERE EMPNO = 7788;
UPDATE EMP SET SAL = 800.00 WHERE EMPNO = 7905;


-- Adicionar a coluna COMM � tabela EMP
ALTER TABLE EMP ADD (COMM NUMBER(7, 2));

-- Atualizar as comiss�es para presidente e gerente (manager)
UPDATE EMP SET COMM = 0.20 WHERE JOB = 'PRESIDENT'; -- Comiss�o de 20%
UPDATE EMP SET COMM = 0.15 WHERE JOB = 'MANAGER';   -- Comiss�o de 15%


-- Adicionar a coluna MGR � tabela EMP
ALTER TABLE EMP ADD (MGR NUMBER(4));

-- Atualizar os valores da coluna MGR para os respectivos funcion�rios
UPDATE EMP SET MGR = NULL WHERE EMPNO = 7839; -- KING (PRESIDENTE)
UPDATE EMP SET MGR = 7839 WHERE EMPNO = 7698; -- BLAKE (GERENTE)
UPDATE EMP SET MGR = 7839 WHERE EMPNO = 7782; -- CLARK (GERENTE)
UPDATE EMP SET MGR = 7839 WHERE EMPNO = 7566; -- JONES (GERENTE)
UPDATE EMP SET MGR = 7698 WHERE EMPNO = 7499; -- ALLEN (VENDEDOR)
UPDATE EMP SET MGR = 7698 WHERE EMPNO = 7844; -- TURNER (VENDEDOR)
UPDATE EMP SET MGR = 7698 WHERE EMPNO = 7900; -- JAMES (ATENDENTE)
UPDATE EMP SET MGR = 7698 WHERE EMPNO = 7521; -- WARD (VENDEDOR)
UPDATE EMP SET MGR = 7839 WHERE EMPNO = 7902; -- FORD (ANALISTA)
UPDATE EMP SET MGR = 7902 WHERE EMPNO = 7369; -- SMITH (ATENDENTE)
UPDATE EMP SET MGR = 7698 WHERE EMPNO = 7654; -- MARTIN (VENDEDOR)
UPDATE EMP SET MGR = 7782 WHERE EMPNO = 7934; -- MILLER (ATENDENTE)
UPDATE EMP SET MGR = 7782 WHERE EMPNO = 7876; -- ADAMS (ATENDENTE)
UPDATE EMP SET MGR = 7782 WHERE EMPNO = 7788; -- SCOTT (ANALISTA)
UPDATE EMP SET MGR = 7698 WHERE EMPNO = 7905; -- MILES (ATENDENTE)


-- Adicionar a coluna HIREDATE � tabela EMP
ALTER TABLE EMP ADD (HIREDATE DATE);
-- Atualizar os valores da coluna HIREDATE para exemplos fict�cios
UPDATE EMP SET HIREDATE = TO_DATE('2000-01-01', 'YYYY-MM-DD') WHERE EMPNO = 7839; -- KING (PRESIDENTE)
UPDATE EMP SET HIREDATE = TO_DATE('2005-04-15', 'YYYY-MM-DD') WHERE EMPNO = 7698; -- BLAKE (GERENTE)
UPDATE EMP SET HIREDATE = TO_DATE('2007-06-20', 'YYYY-MM-DD') WHERE EMPNO = 7782; -- CLARK (GERENTE)
UPDATE EMP SET HIREDATE = TO_DATE('2008-12-10', 'YYYY-MM-DD') WHERE EMPNO = 7566; -- JONES (GERENTE)
UPDATE EMP SET HIREDATE = TO_DATE('2010-08-25', 'YYYY-MM-DD') WHERE EMPNO = 7499; -- ALLEN (VENDEDOR)
UPDATE EMP SET HIREDATE = TO_DATE('2011-02-18', 'YYYY-MM-DD') WHERE EMPNO = 7844; -- TURNER (VENDEDOR)
UPDATE EMP SET HIREDATE = TO_DATE('2013-09-05', 'YYYY-MM-DD') WHERE EMPNO = 7900; -- JAMES (ATENDENTE)
UPDATE EMP SET HIREDATE = TO_DATE('2015-07-12', 'YYYY-MM-DD') WHERE EMPNO = 7521; -- WARD (VENDEDOR)
UPDATE EMP SET HIREDATE = TO_DATE('2017-04-03', 'YYYY-MM-DD') WHERE EMPNO = 7902; -- FORD (ANALISTA)
UPDATE EMP SET HIREDATE = TO_DATE('2018-01-22', 'YYYY-MM-DD') WHERE EMPNO = 7369; -- SMITH (ATENDENTE)
UPDATE EMP SET HIREDATE = TO_DATE('2014-10-07', 'YYYY-MM-DD') WHERE EMPNO = 7654; -- MARTIN (VENDEDOR)
UPDATE EMP SET HIREDATE = TO_DATE('2016-06-14', 'YYYY-MM-DD') WHERE EMPNO = 7934; -- MILLER (ATENDENTE)
UPDATE EMP SET HIREDATE = TO_DATE('2019-11-29', 'YYYY-MM-DD') WHERE EMPNO = 7876; -- ADAMS (ATENDENTE)
UPDATE EMP SET HIREDATE = TO_DATE('2020-09-12', 'YYYY-MM-DD') WHERE EMPNO = 7788; -- SCOTT (ANALISTA)
UPDATE EMP SET HIREDATE = TO_DATE('2022-02-08', 'YYYY-MM-DD') WHERE EMPNO = 7905; -- MILES (ATENDENTE)



COMMIT;
SELECT * FROM EMP;