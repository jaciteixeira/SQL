-- Apaga as tabelas existentes
-- Caso a tabela não exista pode dar erro
DROP TABLE T_NSB_ACESSORIO_BIKE;-- Remove a tabela T_NSB_ACESSORIO_BIKE

DROP TABLE T_NSB_IMAGEM_VISTORIA;-- Remove a tabela T_NSB_IMAGEM_VISTORIA

DROP TABLE T_NSB_VISTORIA;-- Remove a tabela T_NSB_VISTORIA

DROP TABLE T_NSB_ACESSORIO;-- Remove a tabela T_NSB_ACESSORIO

DROP TABLE T_NSB_MODIFICACAO; -- Remove a tabela T_NSB_MODIFICACAO

DROP TABLE T_NSB_MODIFICACAO_BIKE; -- Remove a tabela T_NSB_MODIFICACAO_BIKE

DROP TABLE T_NSB_BIKE; -- Remove a tabela T_NSB_BIKE

DROP TABLE T_NSB_MODELO_BIKE; -- Remove a tabela T_NSB_MODELO_BIKE

DROP TABLE T_NSB_CLIENTE;-- Remove a tabela T_NSB_CLIENTE

DROP TABLE T_NSB_MARCA;-- Remove a tabela T_NSB_MARCA

DROP TABLE T_NSB_USUARIO;



-- Cria as tabelas em ordem de dependencia
CREATE TABLE T_NSB_MARCA ( -- Cria a tabela T_NSB_MARCA
    cod_marca NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1), -- Define um campo de identidade
    nom_marca VARCHAR(50), -- Define um campo de texto
    PRIMARY KEY (cod_marca) -- Define a chave primária
);

-- Insere as marcas de bicicleta na tabela T_NSB_MARCA
INSERT INTO T_NSB_MARCA (nom_marca) VALUES ('Caloi');
INSERT INTO T_NSB_MARCA (nom_marca) VALUES ('Sense');
INSERT INTO T_NSB_MARCA (nom_marca) VALUES ('OGGI');
INSERT INTO T_NSB_MARCA (nom_marca) VALUES ('Soul Cycles');
INSERT INTO T_NSB_MARCA (nom_marca) VALUES ('Trek');
INSERT INTO T_NSB_MARCA (nom_marca) VALUES ('Specialized');
INSERT INTO T_NSB_MARCA (nom_marca) VALUES ('Scott');

-- Criar a tabela T_NSB_USUARIO
CREATE TABLE T_NSB_USUARIO (
    cod_usuario NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    usuario VARCHAR(50),
    token_auth VARCHAR(100), -- Ajuste o tamanho conforme necessário
    des_email VARCHAR(75),
    des_senha VARCHAR(100),
    PRIMARY KEY (cod_usuario)
);


CREATE TABLE T_NSB_CLIENTE (
    cod_cliente NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    nom_cliente VARCHAR(120),
    des_cpf_cliente CHAR(11),
    dat_nasc_cliente DATE,
    des_endereco_cliente VARCHAR(120),
    des_cep_cliente CHAR(8),
    des_telefone_cliente CHAR(13),
    des_email_cliente VARCHAR(75),
    PRIMARY KEY (cod_cliente)
);

ALTER TABLE T_NSB_CLIENTE ADD cod_usuario number;

ALTER TABLE T_NSB_CLIENTE
ADD CONSTRAINT fk_usuario_cliente FOREIGN KEY (cod_usuario) REFERENCES T_NSB_USUARIO(cod_usuario);


-- Insere os dados dos clientes na tabela T_NSB_CLIENTE    
INSERT INTO T_NSB_CLIENTE (nom_cliente, des_cpf_cliente, dat_nasc_cliente, des_endereco_cliente, des_cep_cliente, des_telefone_cliente, des_email_cliente) 
VALUES ('João da Silva', '83798224803', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'Avenida dos Expedicionários, 472', '07400460', '1125502041', 'joao@gmail.com');

