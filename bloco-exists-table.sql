
--select * from teste;
--drop table teste;

DECLARE
  table_exists NUMBER;
BEGIN
  -- Verifica se a tabela já existe
  SELECT COUNT(*)
  INTO table_exists
  FROM user_tables
  WHERE table_name = 'TESTE';

  -- Se a tabela não existir, cria-a
  IF table_exists = 0 THEN
    EXECUTE IMMEDIATE 
    'CREATE TABLE TESTE ( 
    id NUMBER(9),
    nome VARCHAR2(100),
    PRIMARY KEY (id))';
  END IF;
END;
/
