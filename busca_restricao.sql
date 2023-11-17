
--consulta o nome da constraint
SELECT constraint_name, table_name, r_constraint_name
FROM user_constraints
WHERE r_constraint_name IN (
    SELECT constraint_name
    FROM user_constraints
    WHERE table_name = 'T_VGS_TIPO_UNIDADE'
);

-- Substitua 'nome_da_restricao' pelo nome real da restrição que deseja excluir
ALTER TABLE T_VGS_Hospital
DROP CONSTRAINT SYS_C001381099;

