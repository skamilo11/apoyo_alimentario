-- Desde ADMINISTRADOR_DBA
CONNECT ADMINISTRADOR_DB/ADMINISTRADOR_DB;
--Roles para MANEJADOR_USUARIO_ESTUDIANTE
GRANT CREATE USER TO MANEJADOR_USUARIO_ESTUDIANTE;
-- Se tiene que asignarle el rol de estudiante para que este lo pueda asignar
GRANT ROLE_ESTUDIANTE TO  MANEJADOR_USUARIO_ESTUDIANTE WITH ADMIN OPTION;
GRANT SELECT ON ESTUDIANTE TO MANEJADOR_USUARIO_ESTUDIANTE;
GRANT SELECT ON DBA_USERS TO MANEJADOR_USUARIO_ESTUDIANTE;
GRANT CONNECT TO MANEJADOR_USUARIO_ESTUDIANTE WITH ADMIN OPTION;
-- Roles para MANEJADOR_USUARIO_ADMIN
GRANT CREATE USER TO MANEJADOR_USUARIO_ADMIN;
GRANT REVISOR_SOLICITUD TO MANEJADOR_USUARIO_ADMIN WITH ADMIN OPTION;
GRANT REVISOR_SERV_SOCIAL TO MANEJADOR_USUARIO_ADMIN WITH ADMIN OPTION;
GRANT SELECT ON ADMINISTRATIVO TO MANEJADOR_USUARIO_ADMIN;

--Roles ADMIN_APOYO
GRANT SELECT ON ESTUDIANTE TO ADMIN_APOYO;
GRANT SELECT ON SOLICITUD TO ADMIN_APOYO;
GRANT SELECT ON CONDICION TO ADMIN_APOYO;
GRANT SELECT,INSERT ON CONVOCATORIA TO ADMIN_APOYO;
GRANT SELECT,INSERT ON CUPOSCONVOCATORIA TO ADMIN_APOYO;
GRANT SELECT ON PERIODOACADEMICO TO ADMIN_APOYO;
GRANT SELECT ANY SEQUENCE TO ADMIN_APOYO;
GRANT CREATE ANY SEQUENCE TO ADMIN_APOYO;
GRANT SELECT ON SOLICITUD_DIA TO ADMIN_APOYO;
GRANT SELECT ON SOPORTE TO ADMIN_APOYO;

--Roles para REVISOR_SOLICITUD
GRANT SELECT,UPDATE ON SOLICITUD TO REVISOR_SOLICITUD;
GRANT SELECT ON HISTORICOSOLICITUD TO REVISOR_SOLICITUD;
GRANT UPDATE ON SOPORTE TO REVISOR_SOLICITUD;
GRANT SELECT ON CONDICION TO REVISOR_SOLICITUD;
GRANT SELECT ON SOLICITUD_DIA TO REVISOR_SOLICITUD;
--Roles para REVISOR_SERV_SOCIAL
GRANT SELECT ON BENEFICIARIO TO REVISOR_SERV_SOCIAL;
GRANT SELECT,INSERT ON CONTROLHSERVS TO REVISOR_SERV_SOCIAL;

--Roles para REVISOR_ASISTENCIA
GRANT SELECT, UPDATE ON CONTROLDIARIO TO REVISOR_ASISTENCIA;
GRANT SELECT ON DIA TO REVISOR_ASISTENCIA;
GRANT SELECT ON BENEFICIARIO_DIA TO REVISOR_ASISTENCIA;
GRANT SELECT ON TIQUETERA TO REVISOR_ASISTENCIA;
GRANT SELECT ON BENEFICIARIO TO REVISOR_ASISTENCIA;

--Roles para ROLE_DESARROLLADOR
GRANT SELECT ANY TABLE TO ROLE_DESARROLLADOR;
--RANT SELECT ON DBA_ROLE_PRIVS TO ADMINISTRADOR_DBA
--NUEVAS
--Roles para estudiante
GRANT SELECT ON ESTUDIANTE TO ROLE_ESTUDIANTE;
GRANT SELECT, INSERT, UPDATE ON SOLICITUD TO ROLE_ESTUDIANTE;
GRANT SELECT, UPDATE, INSERT ON SOPORTE TO ROLE_ESTUDIANTE;
GRANT SELECT ON CONDICION TO ROLE_ESTUDIANTE;
GRANT SELECT ON TIQUETERA TO ROLE_ESTUDIANTE;
GRANT SELECT ON BENEFICIARIO TO ROLE_ESTUDIANTE;
GRANT SELECT ON DIA TO ROLE_ESTUDIANTE;
GRANT SELECT ON BENEFICIARIO_DIA TO ROLE_ESTUDIANTE;
GRANT SELECT ON DBA_ROLE_PRIVS TO ROLE_ESTUDIANTE;
GRANT SELECT ON CONVOCATORIA TO ROLE_ESTUDIANTE;
GRANT SELECT ANY SEQUENCE TO ROLE_ESTUDIANTE;
GRANT CREATE ANY SEQUENCE TO ROLE_ESTUDIANTE;
GRANT SELECT, INSERT, UPDATE ON SOLICITUD_DIA TO ROLE_ESTUDIANTE;


--NUEVOS PERMISOS
--ROLE_ESTUDIANTE seleccionar condiciones
--Todos los permisos de rol estudiante
--ALTER TABLE SOLICITUD ADD CONSTRAINT UK_EST_CONV UNIQUE (K_CODEST,K_IDCONV);
--ALTER TABLE CONVOCATORIA ADD CONSTRAINT UK_PERIODOACA UNIQUE (K_IDPERACAD);
--ALTER TABLE SOPORTE ADD CONSTRAINT UK_SOL_COND UNIQUE (K_IDSOL,K_IDCOND);
--SELECT K_IDPERACAD FROM PERIODOACADEMICO WHERE F_INIPERACAD>SYSDATE AND ROWNUM=1 ORDER BY F_INIPERACAD;
--ALTER TABLE CONVOCATORIA ADD CONSTRAINT CK_INICIO_FIN CHECK(F_INICONV<F_FINCONV);
