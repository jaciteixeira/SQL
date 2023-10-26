CREATE SEQUENCE minha_sequencia
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 1000
  CYCLE
  CACHE 20;
  
  CREATE TABLE minha_tabela (
  id NUMBER,
  nome VARCHAR2(100),
  idade NUMBER
);

INSERT INTO minha_tabela (id, nome, idade)
VALUES (minha_sequencia.NEXTVAL, 'Exemplo', 30);

-- Inser��o 1
INSERT INTO minha_tabela (id, nome, idade)
VALUES (minha_sequencia.NEXTVAL, 'Maria', 25);

-- Inser��o 2
INSERT INTO minha_tabela (id, nome, idade)
VALUES (minha_sequencia.NEXTVAL, 'Jo�o', 30);

-- Inser��o 3
INSERT INTO minha_tabela (id, nome, idade)
VALUES (minha_sequencia.NEXTVAL, 'Jaci', 24);

-- Inser��o 4
INSERT INTO minha_tabela (id, nome, idade)
VALUES (minha_sequencia.NEXTVAL, 'Ana', 28);

-- Inser��o 5
INSERT INTO minha_tabela (id, nome, idade)
VALUES (minha_sequencia.NEXTVAL, 'Lucas', 32);

select * from minha_tabela;

CREATE OR REPLACE TRIGGER trigger_minha_tabela
BEFORE INSERT ON minha_tabela
FOR EACH ROW
BEGIN
  SELECT minha_sequencia.NEXTVAL INTO :NEW.id FROM dual;
END;
/

DELETE FROM minha_tabela
WHERE nome = 'Jo�o';
