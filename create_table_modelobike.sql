CREATE TABLE ModeloBike (
    codigo NUMBER,           -- Coluna para o código (int)
    nome VARCHAR2(255),      -- Coluna para o nome (String)
    marca VARCHAR2(255),     -- Coluna para a marca (Assumindo que a marca é uma String)
    valor NUMBER,            -- Coluna para o valor (double)
    tipo VARCHAR2(255)       -- Coluna para o tipo (String)
);

-- Inserir modelos de bicicletas reais
INSERT INTO ModeloBike (codigo, nome, marca, valor, tipo)
VALUES (1, 'Trek Procaliber 9.7', 'Trek', 2599.99, 'Mountain Bike');

INSERT INTO ModeloBike (codigo, nome, marca, valor, tipo)
VALUES (2, 'Specialized Roubaix', 'Specialized', 2999.99, 'Bicicleta de Estrada');

INSERT INTO ModeloBike (codigo, nome, marca, valor, tipo)
VALUES (3, 'Giant Trance X', 'Giant', 3299.99, 'Mountain Bike');

INSERT INTO ModeloBike (codigo, nome, marca, valor, tipo)
VALUES (4, 'Cannondale Synapse', 'Cannondale', 2699.99, 'Bicicleta de Estrada');

INSERT INTO ModeloBike (codigo, nome, marca, valor, tipo)
VALUES (5, 'Trek Powerfly', 'Trek', 3599.99, 'Bicicleta Elétrica');


drop table modelobike;

-- Crie uma sequência para gerar IDs automaticamente
CREATE SEQUENCE ModeloBike_Seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Crie a tabela ModeloBike com a coluna "id" como ID sequencial
CREATE TABLE ModeloBike (
    id NUMBER,
    codigo NUMBER,
    nome VARCHAR2(255),
    marca VARCHAR2(255),
    valor NUMBER,
    tipo VARCHAR2(255)
);

-- Crie uma trigger para atribuir automaticamente valores à coluna "id" ao inserir novos registros
CREATE OR REPLACE TRIGGER ModeloBike_BI
BEFORE INSERT ON ModeloBike
FOR EACH ROW
BEGIN
  SELECT ModeloBike_Seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
 select * from modelobike;