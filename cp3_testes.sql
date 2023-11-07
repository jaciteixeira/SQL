CREATE TABLE cliente (
    cod_cli NUMBER(10) PRIMARY KEY,
    nome VARCHAR2(50),
    limite_credito NUMBER(10, 2)
);

INSERT INTO cliente (cod_cli, nome, limite_credito) VALUES (1, 'Cliente A', 1000);
INSERT INTO cliente (cod_cli, nome, limite_credito) VALUES (2, 'Cliente B', 2000);
INSERT INTO cliente (cod_cli, nome, limite_credito) VALUES (3, 'Cliente C', 1500);

CREATE TABLE venda (
    venda_id NUMBER(10) PRIMARY KEY,
    cod_cli NUMBER(10),
    valor NUMBER(10, 2)
);

INSERT INTO venda (venda_id, cod_cli, valor) VALUES (1, 1, 500);
INSERT INTO venda (venda_id, cod_cli, valor) VALUES (2, 1, 700);
INSERT INTO venda (venda_id, cod_cli, valor) VALUES (3, 2, 1800);


SELECT * FROM
cliente c WHERE c.limite_credito > ( SELECT v.valor FROM venda v WHERE v.cod_cli = c.cod_cli );
                  
SELECT *
FROM cliente
JOIN venda
USING (cod_cli);

SELECT *
FROM cliente
NATURAL JOIN venda;

SELECT *
FROM cliente
CROSS JOIN venda;

SELECT *
FROM cliente
LEFT JOIN venda
ON cliente.cod_cli = venda.cod_cli;



SELECT * FROM venda;


-- Criação da tabela "pedidos"
CREATE TABLE pedidos (
    pedido_id NUMBER(10) PRIMARY KEY,
    descricao_pedido VARCHAR2(50)
);
select * from pedidos;
select * from itens_pedido;
-- Criação da tabela "itens_pedido"
CREATE TABLE itens_pedido (
    item_id NUMBER(10) PRIMARY KEY,
    descricao_item VARCHAR2(50)
);

-- Inserção de dados de exemplo na tabela "pedidos"
INSERT INTO pedidos (pedido_id, descricao_pedido) VALUES (1, 'Pedido 1');
INSERT INTO pedidos (pedido_id, descricao_pedido) VALUES (2, 'Pedido 2');

-- Inserção de dados de exemplo na tabela "itens_pedido"
INSERT INTO itens_pedido (item_id, descricao_item) VALUES (1, 'Item 1');
INSERT INTO itens_pedido (item_id, descricao_item) VALUES (2, 'Item 2');


SELECT *
FROM pedidos
JOIN itens_pedido
USING (pedido_id, item_id);


-- Criação da tabela
CREATE TABLE exemplo_tabela (
    id NUMBER(10) PRIMARY KEY,
    descricao VARCHAR2(50)
);

-- Criação de um gatilho (trigger) para causar um problema de tabela mutante
/*
CREATE OR REPLACE TRIGGER exemplo_trigger
BEFORE INSERT ON exemplo_tabela
FOR EACH ROW
BEGIN
    INSERT INTO exemplo_tabela (id, descricao) VALUES (:NEW.id, 'Descrição alterada');
END;
*/

-- Consulta usando o operador de junção (+) para um LEFT OUTER JOIN
SELECT funcionario.nome, departamento.nome AS nome_departamento
FROM funcionario, departamento
WHERE funcionario.departamento_id = departamento.departamento_id(+);

-- Consulta tentando usar o operador de junção (+) para um FULL OUTER JOIN
SELECT funcionario.nome, departamento.nome AS nome_departamento
FROM funcionario, departamento
WHERE funcionario.departamento_id(+) = departamento.departamento_id;

-- Consulta usando uma função de uma única linha com uma coluna como argumento
SELECT UPPER(nome) FROM clientes;

-- Consulta usando uma função de uma única linha com uma expressão como argumento
SELECT ROUND(preco * 1.1, 2) FROM produtos;

-- Consulta usando uma função de uma única linha com uma constante como argumento
SELECT CONCAT('Olá, ', 'Mundo') FROM dual;

select * from venda;

CREATE TABLE produtos (
    produto_id NUMBER(10) PRIMARY KEY,
    nome_produto VARCHAR2(50),
    preco NUMBER(10, 2),
    estoque NUMBER(10)
);

