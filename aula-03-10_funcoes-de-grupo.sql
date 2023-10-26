select * from emp;

-- Retorna o valor máximo de SAL, ignorando valores nulos
SELECT MAX(SAL) FROM EMP;

-- Retorna o valor mínimo de SAL, ignorando valores nulos
SELECT MIN(SAL) FROM EMP;

-- Retorna o valor máximo como "MAIOR" e o valor mínimo como "MENOR"
SELECT MAX(SAL) AS "MAIOR", MIN(SAL) AS "MENOR" FROM EMP;

-- Retorna a média (valor médio) de SAL
SELECT AVG(SAL) FROM EMP;

-- Retorna o valor máximo, mínimo e a média de SAL
SELECT MAX(SAL), MIN(SAL), AVG(SAL) FROM EMP;

-- Retorna o valor máximo, mínimo, média de SAL e o total de registros na tabela
SELECT MAX(SAL), MIN(SAL), AVG(SAL), COUNT(*) as "QTD REGISTROS" FROM EMP;

-- Retorna o valor máximo, mínimo, média de SAL e o total de registros para cada valor único de MGR
SELECT MAX(SAL), MIN(SAL), AVG(SAL), COUNT(MGR) FROM EMP;

-- Retorna a coluna COMM
SELECT COMM FROM EMP;

-- Retorna o número total de registros e o número total de registros não nulos em COMM
SELECT COUNT(*), COUNT(COMM) FROM EMP;

-- Retorna a soma de todos os valores em COMM
SELECT SUM(COMM) FROM EMP;

-- Retorna a média de todos os valores em COMM
SELECT AVG(COMM) FROM EMP;

-- Retorna a média de todos os valores em COMM, considerando 0 para valores nulos
SELECT AVG(NVL(COMM, 0)) FROM EMP;

-- Retorna a soma de SAL e a soma de COMM
SELECT SUM(SAL), SUM(COMM) FROM EMP;

-- Retorna o valor mínimo e máximo para a coluna ENAME
SELECT MIN(ENAME), MAX(ENAME) FROM EMP;

-- Retorna a data de contratação mais antiga e mais recente
SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP;

-- Retorna a coluna COMM
SELECT COMM FROM EMP;

-- Retorna o número total de registros e o número total de registros não nulos em COMM
SELECT COUNT(*), COUNT(COMM) FROM EMP;

-- Retorna a soma de todos os valores em COMM
SELECT SUM(COMM) FROM EMP;

-- Retorna a média de todos os valores em COMM
SELECT AVG(COMM) FROM EMP;

-- Retorna a média de todos os valores em COMM, considerando 0 para valores nulos
SELECT AVG(NVL(COMM, 0)) FROM EMP;

-- Retorna a soma de SAL e a soma de COMM
SELECT SUM(SAL), SUM(COMM) FROM EMP;

-- Retorna o valor mínimo e máximo para a coluna ENAME
SELECT MIN(ENAME), MAX(ENAME) FROM EMP;

-- Retorna a data de contratação mais antiga e mais recente
SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP;

-- Retorna a soma de SAL, a média de SAL, o desvio padrão de SAL e a variância de SAL
SELECT SUM(SAL), AVG(SAL), STDDEV(SAL), VARIANCE(SAL) FROM EMP;

-- Retorna a coluna DEPTNO da tabela EMP
SELECT DEPTNO FROM EMP;

-- Retorna a coluna DEPTNO e a soma de salários (SAL) da tabela EMP
SELECT DEPTNO, SUM(SAL) FROM EMP GROUP BY DEPTNO;

-- Retorna a coluna DEPTNO e a soma de salários (SAL) agrupados por DEPTNO
SELECT DEPTNO, SUM(SAL) FROM EMP GROUP BY DEPTNO;

-- Retorna a coluna DEPTNO, JOB e a soma de salários (SAL) agrupados por DEPTNO e JOB
SELECT DEPTNO, JOB, SUM(SAL) FROM EMP GROUP BY DEPTNO, JOB;


SELECT * FROM EMP;


------------EXERCICIOS
--EXERC 4
SELECT ROUND(MAX(sal),0) "Maximum",
      ROUND(MIN(sal),0) "Minimum",
      ROUND(SUM(sal),0) "Sum",
      ROUND(AVG(sal),0) "Average"
FROM   emp;

--EXERC 5
SELECT job, ROUND(MAX(sal),0) "Maximum",
           ROUND(MIN(sal),0) "Minimum",
           ROUND(SUM(sal),0) "Sum",
           ROUND(AVG(sal),0) "Average"
FROM emp     
GROUP BY job;

--EXERC 6
SELECT job, COUNT(*)
FROM   emp
GROUP BY job;

--EXERC 7
SELECT COUNT(DISTINCT mgr) AS "Number of Managers" FROM emp;

--EXERC 8
SELECT   MAX(sal) - MIN(sal) DIFFERENCE FROM emp;

--EXERC 9
SELECT   mgr, MIN(sal)
FROM     emp
WHERE    mgr IS NOT NULL
GROUP BY mgr
HAVING   MIN(sal) > 1000
ORDER BY MIN(sal) DESC;

--EXERC 10

---
---


--EXERC 11
SELECT  COUNT(*) total,
       SUM(DECODE(TO_CHAR(hiredate, 'YYYY'),1980,1,0))"1980",
       SUM(DECODE(TO_CHAR(hiredate, 'YYYY'),1981,1,0))"1981",
       SUM(DECODE(TO_CHAR(hiredate, 'YYYY'),1982,1,0))"1982",
       SUM(DECODE(TO_CHAR(hiredate, 'YYYY'),1983,1,0))"1983"
FROM    emp;

--EXERC 12
SELECT   job "Job",
        SUM(DECODE(deptno , 20, sal)) "Dept 20",
        SUM(DECODE(deptno , 50, sal)) "Dept 50",
       SUM(DECODE(deptno , 80, sal)) "Dept 80",
       SUM(DECODE(deptno , 90, sal)) "Dept 90", 
        SUM(sal) "Total"
FROM     emp
GROUP BY job;