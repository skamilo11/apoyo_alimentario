-- Desde ADMINISTRADOR_DBA
CONNECT ADMINISTRADOR_DB/ADMINISTRADOR_DB;

DROP ROLE MANEJADOR_USUARIO_ESTUDIANTE;
DROP ROLE MANEJADOR_USUARIO_ADMIN;
DROP ROLE ADMIN_APOYO;
DROP ROLE REVISOR_SOLICITUD;
DROP ROLE REVISOR_SERV_SOCIAL;
DROP ROLE REVISOR_ASISTENCIA;
DROP ROLE ROLE_ESTUDIANTE;
DROP ROLE ROLE_DESARROLLADOR;

CREATE ROLE MANEJADOR_USUARIO_ESTUDIANTE;
CREATE ROLE MANEJADOR_USUARIO_ADMIN;
CREATE ROLE ADMIN_APOYO;
CREATE ROLE REVISOR_SOLICITUD;
CREATE ROLE REVISOR_SERV_SOCIAL;
CREATE ROLE REVISOR_ASISTENCIA;
CREATE ROLE ROLE_ESTUDIANTE;
CREATE ROLE ROLE_DESARROLLADOR;
