
DROP TABLE T_VGS_MEDICO;
DROP TABLE T_VGS_UNIDADE;
DROP TABLE T_VGS_TIPO_UNIDADE;

--------------------------------- MEDICO   
CREATE TABLE T_VGS_TIPO_UNIDADE (
    id_tipo NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    des_tipo_unidade VARCHAR2(50) NOT NULL,
    PRIMARY KEY(id_tipo)
);

------------------------UNIDADE
CREATE TABLE T_VGS_UNIDADE(
    id_unidade NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    nom_unidade VARCHAR2(120) NOT NULL,
    des_telefone_unidade VARCHAR2(11) NOT NULL,
    des_email_unidade VARCHAR2(75) NOT NULL,
    des_senha VARCHAR2(75) NOT NULL,
    des_cep_unidade VARCHAR2(8) NOT NULL,
    des_endereco_unidade VARCHAR2(120),
    des_estado VARCHAR2(2),
    des_cidade VARCHAR2(120),
    des_CNES VARCHAR2(7) NOT NULL,
    id_tipo NUMBER(9) NOT NULL,
    PRIMARY KEY(id_unidade)
);
--altera a tabela adicionando uma restrição a tabela pai
ALTER TABLE T_VGS_UNIDADE ADD CONSTRAINT fk_unidade_tipo_unidade 
FOREIGN KEY (id_tipo) REFERENCES T_VGS_TIPO_UNIDADE (id_tipo);

--------------------------MEDICO
CREATE TABLE T_VGS_MEDICO(
    id_medico NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    nom_medico VARCHAR2(120) NOT NULL,
    des_especialidade VARCHAR2(120) NOT NULL,
    num_crm VARCHAR2(8) NOT NULL,
    des_telefone VARCHAR2(11),
    des_email VARCHAR2(75) NOT NULL,
    des_senha VARCHAR2(75) NOT NULL,
    id_unidade NUMBER(9) NOT NULL,
    PRIMARY KEY (id_medico)    
);
--altera a tabela adicionando uma restrição a tabela pai
ALTER TABLE T_VGS_MEDICO ADD CONSTRAINT fk_medico_unidade 
FOREIGN KEY (id_unidade) REFERENCES T_VGS_UNIDADE (id_unidade);




