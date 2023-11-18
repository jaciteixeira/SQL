
-- Insere os tipos de unidade
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Hospital Geral');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Unidade Básica de Saúde');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Unidade de Saúde da Família');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Unidade de Pronto Atendimento');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Hospital Especializado');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Maternidade');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('CAPS - Centro de Atenção Psicossocial');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Laboratório de Análises Clínicas');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Centro de Referência em Saúde do Trabalhador');
INSERT INTO T_VGS_TIPO_UNIDADE (des_tipo_unidade) VALUES ('Clínica de Especialidades Odontológicas');

------------------------------------------
-- UNIDADE
--INSERTS de unidades para tabela T_VGS_UNIDADE
---------------------------------

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade,
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade)  VALUES (
    'UPA Central','1123442355','contato@upacentral.com',
    'central123','Av. Principal, 123', 'SP','São Paulo', 6, '1234567','12345678'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade,
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Instituto de Saúde Mental Brasil', '1133615681', 'contato@saude_mental.com.br',
    'mente123', 'Rua da Serenidade, 333', 'SP', 'São Paulo',
    7, '3210987', '43210987');

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade,
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Clínica Pediátrica Feliz Infância', '2134567890', 'contato@felizinfancia.com.br',
    'pediatric123', 'Rua das Crianças, 222', 'RJ', 'Rio de Janeiro',3, '8765432', '54321098'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade, 
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Unidade Básica de Saúde Santa Clara ', '81987654321', 'contato@ubssantaclara.com.br',
    'ubssantaclara789', 'Rua da Comunidade, 101', 'PE', 'Recife',
    2, '2345678', '57846200'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade, 
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Hospital Brasília', '61987654321', 'contato@hospitalbrasilia.com.br',
    'brasilia123', 'Av. Saúde, 789', 'DF', 'Brasília',
    1, '9876543', '10987654'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade, 
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Posto de Saúde ABC', '21967845766', 'contato@postoabc.com',
    'posto789', 'Avenida da Saúde, 456', 'RJ', 'Rio de Janeiro',
    2, '8765432', '21859200'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade, 
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Clínica Infantil Feliz', '81999819377', 'contato@clinicainfantil.com',
    'feliz123', 'Rua Norma, 789', 'PE', 'Recife',
    3, '9876543', '54321000'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade, 
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Hospital da Cidade', '1199888777', 'contato@hospitalcidade.com.br',
    'cidade456', 'Av. Castelo Branco, 789', 'SP', 'São Paulo',
    1, '7654321', '54321000'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade, 
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Hospital São Lucas', '1199888777', 'contato@hospitalsaolucas.com.br',
    'saolucas456', 'Rua Joana, 987', 'SP', 'São Paulo',
    1, '7654321', '76543210'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade, 
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Posto de Saúde Central', '21997776666', 'postocentral@example.com',
    'postocentral789', 'Avenida da Saúde, 789', 'RJ', 'Rio de Janeiro',
    2, '8765432', '87654321'
);

INSERT INTO T_VGS_UNIDADE (
    nom_unidade, des_telefone_unidade, des_email_unidade, 
    des_senha, des_endereco_unidade, des_estado, des_cidade, 
    id_tipo, des_CNES, des_cep_unidade) VALUES (
    'Clínica Cardiológica do Coração Feliz', '8199888777', 'clinica.coracao@example.com',
    'coracao123', 'Avenida Santa Clara, 222', 'PE', 'Recife',
    5, '9876543', '09368250'
);


------------------------------------------
-- MEDICO
---------------------------------

INSERT INTO T_VGS_MEDICO (nom_medico, des_especialidade, num_crm, des_telefone,
    id_unidade, des_email, des_senha) VALUES (
    'Dr. João', 'Infectologista', 'SP123456', '11987654321', 1, 'joao@gmail.com', '123456joao');

INSERT INTO T_VGS_MEDICO (nom_medico, des_especialidade, num_crm, des_telefone,
    id_unidade, des_email, des_senha) VALUES (
    'Dr. Ana', 'Ginecologista', 'RJ789012', '21987654321', 2, 'ana@hotmail.com', 'senhaAna789');

INSERT INTO T_VGS_MEDICO (nom_medico, des_especialidade, num_crm, des_telefone,
    id_unidade, des_email, des_senha) VALUES (
    'Dr. Carlos', 'Cardiologista', 'PE345678', '81987654321', 4, 'carlos@email.com', 'senhaCarlos987');

INSERT INTO T_VGS_MEDICO (nom_medico, des_especialidade, num_crm, des_telefone,
    id_unidade, des_email, des_senha) VALUES (
    'Dra. Fernanda', 'Pediatra', 'SP567890', '11976543210', 3, 'fernanda@yahoo.com', 'senhaFernanda543');

INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dr. Marcos', 'Ortopedista', 'DF123789', '61976543210', 1, 'marcos@hotmail.com', 'senhaMarcos321');
    
INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dra. Juliana', 'Dermatologista', 'MG987654', '31987654321', 5, 'juliana@gmail.com', 'senhaJuliana654'
);

INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dr. Rafael', 'Neurologista', 'BA234567', '71987654321', 7, 'rafael@yahoo.com', 'senhaRafael876'
);
INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dra. Isabella', 'Oftalmologista', 'SC456789', '47987654321', 6, 'isabella@gmail.com', 'senhaIsabella789'
);

INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dra. Camila', 'Psiquiatra', 'SP987654', '11987654321', 6, 'camila@hotmail.com', 'senhaCamila987'
);
INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dr. Guilherme', 'Otorrinolaringologista', 'RJ123789', '21976543210', 7, 'guilherme@hotmail.com', 'senhaGuilherme321'
);

INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dra. Eduardo', 'Urologista', 'PE345678', '81987654321', 2, 'eduardo@yahoo.com', 'senhaEduardo543'
);

INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dr. Gabriela', 'Gastroenterologista', 'DF567890', '61976543210', 4, 'gabriela@outlook.com', 'senhaGabriela654'
);

INSERT INTO T_VGS_MEDICO (
    nom_medico, des_especialidade, num_crm, des_telefone, 
    id_unidade, des_email, des_senha) VALUES (
    'Dra. Lucas', 'Endocrinologista', 'MG123789', '31987654321', 5, 'lucas@gmail.com', 'senhaLucas321'
);

commit;




