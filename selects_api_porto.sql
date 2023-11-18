select * from marca;

select * from T_NSB_USUARIO order by cod_usuario;

SELECT * FROM T_NSB_usuario where des_email = 'usuario2@example.com';

delete T_NSB_USUARIO where usuario='jaci123';

select * from T_NSB_USUARIO;
--select * from T_NSB_USUARIO order by cod_usuario;
select * from T_NSB_CLIENTE;
commit;
SELECT * FROM T_NSB_BIKE WHERE cod_cliente =3;

SELECT * FROM T_NSB_BIKE;

select * from T_NSB_MARCA;
SELECT * FROM T_NSB_MODELO_BIKE;

INSERT INTO T_NSB_usuario (usuario, token_auth, des_email) VALUES ('usuario56','12345','usuario56@example.com','123456');

SELECT * FROM T_NSB_usuario where des_email = 'jaci123@email.com';

INSERT INTO T_NSB_CLIENTE (nom_cliente, des_cpf_cliente, dat_nasc_cliente, des_endereco_cliente, des_cep_cliente, des_telefone_cliente, des_email_cliente, cod_usuario) 
VALUES ('João da Silva', '83798224803', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'Avenida dos Expedicionários, 472', '07400460', '1125502041', 'joao@gmail.com',19);
