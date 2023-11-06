CREATE SEQUENCE MARCA_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
select * from marca;
  
UPDATE marca
SET codigo = marca_Seq.nextval
WHERE codigo =0;

ALTER TABLE marca
MODIFY codigo DEFAULT marca_Seq.nextval;