INSERT INTO T_NSB_CLIENTE (nom_cliente, des_cpf_cliente, dat_nasc_cliente, des_endereco_cliente, des_cep_cliente, des_telefone_cliente, des_email_cliente) 
VALUES ('Maria Oliveira', '14441243820', TO_DATE('1985-10-25', 'YYYY-MM-DD'), 'Rua Araras, 165', '18132270', '1127262142', 'maria@gmail.com');

INSERT INTO T_NSB_CLIENTE (nom_cliente, des_cpf_cliente, dat_nasc_cliente, des_endereco_cliente, des_cep_cliente, des_telefone_cliente, des_email_cliente) 
VALUES ('Pedro Fernandes', '39216869895', TO_DATE('1987-08-10', 'YYYY-MM-DD'), 'Rua Paulo Alves de Souza, 435', '18022320', '1535664265', 'pedro@gmail.com');

INSERT INTO T_NSB_CLIENTE (nom_cliente, des_cpf_cliente, dat_nasc_cliente, des_endereco_cliente, des_cep_cliente, des_telefone_cliente, des_email_cliente) 
VALUES ('Ana Souza', '73942570882', TO_DATE('1995-03-20', 'YYYY-MM-DD'), 'Viela Capricórnio, 966', '06170109', '1136343924', 'ana@gmail.com');

INSERT INTO T_NSB_CLIENTE (nom_cliente, des_cpf_cliente, dat_nasc_cliente, des_endereco_cliente, des_cep_cliente, des_telefone_cliente, des_email_cliente) 
VALUES ('Lucas Santos', '77857528854', TO_DATE('1980-12-05', 'YYYY-MM-DD'), 'Avenida dos Expedicionários, 502', '07400460', '1125709188', 'lucas@gmail.com');

INSERT INTO T_NSB_CLIENTE (nom_cliente, des_cpf_cliente, dat_nasc_cliente, des_endereco_cliente, des_cep_cliente, des_telefone_cliente, des_email_cliente) 
VALUES ('Carla Lima', '05839144894', TO_DATE('1992-07-30', 'YYYY-MM-DD'), 'Rua Francesco Cilea, 355', '04476610', '1127569811', 'carla@gmail.com');

INSERT INTO T_NSB_CLIENTE (nom_cliente, des_cpf_cliente, dat_nasc_cliente, des_endereco_cliente, des_cep_cliente, des_telefone_cliente, des_email_cliente) 
VALUES ('Rafaela Fernandes', '46673064838', TO_DATE('1989-06-15', 'YYYY-MM-DD'), 'Rua Paschoal Franceschini, 491', '13106508', '1926475813', 'rafaela@gmail.com');


CREATE TABLE T_NSB_MODELO_BIKE ( -- Cria a tabela T_NSB_MODELO_BIKE
    cod_modelo_bike NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1), -- Define um campo de identidade
    nom_modelo_bike VARCHAR(100), -- Define um campo de texto
    val_medio_modelo NUMBER(9,2), -- Define um campo numérico com duas casas decimais
    des_tipo_modelo VARCHAR(35), -- Define um campo de texto
    cod_marca NUMBER(9), -- Define um campo numérico
    PRIMARY KEY (cod_modelo_bike), -- Define a chave primária
    FOREIGN KEY (cod_marca) REFERENCES T_NSB_MARCA(cod_marca)) -- Define uma chave estrangeira referenciando T_NSB_MARCA
;
-- Inserir dados na tabela T_NSB_MODELO_BIKE
INSERT INTO T_NSB_MODELO_BIKE (nom_modelo_bike, val_medio_modelo, des_tipo_modelo, cod_marca)
VALUES ('Mountain Bike', 1200.00, 'Mountain', 1);

INSERT INTO T_NSB_MODELO_BIKE (nom_modelo_bike, val_medio_modelo, des_tipo_modelo, cod_marca)
VALUES ('Speed Bike', 1500.00, 'Speed', 2);