-- Inserção de dados de exemplo na tabela "produtos"
INSERT INTO produtos (produto_id, nome_produto, preco, estoque) VALUES (1, 'Produto A', 10.99, 100);
INSERT INTO produtos (produto_id, nome_produto, preco, estoque) VALUES (2, 'Produto B', 20.49, 50);
INSERT INTO produtos (produto_id, nome_produto, preco, estoque) VALUES (3, 'Produto C', 15.75, 75);


-- Exemplo de consulta
SELECT TO_NUMBER('42') FROM dual;

SELECT 'Olá, Mundo' AS mensagem FROM dual;


CREATE TABLE FUNCIONARIO (
    COD_FUNC NUMBER(5),
    NOME_FUNC VARCHAR2(30),
    DATA_ADMISSAO_FUNC DATE
);
-- Inserção de dados adicionais na tabela "FUNCIONARIO"
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (3, 'Funcionário 3', TO_DATE('10-MAR-2020', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (4, 'Funcionário 4', TO_DATE('20-APR-2019', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (5, 'Funcionário 5', TO_DATE('05-MAY-2018', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (6, 'Funcionário 6', TO_DATE('15-JUN-2017', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (7, 'Funcionário 7', TO_DATE('10-JUL-2016', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (8, 'Funcionário 8', TO_DATE('25-AUG-2015', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (9, 'Funcionário 9', TO_DATE('03-SEP-2014', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (10, 'Funcionário 10', TO_DATE('08-OCT-2013', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (11, 'Funcionário 11', TO_DATE('15-NOV-2012', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (12, 'Funcionário 12', TO_DATE('20-DEC-2011', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (13, 'Funcionário 13', TO_DATE('25-JAN-2011', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (14, 'Funcionário 14', TO_DATE('01-FEB-2010', 'DD-MON-YYYY'));
INSERT INTO FUNCIONARIO (COD_FUNC, NOME_FUNC, DATA_ADMISSAO_FUNC) VALUES (15, 'Funcionário 15', TO_DATE('10-MAR-2009', 'DD-MON-YYYY'));



SELECT * FROM ( SELECT cod_func, nome_func, data_admissao_func FROM funcionario ORDER BY data_admissao_func) WHERE ROWNUM <= 10;
SELECT cod_func, nome_func, data_admissao_func FROM funcionario WHERE ROWNUM <= 10 ORDER BY data_admissao_func;
SELECT TOP 10 cod_func, nome_func, data_admissao_func FROM funcionario ORDER BY data_admissao_func;
SELECT cod_func, nome_func, data_admissao_func FROM funcionario ORDER BY data_admissao_func LIMIT 10;
SELECT FIRST 10 cod_func, nome_func, data_admissao_func FROM funcionario ORDER BY data_admissao_func;

SELECT * FROM venda WHERE dt_vencto = TO_DATE('31/10/2017','dd/mm/yyyy');
SELECT * FROM venda WHERE dt_vencto = '31/10/2017';
SELECT * FROM venda WHERE dt_vencto = '2017/10/31';
SELECT * FROM venda WHERE dt_vencto = TO_TIMESTAMP('31/10/2017');
SELECT * FROM venda WHERE dt_vencto = CAST('2017/10/31' AS DATE);

drop table venda;

-- Criação da tabela "venda"
CREATE TABLE venda (
    venda_id NUMBER(10) PRIMARY KEY,
    dt_vencto DATE
);

-- Inserção de dados de exemplo na tabela "venda"
INSERT INTO venda (venda_id, dt_vencto) VALUES (1, TO_DATE('31/10/2017', 'dd/mm/yyyy'));
INSERT INTO venda (venda_id, dt_vencto) VALUES (2, TO_DATE('31/10/2018', 'dd/mm/yyyy'));
INSERT INTO venda (venda_id, dt_vencto) VALUES (3, TO_DATE('31/10/2019', 'dd/mm/yyyy'));
INSERT INTO venda (venda_id, dt_vencto) VALUES (4, TO_DATE('31/10/2020', 'dd/mm/yyyy'));
INSERT INTO venda (venda_id, dt_vencto) VALUES (5, TO_DATE('31/10/2021', 'dd/mm/yyyy'));

SELECT cod_func, nome_func, salario FROM funcionario WHERE salario >= (SELECT AVG(salario) FROM funcionario) ORDER BY cod_func, nome_func;
SELECT cod_func, nome_func, salario FROM funcionario WHERE salario >= AVG(salario)ORDER BY cod_func, nome_func;
SELECT cod_func, nome_func, AVG(salario) FROM funcionario WHERE salario BETWEEN MIN(salario) AND MAX(salario) ORDER BY cod_func, nome_func;
SELECT cod_func, nome_func, salario FROM funcionario WHERE salario >= (SELECT MAX(salario)/COUNT(*) FROM funcionario) ORDER BY cod_func, nome_func;
SELECT cod_func, nome_func, AVG(salario) FROM funcionario GROUP BY cod_func, nome_func HAVING salario >= (SELECT MAX(salario)/2 FROM funcionario)ORDER BY cod_func, nome_func;

drop table funcionario;

-- Criação da tabela "funcionario"
CREATE TABLE funcionario (
    cod_func NUMBER(5),
    nome_func VARCHAR2(30),
    salario NUMBER(10, 2)
);

-- Inserção de dados de exemplo na tabela "funcionario"
-- Inserindo alguns funcionários com salários variados
INSERT INTO funcionario (cod_func, nome_func, salario) VALUES (1, 'Funcionário A', 5000.00);
INSERT INTO funcionario (cod_func, nome_func, salario) VALUES (2, 'Funcionário B', 6000.00);
INSERT INTO funcionario (cod_func, nome_func, salario) VALUES (3, 'Funcionário C', 4500.00);
INSERT INTO funcionario (cod_func, nome_func, salario) VALUES (4, 'Funcionário D', 7000.00);
INSERT INTO funcionario (cod_func, nome_func, salario) VALUES (5, 'Funcionário E', 5500.00);
-- Inserir mais funcionários e salários conforme necessário


-- Criação da tabela "venda"
CREATE TABLE venda (
    cod_venda NUMBER(10),
    cod_cli NUMBER(10),
    dt_venda DATE,
    dt_vencto DATE,
    valor NUMBER(10, 2),
    dt_pagto DATE
);

-- Inserção de dados de exemplo na tabela "venda"
-- Inserindo algumas vendas com datas, valores e códigos de cliente variados
INSERT INTO venda (cod_venda, cod_cli, dt_venda, dt_vencto, valor, dt_pagto) VALUES (1, 1, TO_DATE('01/01/2017', 'dd/mm/yyyy'), TO_DATE('01/02/2017', 'dd/mm/yyyy'), 1000.00, NULL);
INSERT INTO venda (cod_venda, cod_cli, dt_venda, dt_vencto, valor, dt_pagto) VALUES (2, 2, TO_DATE('15/03/2018', 'dd/mm/yyyy'), TO_DATE('15/04/2018', 'dd/mm/yyyy'), 1500.00, NULL);
INSERT INTO venda (cod_venda, cod_cli, dt_venda, dt_vencto, valor, dt_pagto) VALUES (3, 3, TO_DATE('10/05/2019', 'dd/mm/yyyy'), TO_DATE('10/06/2019', 'dd/mm/yyyy'), 2000.00, NULL);
-- Inserir mais vendas e dados de exemplo conforme necessário

select * from venda;

SELECT cod_venda, cod_cli, dt_venda, dt_vencto, valor, valor * 1.1 FROM venda WHERE dt_venda >= DATE'2017-01-01' AND   dt_pagto IS NULL;
SELECT cod_venda, cod_cli, dt_venda, dt_vencto, valor, valor + 10% FROM venda WHERE dt_venda >= TO_DATE('01/01/2017','dd/mm/yyyy')AND   NVL(dt_pagto, SYSDATE) = SYSDATE;
SELECT cod_venda, cod_cli, dt_venda, dt_vencto, valor, valor * 1.10 FROM venda WHERE EXTRACT(YEAR FROM dt_venda) > 2017 AND   dt_pagto IS NULL;
SELECT cod_venda, cod_cli, dt_venda, dt_vencto, valor, valor * 1.10 FROM venda WHERE EXTRACT(YEAR FROM dt_venda) = 2017 AND   dt_pagto = NULL;
SELECT cod_venda, cod_cli, dt_venda, dt_vencto, valor, valor * 10.0 FROM venda WHERE TO_CHAR(dt_venda,'yyyy') >= '2017' AND COALESCE(dt_pagto, SYSDATE) IS NOT NULL;