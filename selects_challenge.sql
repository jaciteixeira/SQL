select * from t_nsb_cliente where cod_cliente =1;

select * from t_nsb_cliente;

SELECT * FROM T_NSB_acessorio_bike;

SELECT * FROM T_NSB_modificacao_bike;

SELECT * FROM T_NSB_modificacao;

select * from T_NSB_BIKE;

select * from t_nsb_modelo_bike;

select * from t_nsb_marca where cod_marca =1;

select * from t_nsb_modelo_bike where cod_modelo_bike =1;

select * from t_nsb_usuario order by cod_usuario;

DELETE from t_nsb_usuario where cod_usuario = 25;

SELECT * FROM T_NSB_usuario where des_email = 'jaci1234@email.com';





SELECT COUNT(*) AS "Número de Sessões Ativas" 
FROM V$SESSION;

SELECT SID, SERIAL#, STATUS, USERNAME, MACHINE, PROGRAM
FROM V$SESSION;

SELECT RESOURCE_NAME, CURRENT_UTILIZATION, MAX_UTILIZATION, LIMIT_VALUE
FROM V$RESOURCE_LIMIT
WHERE RESOURCE_NAME = 'sessions';

ALTER SYSTEM SET SESSIONS=1000; -- Substitua 1000 pelo número desejado de sessões permitidas