INSERT INTO T_NSB_MODELO_BIKE (nom_modelo_bike, val_medio_modelo, des_tipo_modelo, cod_marca)
VALUES ('City Bike', 800.00, 'City', 3);

INSERT INTO T_NSB_MODELO_BIKE (nom_modelo_bike, val_medio_modelo, des_tipo_modelo, cod_marca)
VALUES ('BMX', 1000.00, 'BMX', 4);

INSERT INTO T_NSB_MODELO_BIKE (nom_modelo_bike, val_medio_modelo, des_tipo_modelo, cod_marca)
VALUES ('Cruiser', 900.00, 'Cruiser', 5);

-- As próximas instruções seguem o mesmo padrão das anteriores, criando as tabelas e definindo suas estruturas.
CREATE TABLE T_NSB_BIKE (
    cod_bike NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    cod_cliente NUMBER(9),
    cod_modelo_bike NUMBER(9),
    val_bike NUMBER(9,2),
    qtd_media_uso NUMBER(1),
    dat_aquisicao_bike DATE,
    obs_notas_bike VARCHAR(200),
    sta_utilizacao_bike VARCHAR(40),
    num_nota_bike CHAR(9),
    sta_locacao_bike NUMBER,
    des_chassi_bike CHAR(17),
    PRIMARY KEY (cod_bike),
    FOREIGN KEY (cod_cliente) REFERENCES T_NSB_CLIENTE(cod_cliente),
    FOREIGN KEY (cod_modelo_bike) REFERENCES T_NSB_MODELO_BIKE(cod_modelo_bike)
);
-- Inserir dados na tabela T_NSB_BIKE
INSERT INTO T_NSB_BIKE (cod_cliente, cod_modelo_bike, val_bike, qtd_media_uso, dat_aquisicao_bike, obs_notas_bike, sta_utilizacao_bike, num_nota_bike, sta_locacao_bike, des_chassi_bike)
VALUES (1, 1, 1200.00, 3, TO_DATE('2023-11-09', 'YYYY-MM-DD'), 'Bike em bom estado', 'Em uso', '123456789', 1, 'ABC123456789');

INSERT INTO T_NSB_BIKE (cod_cliente, cod_modelo_bike, val_bike, qtd_media_uso, dat_aquisicao_bike, obs_notas_bike, sta_utilizacao_bike, num_nota_bike, sta_locacao_bike, des_chassi_bike)
VALUES (2, 2, 1500.00, 2, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'Pequeno arranhão no quadro', 'Em uso', '987654321', 0, 'XYZ987654321');


