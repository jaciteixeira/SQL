
SELECT * FROM T_VGS_TIPO_UNIDADE;
SELECT * FROM T_VGS_unidade order by id_unidade;
SELECT * FROM T_VGS_MEDICO;

SELECT M.*, U.nom_unidade FROM T_VGS_MEDICO M
INNER JOIN T_VGS_UNIDADE U ON M.id_unidade = U.id_unidade
WHERE M.num_crm LIKE 'MG%' AND M.id_unidade = 5;

SELECT M.*, U.nom_unidade FROM T_VGS_MEDICO M
INNER JOIN T_VGS_UNIDADE U ON M.id_unidade = U.id_unidade
WHERE M.des_especialidade = 'Pediatra' AND M.num_crm LIKE 'SP%';