CREATE TABLE T_NSB_VISTORIA (
    cod_vistoria NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    cod_bike NUMBER(9),
    dat_vistoria TIMESTAMP,
    des_rejeicao_vistoria VARCHAR(255),
    val_confianca_vistoria NUMBER(3),
    sta_resultado_vistoria NUMBER(1),
    PRIMARY KEY (cod_vistoria),
    FOREIGN KEY (cod_bike) REFERENCES T_NSB_BIKE(cod_bike)
);
-- Inserir dados na tabela T_NSB_VISTORIA
INSERT INTO T_NSB_VISTORIA (cod_bike, dat_vistoria, des_rejeicao_vistoria, val_confianca_vistoria, sta_resultado_vistoria)
VALUES (1, TO_TIMESTAMP('2023-11-10 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Nenhum problema identificado', 95, 1);

INSERT INTO T_NSB_VISTORIA (cod_bike, dat_vistoria, des_rejeicao_vistoria, val_confianca_vistoria, sta_resultado_vistoria)
VALUES (2, TO_TIMESTAMP('2023-10-16 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Arranhão no quadro', 90, 0);


CREATE TABLE T_NSB_IMAGEM_VISTORIA (
    cod_vistoria NUMBER(9),
    cod_imagem NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    val_link_imagem VARCHAR(255),
    PRIMARY KEY (cod_vistoria, cod_imagem),
    FOREIGN KEY (cod_vistoria) REFERENCES T_NSB_VISTORIA(cod_vistoria)
);
-- Inserir dados na tabela T_NSB_IMAGEM_VISTORIA
INSERT INTO T_NSB_IMAGEM_VISTORIA (cod_vistoria, val_link_imagem)
VALUES (1, 'https://example.com/image1.jpg');

INSERT INTO T_NSB_IMAGEM_VISTORIA (cod_vistoria, val_link_imagem)
VALUES (2, 'https://example.com/image2.jpg');

CREATE TABLE T_NSB_ACESSORIO (
    cod_acessorio NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    nom_acessorio VARCHAR(50),
    des_acessorio VARCHAR(255),
    val_acessorio NUMBER(9,2),
    cod_marca NUMBER(9),
    PRIMARY KEY (cod_acessorio),
    FOREIGN KEY (cod_marca) REFERENCES T_NSB_MARCA(cod_marca)
);

-- Inserir dados na tabela T_NSB_ACESSORIO
INSERT INTO T_NSB_ACESSORIO (nom_acessorio, des_acessorio, val_acessorio, cod_marca)
VALUES ('Farol LED', 'Farol de LED para visibilidade noturna', 25.00, 1);

INSERT INTO T_NSB_ACESSORIO (nom_acessorio, des_acessorio, val_acessorio, cod_marca)
VALUES ('Cadeado de Segurança', 'Cadeado resistente para segurança da bike', 15.00, 2);

INSERT INTO T_NSB_ACESSORIO (nom_acessorio, des_acessorio, val_acessorio, cod_marca)
VALUES ('Suporte para Celular', 'Suporte ajustável para celular', 10.00, 3);

INSERT INTO T_NSB_ACESSORIO (nom_acessorio, des_acessorio, val_acessorio, cod_marca)
VALUES ('Buzina', 'Buzina para alertar pedestres', 8.00, 4);

INSERT INTO T_NSB_ACESSORIO (nom_acessorio, des_acessorio, val_acessorio, cod_marca)
VALUES ('Bolsa de Armazenamento', 'Bolsa resistente para armazenamento', 20.00, 5);

CREATE TABLE T_NSB_MODIFICACAO (
    cod_modificacao NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    nom_modificacao VARCHAR(90),
    des_modificacao VARCHAR(255),
    val_modificacao NUMBER(9,2),
    cod_marca NUMBER(9),
    PRIMARY KEY (cod_modificacao),
    FOREIGN KEY (cod_marca) REFERENCES T_NSB_MARCA(cod_marca)
);

CREATE TABLE T_NSB_ACESSORIO_BIKE (
    cod_acessorio NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    cod_bike NUMBER(9),
    PRIMARY KEY (cod_acessorio, cod_bike),
    FOREIGN KEY (cod_acessorio) REFERENCES T_NSB_ACESSORIO(cod_acessorio),
    FOREIGN KEY (cod_bike) REFERENCES T_NSB_BIKE(cod_bike)
);
-- Inserir dados na tabela T_NSB_ACESSORIO_BIKE
INSERT INTO T_NSB_ACESSORIO_BIKE ( cod_bike)
VALUES ( 1);

INSERT INTO T_NSB_ACESSORIO_BIKE (cod_bike)
VALUES ( 1);

INSERT INTO T_NSB_ACESSORIO_BIKE (cod_bike)
VALUES (2);

CREATE TABLE T_NSB_MODIFICACAO_BIKE (
    cod_modificacao NUMBER(9) GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    cod_bike NUMBER(9),
    PRIMARY KEY (cod_modificacao, cod_bike)
);
-- Inserir dados fictícios na tabela T_NSB_USUARIO
INSERT INTO T_NSB_USUARIO (usuario, token_auth, des_email,des_senha)
VALUES ('Usuario1', 'token123', 'usuario1@example.com','987654321');

INSERT INTO T_NSB_USUARIO (usuario, token_auth, des_email,des_senha)
VALUES ('Usuario2', 'token456', 'usuario2@example.com','123456789');


