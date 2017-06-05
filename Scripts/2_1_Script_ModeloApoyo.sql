/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 13.0 		*/
/*  Created On : 31-mar.-2017 11:53:11 p.m. 				*/
/*  DBMS       : Oracle 						*/
/* ---------------------------------------------------- */

/* Drop Tables */
Connect administrador_db/ADMINISTRADOR_DB
begin
	EXECUTE IMMEDIATE 'DROP TABLE   Administrativo CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   AnioConvocatoria CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Beneficiario CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Beneficiario_Dia CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Condicion CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   ControlDiario CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   ControlHServS
 CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Convocatoria CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   CuposConvocatoria CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Dia CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Estudiante CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   HistoricoSolicitud CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   PeriodoAcademico CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   ServicioSocial CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Solicitud CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Soporte CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Subsidio CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

begin
	EXECUTE IMMEDIATE 'DROP TABLE   Tiquetera CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

/* Create Tables */

CREATE TABLE  Administrativo
(
	K_CEDADMIN VARCHAR2(11) NOT NULL,    -- Tipo de dato: Varchar2 de longitud 11.
	N_CARGOADMIN VARCHAR2(50) NOT NULL,    -- Tipo de dato: Varchar2 de longitud 50.
	N_NOMADMIN VARCHAR2(50) NOT NULL    -- Tipo de dato: Varchar2 de longitud 50.
)
;

CREATE TABLE  AnioConvocatoria
(
	K_IDANIOCONV NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	F_ANIOCONV DATE NOT NULL,    -- Tipo de dato: Date, no nulo.
	Q_MAXCONV NUMBER(1) NOT NULL    -- Este campo se refiere al m�ximo de convocatorias que pueden ser realizadas en un a�o. Tipo de dato: Number de longitud 1, no nulo.
)
;

CREATE TABLE  Beneficiario
(
	K_ID_BENEF NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	K_IDSOL NUMBER(8) NULL,
	I_ESTADOBENEF CHAR(1) NOT NULL,    -- Este campo hace referencia el estado en el que se encuentra el beneficiario del apoyo. El estado puede ser: Activo: A Revocado: R Tipo de dato: Char de longitud 1, no nulo.
	K_IDSUB NUMBER(8) NULL
)
;

CREATE TABLE  Beneficiario_Dia
(
	K_IDBENEFDIA NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8, autonum�rico.
	K_ID_BENEF NUMBER(8) NULL,
	K_IDDIA NUMBER(1) NULL
)
;

CREATE TABLE  Condicion
(
	K_IDCOND NUMBER(2) NOT NULL,    -- Tipo de dato: Number de longitud 2.
	Q_PUNTAJECOND NUMBER(3) NOT NULL,    -- Tipo de dato: Number de longitud 3. No nulo.
	N_DESCCOND VARCHAR2(100) NOT NULL,    -- Tipo de dato: Varchar 2 de longitud 50, no nulo.
	I_IDTIPOCOND NUMBER(1) NOT NULL    -- Este campo corresponde al ID del tipo de condici�n, que pueden ser: 	- Ingresos familiares: 1. 	- Condiciones familiares: 2. 	- Procedencia y lugar de residencia: 3. 	- Condiciones de salud: 4.  Tipo de dato: Number de longitud 1, no nulo.
)
;

CREATE TABLE  ControlDiario
(
	K_IDCONTROLD NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	F_CONTROLD DATE NOT NULL,    -- Tipo de dato: Date, no nulo.
	I_ESTADOCONTROLD CHAR(1) NOT NULL,    -- Este campo corresponde al estado de la entrega del beneficio. El estado puedo ser: 	- Pediente: P. 	- Reclamado: R. 	- No reclamado: N. Tipo de dato: Char de longitud 1, no nulo.
	K_IDTIQ NUMBER(8) NULL
)
;

CREATE TABLE  ControlHServS
(
	K_IDCONTROLH NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	N_DEPENCONTROLH VARCHAR2(50) NOT NULL,    -- Este campo corresponde a la dependencia de la universidad en la que el estudiante realiz� el servicio social. Tipo de dato: Varchar 2 de longitud 50.
	N_DESCCONTROLH VARCHAR2(50) NOT NULL,    -- Este campo corresponde a la descripci�n de las actividades que estudiante realiz� en el servicio social. Tipo de dato: Varchar 2 de longitud 50.
	K_IDSERVSOC NUMBER(8) NULL
)
;

CREATE TABLE  Convocatoria
(
	K_IDCONV NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	F_INICONV DATE NOT NULL,    -- Este campo corresponde a la fecha de inicio de la convocatoria. Tipo de dato: Date, no nulo.
	F_FINCONV DATE NOT NULL,    -- Este campo corresponde a la fecha final de la convocatoria. Tipo de dato: Date, no nulo.
	F_CREACIONCONV DATE NOT NULL,    -- Este campo corresponde a la fecha en la que se crea la convocatoria. Tipo de dato: Date no nulo.
	V_COSTOALMUERZO NUMBER(7,2) NOT NULL,    -- Este campo corresponde al costo por un almuerzo de acuerdo al tipo de subsidio y el porcentaje de descuento correspondiente. Tipo de dato: Number de longitud 7, 5 enteros y 2 decimales. No nulo.
	Q_CUPOSDISP NUMBER(3) NOT NULL,    -- Este campo hace referencia a la cantidad de cupos disponibles que hay para cada tipo de subsidio. Tipo de dato: Number de longitud 3, no nulo.
	I_ESTADOCONV CHAR(1) NOT NULL,    -- Este campo corresponde al estado en el que se encuentra la convocatoria. Puede ser: 	- Convocatoria abierta: A 	- Convocatoria cerrada: C Tipo de dato: Char de longitud 1
	K_CEDADMIN VARCHAR2(11) NULL,
	K_IDPERACAD NUMBER(8) NULL,
	K_IDANIOCONV NUMBER(8) NULL
)
;

CREATE TABLE  CuposConvocatoria
(
	K_IDCUPOSCONV NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	I_TIPOSUBCUPOS CHAR(1) NOT NULL,    -- Este campo corresponde a los tipo de subsidio que ofrece Bienestar en el programa de apoyo alimentario. Los tipos de subsidio son: 	- Total: T 	- Parcial tipo A: A 	- Parcial tipo B: B Tipo de dato: Char de longitud 1, no nulo.
	Q_CANTCUPOSCONV NUMBER(3) NOT NULL,    -- Este campo se refiere a la cantidad de cupos disponibles definidos para cada tipo de subsidio. Tipo de dato: Number de longitud 3, no nulo.
	K_IDCONV NUMBER(8) NULL
)
;

CREATE TABLE  Dia
(
	K_IDDIA NUMBER(1) NOT NULL,    -- Tipo de dato: Number de longitud 1.
	N_NOMDIA CHAR(2) NOT NULL    -- Este campo corresponde al nombre de los 5 primeros d�as de la semana, as�: 	- Lunes: Lu 	- Martes: Ma 	- Mi�rcoles: Mi 	- Jueves: Ju 	- Viernes: Vi Tipo de dato: Char de longitud 2.
)
;

CREATE TABLE  Estudiante
(
	K_CODEST VARCHAR2(12) NOT NULL,    -- Este campo corresponde al c�digo del estudiante, compuesto por el a�o en el que ingres�, el periodo, el c�digo del proyecto curricular y el puesto con el que ingres� a la universidad. Tipo de dato: number de longitud 11.
	N_NOMEST VARCHAR2(50) NOT NULL,    -- Nombre del estudiante Tipo de dato: Varchar2 de longitud 50.
	N_PROYECTOEST VARCHAR2(50) NOT NULL,    -- Tipo de dato: Varchar2 de longitud 50.
	N_DIREST VARCHAR2(50) NOT NULL,    -- Tipo de dato: Varchar2 de longitud 50, no nulo.
	N_CORREOEST VARCHAR2(50) NOT NULL,    -- Tipo de dato: Varchar2 de longitud 50, no nulo.
	N_FACEST VARCHAR2(50) NOT NULL,    -- Tipo de dato: Varchar2 de longitud 50, no nulo.
	I_ESTADOEST CHAR(1) NOT NULL,    -- Este campo corresponde al estado en el que se encuentra el estudiante en la universidad. El estado puede ser: 	- Activo: A 	- En vacaciones: V 	- Inactivo: I Tipo de dato: Char de longitud 1, no nulo.
	V_PROMEST NUMBER(3,2) NOT NULL,    -- Este campo corresponde al promedio acumulado del estudiante. Es un valor decimal. Tipo de dato: Number de longitud 4, 2 enteros, 2 decimales, no nulo.
	Q_ASIGPERDEST NUMBER(2) NULL    -- Este campo corresponde al n�mero de asignaturas perdidas que el estudiante tuvo el semestre pasado. Tipo de dato: Number de longitud 2.
)
;

CREATE TABLE  HistoricoSolicitud
(
	K_IDHIST NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8. Autonum�rico incremental.
	F_HIST DATE NOT NULL,    -- Este campo corresponde a la fecha en la que cambi� el estado de la solicitud. Tipo de dato: Date, campo no nulo
	I_ESTADOHIST CHAR(1) NOT NULL,    -- Este campo corresponde al estado de la solicitud a lo largo del tiempo. Tipo de dato: Char de longitud 1, no nulo. 	- Aprobado: A. 	- Rechazado: R. 	- Pendiente: P.
	N_DESCHIST VARCHAR2(250) NULL,    -- Este campo se refiere a la descripci�n del estado hist�rico de la solicitud.  Tipo de dato: Varchar2 de longitud 250.
	K_IDSOL NUMBER(8) NULL,
	K_CEDADMIN VARCHAR2(11) NULL
)
;

CREATE TABLE  PeriodoAcademico
(
	K_IDPERACAD NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	F_INIPERACAD DATE NOT NULL,    -- Tipo de dato: Date, no nulo.
	N_DESCPERACAD VARCHAR2(50) NOT NULL,    -- Tipo de dato: Varchar2 de longitud 50, no nulo.
	F_FINPERACAD DATE NOT NULL    -- Tipo de dato: Date, no nulo.
)
;

CREATE TABLE  ServicioSocial
(
	K_IDSERVSOC NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	Q_TOTALHMES NUMBER(2) NOT NULL,    -- Este campo corresponde al total de horas al mes que un estudiante realiza de servicio social. Tipo de dato: Number de longitud 2, no nulo.
	Q_HREQMES NUMBER(2) NOT NULL,    -- Este campo corresponde al total de horas al mes que un estudiante debe realizar de servicio social. Tipo de dato: Number de longitud 2, no nulo.
	K_ID_BENEF NUMBER(8) NULL,
	K_CEDADMIN VARCHAR2(11) NULL
)
;

CREATE TABLE  Solicitud
(
	K_IDSOL NUMBER(8) NOT NULL,    -- Tipo de dato: number de longitud 8.
	I_ESTADOSOL CHAR(1) NOT NULL,    -- Tipo de dato: char d longitud 1. 	- Rechazada: R. 	- Rechazada por cupo: C 	- Pendiente: P. 	- Aprobada con beneficio: A
	Q_TPUNTAJESOL NUMBER(3) NULL,    -- Puntaje dado cuando lo solicitud ha sido revisada. Tipo de dato: Number de longitud 3, puede ser nulo.
	N_DESCSOL VARCHAR2(250) NULL,    -- La descripci�n corresponde al porqu� del estado. Tipo de dato: Varchar2 de longitud 250. Se vuelve un campo obligatorio cuando la solicitud ha sido rechazada.
	K_CODEST VARCHAR2(12) NULL,
	K_IDCONV NUMBER(8) NULL
)
;

CREATE TABLE  Soporte
(
	K_IDSOP NUMBER(8) NOT NULL,    -- Este campo corresponde al id del soporte. Tipo de dato: Number de longitud 8 autonum�rico incremental.
	O_DOCSOP VARCHAR2(100) NULL,    -- Este campo corresponde a la ubicaci�n en el disco del documento adjuntado en la solicitud de apoyo alimentario, que sirve como soporte de una condici�n. Tipo de dato: varchar2 de longitud 100 no nulo.
	N_VALORSOP VARCHAR2(100) NOT NULL,    -- Este campo corresponde al valor ingresado por el estudiante en el momento de hacer la solicitud de apoyo alimentario. Tipo de dato: varchar2 de longitud 50 no nulo.
	I_ESTADOSOP CHAR(1) NOT NULL,    -- Este campo corresponde al estado del documento adjuntado en relaci�n con el documento requerido. Tipo de dato: Char de longitud 1, no nulo. Los valores que puede tomar son: 	- Aprobado: A. 	- Rechazado: R. 	- Pendiente: P.
	Q_PUNTAJESOP NUMBER(3) NULL,    -- Este campo corresponde al puntaje de acuerdo a la condici�n a la que est� relacionada y se vuelve un campo obligatorio cuando el estado es aprobado. Tipo de estado: Number de longitud 3.
	K_IDSOL NUMBER(8) NULL,
	K_IDCOND NUMBER(2) NULL
)
;

CREATE TABLE  Subsidio
(
	K_IDSUB NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8.
	I_TIPOSUB CHAR(1) NOT NULL,    -- Este campo corresponde al tipo de subsidio que puede ser asignado a un estudiante. Los tipos de subsidio pueden ser: 	- Total: T. 	- Parcial tipo A: A. 	- Parcial tipo B: B. Tipo de dato: Char de longitud 1, no nulo.
	V_DTOSUB NUMBER(2,1) NOT NULL    -- Este campo corresponde al porcentaje de descuento asignado a cada subsidio. Los descuentos pueden ser: 	- Total: 1.0 	- Parcial tipo A: 0.7 	- Parcial tipo B: 0.4 Tipo de dato: Number de longitud 2: 1 entero, 1 decimal, no nulo.
)
;

CREATE TABLE  Tiquetera
(
	K_IDTIQ NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8, autonum�rico.
	V_VALORTIQ NUMBER(8,2) NOT NULL,    -- Este campo corresponde al valor por cada mes que el estudiante debe pagar seg�n el tipo de subsidio que le fue asignado. Tipo de dato: Number de longitud 8: valor entero de longitud 6 con 2 decimales.
	I_ESTADOPAGOTIQ NUMBER(1) NOT NULL,    -- Este campo corresponde el estado de pago mensual del beneficio de apoyo alimentario. El estado puede ser: 	- Pag�: S. 	- No pag�: N. Tipo de dato: Char de longitud 1, no puede ser nulo.
	K_ID_BENEF NUMBER(8) NULL
)
;

/* Create Comments, Sequences and Triggers for Autonumber Columns */

COMMENT ON TABLE  Administrativo IS 'Esta tabla corresponde a la persona responsable de la revisi�n de la solicitud de un estudiante.'
;

COMMENT ON COLUMN  Administrativo.K_CEDADMIN IS 'Tipo de dato: Varchar2 de longitud 11.'
;

COMMENT ON COLUMN  Administrativo.N_CARGOADMIN IS 'Tipo de dato: Varchar2 de longitud 50.'
;

COMMENT ON COLUMN  Administrativo.N_NOMADMIN IS 'Tipo de dato: Varchar2 de longitud 50.'
;

COMMENT ON TABLE  AnioConvocatoria IS 'Esta tabla hace referencia al a�o en el que se realiza la convocatoria, con un m�ximo de convocatorias permitidas al a�o.'
;

COMMENT ON COLUMN  AnioConvocatoria.K_IDANIOCONV IS 'Tipo de dato: Number de longitud 8.'
;

COMMENT ON COLUMN  AnioConvocatoria.F_ANIOCONV IS 'Tipo de dato: Date, no nulo.'
;

COMMENT ON COLUMN  AnioConvocatoria.Q_MAXCONV IS 'Este campo se refiere al m�ximo de convocatorias que pueden ser realizadas en un a�o. Tipo de dato: Number de longitud 1, no nulo.'
;

COMMENT ON TABLE  Beneficiario IS 'Esta tabla corresponde al registro del estudiante al que ya se le ha aprobado el beneficio de apoyo alimentario.'
;

COMMENT ON COLUMN  Beneficiario.K_ID_BENEF IS 'Tipo de dato: Number de longitud 8. '
;

COMMENT ON COLUMN  Beneficiario.I_ESTADOBENEF IS 'Este campo hace referencia el estado en el que se encuentra el beneficiario del apoyo. El estado puede ser: Activo: A Revocado: R Tipo de dato: Char de longitud 1, no nulo.'
;

COMMENT ON TABLE  Beneficiario_Dia IS 'Tabla de rompiemiento entre la tabla beneficiario y la tabla d�a.'
;

COMMENT ON COLUMN  Beneficiario_Dia.K_IDBENEFDIA IS 'Tipo de dato: Number de longitud 8, autonum�rico.'
;

COMMENT ON TABLE  Condicion IS 'Esta tabla corresponde a la condici�n que pueda tener un estudiante que solicita el apoyo. Cada condici�n est� asociada a un puntaje.'
;

COMMENT ON COLUMN  Condicion.K_IDCOND IS 'Tipo de dato: Number de longitud 2.'
;

COMMENT ON COLUMN  Condicion.Q_PUNTAJECOND IS 'Tipo de dato: Number de longitud 3. No nulo.'
;

COMMENT ON COLUMN  Condicion.N_DESCCOND IS 'Tipo de dato: Varchar 2 de longitud 50, no nulo.'
;

COMMENT ON COLUMN  Condicion.I_IDTIPOCOND IS 'Este campo corresponde al ID del tipo de condici�n, que pueden ser: 	- Ingresos familiares: 1. 	- Condiciones familiares: 2. 	- Procedencia y lugar de residencia: 3. 	- Condiciones de salud: 4.  Tipo de dato: Number de longitud 1, no nulo.'
;

COMMENT ON TABLE  ControlDiario IS 'Esta tabla corresponde al control de entrega del apoyo alimentario diario a un estudiante.'
;

COMMENT ON COLUMN  ControlDiario.K_IDCONTROLD IS 'Tipo de dato: Number de longitud 8.'
;

COMMENT ON COLUMN  ControlDiario.F_CONTROLD IS 'Tipo de dato: Date, no nulo.'
;

COMMENT ON COLUMN  ControlDiario.I_ESTADOCONTROLD IS 'Este campo corresponde al estado de la entrega del beneficio. El estado puedo ser: 	- Pediente: P. 	- Reclamado: R. 	- No reclamado: N. Tipo de dato: Char de longitud 1, no nulo.'
;

COMMENT ON TABLE  ControlHServS IS 'Esta tabla corresponde al control de horas que el estudiante realiza de servicio social.'
;

COMMENT ON COLUMN  ControlHServS.K_IDCONTROLH IS 'Tipo de dato: Number de longitud 8.'
;

COMMENT ON COLUMN  ControlHServS.N_DEPENCONTROLH IS 'Este campo corresponde a la dependencia de la universidad en la que el estudiante realiz� el servicio social. Tipo de dato: Varchar 2 de longitud 50.'
;

COMMENT ON COLUMN  ControlHServS.N_DESCCONTROLH IS 'Este campo corresponde a la descripci�n de las actividades que estudiante realiz� en el servicio social. Tipo de dato: Varchar 2 de longitud 50.'
;

COMMENT ON TABLE  Convocatoria IS 'Esta tabla corresponde a la convocatoria realizada para la recepci�n de documentos del apoyo alimentario.'
;

COMMENT ON COLUMN  Convocatoria.K_IDCONV IS 'Tipo de dato: Number de longitud 8. Autonum�rico.'
;

COMMENT ON COLUMN  Convocatoria.F_INICONV IS 'Este campo corresponde a la fecha de inicio de la convocatoria. Tipo de dato: Date, no nulo.'
;

COMMENT ON COLUMN  Convocatoria.F_FINCONV IS 'Este campo corresponde a la fecha final de la convocatoria. Tipo de dato: Date, no nulo.'
;

COMMENT ON COLUMN  Convocatoria.F_CREACIONCONV IS 'Este campo corresponde a la fecha en la que se crea la convocatoria. Tipo de dato: Date no nulo.'
;

COMMENT ON COLUMN  Convocatoria.V_COSTOALMUERZO IS 'Este campo corresponde al costo por un almuerzo de acuerdo al tipo de subsidio y el porcentaje de descuento correspondiente. Tipo de dato: Number de longitud 7, 5 enteros y 2 decimales. No nulo.'
;

COMMENT ON COLUMN  Convocatoria.Q_CUPOSDISP IS 'Este campo hace referencia a la cantidad de cupos disponibles que hay para cada tipo de subsidio. Tipo de dato: Number de longitud 3, no nulo.'
;

COMMENT ON COLUMN  Convocatoria.I_ESTADOCONV IS 'Este campo corresponde al estado en el que se encuentra la convocatoria. Puede ser: 	- Convocatoria abierta: A 	- Convocatoria cerrada: C Tipo de dato: Char de longitud 1'
;

COMMENT ON TABLE  CuposConvocatoria IS 'Esta tabla hace referencia a la cantidad de cupos disponibles por subsidio que son definidos en la convocatoria.'
;

COMMENT ON COLUMN  CuposConvocatoria.K_IDCUPOSCONV IS 'Tipo de dato: Number de longitud 8.'
;

COMMENT ON COLUMN  CuposConvocatoria.I_TIPOSUBCUPOS IS 'Este campo corresponde a los tipo de subsidio que ofrece Bienestar en el programa de apoyo alimentario. Los tipos de subsidio son: 	- Total: T 	- Parcial tipo A: A 	- Parcial tipo B: B Tipo de dato: Char de longitud 1, no nulo.'
;

COMMENT ON COLUMN  CuposConvocatoria.Q_CANTCUPOSCONV IS 'Este campo se refiere a la cantidad de cupos disponibles definidos para cada tipo de subsidio. Tipo de dato: Number de longitud 3, no nulo.'
;

COMMENT ON TABLE  Dia IS 'Esta tabla corresponde a los d�as de la semana.'
;

COMMENT ON COLUMN  Dia.K_IDDIA IS 'Tipo de dato: Number de longitud 1.'
;

COMMENT ON COLUMN  Dia.N_NOMDIA IS 'Este campo corresponde al nombre de los 5 primeros d�as de la semana, as�: 	- Lunes: Lu 	- Martes: Ma 	- Mi�rcoles: Mi 	- Jueves: Ju 	- Viernes: Vi Tipo de dato: Char de longitud 2.'
;

COMMENT ON TABLE  Estudiante IS 'Esta tabla corresponde a la tabla del Estudiante que se trate de la Base de Datos de C�ndor.'
;

COMMENT ON COLUMN  Estudiante.K_CODEST IS 'Este campo corresponde al c�digo del estudiante, compuesto por el a�o en el que ingres�, el periodo, el c�digo del proyecto curricular y el puesto con el que ingres� a la universidad. Tipo de dato: number de longitud 11.'
;

COMMENT ON COLUMN  Estudiante.N_NOMEST IS 'Nombre del estudiante Tipo de dato: Varchar2 de longitud 50.'
;

COMMENT ON COLUMN  Estudiante.N_PROYECTOEST IS 'Tipo de dato: Varchar2 de longitud 50.'
;

COMMENT ON COLUMN  Estudiante.N_DIREST IS 'Tipo de dato: Varchar2 de longitud 50, no nulo.'
;

COMMENT ON COLUMN  Estudiante.N_CORREOEST IS 'Tipo de dato: Varchar2 de longitud 50, no nulo.'
;

COMMENT ON COLUMN  Estudiante.N_FACEST IS 'Tipo de dato: Varchar2 de longitud 50, no nulo.'
;

COMMENT ON COLUMN  Estudiante.I_ESTADOEST IS 'Este campo corresponde al estado en el que se encuentra el estudiante en la universidad. El estado puede ser: 	- Activo: A 	- En vacaciones: V 	- Inactivo: I Tipo de dato: Char de longitud 1, no nulo.'
;

COMMENT ON COLUMN  Estudiante.V_PROMEST IS 'Este campo corresponde al promedio acumulado del estudiante. Es un valor decimal. Tipo de dato: Number de longitud 4, 2 enteros, 2 decimales, no nulo.'
;

COMMENT ON COLUMN  Estudiante.Q_ASIGPERDEST IS 'Este campo corresponde al n�mero de asignaturas perdidas que el estudiante tuvo el semestre pasado. Tipo de dato: Number de longitud 2.'
;

COMMENT ON TABLE  HistoricoSolicitud IS 'Esta tabla guarda los cambios de estado que puede tener una solicitud.'
;

COMMENT ON COLUMN  HistoricoSolicitud.K_IDHIST IS 'Tipo de dato: Number de longitud 8. Autonum�rico incremental.'
;

COMMENT ON COLUMN  HistoricoSolicitud.F_HIST IS 'Este campo corresponde a la fecha en la que cambi� el estado de la solicitud. Tipo de dato: Date, campo no nulo'
;

COMMENT ON COLUMN  HistoricoSolicitud.I_ESTADOHIST IS 'Este campo corresponde al estado de la solicitud a lo largo del tiempo. Tipo de dato: Char de longitud 1, no nulo. 	- Aprobado: A. 	- Rechazado: R. 	- Pendiente: P.'
;

COMMENT ON COLUMN  HistoricoSolicitud.N_DESCHIST IS 'Este campo se refiere a la descripci�n del estado hist�rico de la solicitud.  Tipo de dato: Varchar2 de longitud 250.'
;

COMMENT ON TABLE  PeriodoAcademico IS 'Esta tabla corresponde a las fechas definidas en el calendario acad�mico de la universidad para los periodos correspondientes a los semestres del a�o.'
;

COMMENT ON COLUMN  PeriodoAcademico.K_IDPERACAD IS 'Tipo de dato: Number de longitud 8.'
;

COMMENT ON COLUMN  PeriodoAcademico.F_INIPERACAD IS 'Tipo de dato: Date, no nulo.'
;

COMMENT ON COLUMN  PeriodoAcademico.N_DESCPERACAD IS 'Tipo de dato: Varchar2 de longitud 50, no nulo.'
;

COMMENT ON COLUMN  PeriodoAcademico.F_FINPERACAD IS 'Tipo de dato: Date, no nulo.'
;

COMMENT ON TABLE  ServicioSocial IS 'Esta tabla corresponde al servicio social que presta un estudiante de acuerdo al subsidio que le haya sido asignado.'
;

COMMENT ON COLUMN  ServicioSocial.K_IDSERVSOC IS 'Tipo de dato: Number de longitud 8.'
;

COMMENT ON COLUMN  ServicioSocial.Q_TOTALHMES IS 'Este campo corresponde al total de horas al mes que un estudiante realiza de servicio social. Tipo de dato: Number de longitud 2, no nulo.'
;

COMMENT ON COLUMN  ServicioSocial.Q_HREQMES IS 'Este campo corresponde al total de horas al mes que un estudiante debe realizar de servicio social. Tipo de dato: Number de longitud 2, no nulo.'
;

COMMENT ON TABLE  Solicitud IS 'Esta tabla corresponde a la solicitud de apoyo realizada por un estudiante.'
;

COMMENT ON COLUMN  Solicitud.K_IDSOL IS 'Tipo de dato: number de longitud 8.'
;

COMMENT ON COLUMN  Solicitud.I_ESTADOSOL IS 'Tipo de dato: char d longitud 1. 	- Rechazada: R. 	- Rechazada por cupo: C 	- Pendiente: P. 	- Aprobada con beneficio: A'
;

COMMENT ON COLUMN  Solicitud.Q_TPUNTAJESOL IS 'Puntaje dado cuando lo solicitud ha sido revisada. Tipo de dato: Number de longitud 3, puede ser nulo.'
;

COMMENT ON COLUMN  Solicitud.N_DESCSOL IS 'La descripci�n corresponde al porqu� del estado. Tipo de dato: Varchar2 de longitud 250. Se vuelve un campo obligatorio cuando la solicitud ha sido rechazada.'
;

COMMENT ON TABLE  Soporte IS 'Esta tabla corresponde al documento que soporta una condici�n del estudiante que solicita el apoyo alimentario.'
;

COMMENT ON COLUMN  Soporte.K_IDSOP IS 'Este campo corresponde al id del soporte. Tipo de dato: Number de longitud 8 autonum�rico incremental.'
;

COMMENT ON COLUMN  Soporte.O_DOCSOP IS 'Este campo corresponde a la ubicaci�n en el disco del documento adjuntado en la solicitud de apoyo alimentario, que sirve como soporte de una condici�n. Tipo de dato: varchar2 de longitud 100 no nulo.'
;

COMMENT ON COLUMN  Soporte.N_VALORSOP IS 'Este campo corresponde al valor ingresado por el estudiante en el momento de hacer la solicitud de apoyo alimentario. Tipo de dato: varchar2 de longitud 50 no nulo.'
;

COMMENT ON COLUMN  Soporte.I_ESTADOSOP IS 'Este campo corresponde al estado del documento adjuntado en relaci�n con el documento requerido. Tipo de dato: Char de longitud 1, no nulo. Los valores que puede tomar son: 	- Aprobado: A. 	- Rechazado: R. 	- Pendiente: P.'
;

COMMENT ON COLUMN  Soporte.Q_PUNTAJESOP IS 'Este campo corresponde al puntaje de acuerdo a la condici�n a la que est� relacionada y se vuelve un campo obligatorio cuando el estado es aprobado. Tipo de estado: Number de longitud 3.'
;

COMMENT ON TABLE  Subsidio IS 'Esta tabla corresponde a un subsidio asociado a su valor de descuento.'
;

COMMENT ON COLUMN  Subsidio.K_IDSUB IS 'Tipo de dato: Number de longitud 8.'
;

COMMENT ON COLUMN  Subsidio.I_TIPOSUB IS 'Este campo corresponde al tipo de subsidio que puede ser asignado a un estudiante. Los tipos de subsidio pueden ser: 	- Total: T. 	- Parcial tipo A: A. 	- Parcial tipo B: B. Tipo de dato: Char de longitud 1, no nulo.'
;

COMMENT ON COLUMN  Subsidio.V_DTOSUB IS 'Este campo corresponde al porcentaje de descuento asignado a cada subsidio. Los descuentos pueden ser: 	- Total: 1.0 	- Parcial tipo A: 0.7 	- Parcial tipo B: 0.4 Tipo de dato: Number de longitud 2: 1 entero, 1 decimal, no nulo.'
;

COMMENT ON TABLE  Tiquetera IS 'Esta tabla corresponde a la asignaci�n mensual del beneficio a un estudiante.'
;

COMMENT ON COLUMN  Tiquetera.K_IDTIQ IS 'Tipo de dato: Number de longitud 8, autonum�rico.'
;

COMMENT ON COLUMN  Tiquetera.V_VALORTIQ IS 'Este campo corresponde al valor por cada mes que el estudiante debe pagar seg�n el tipo de subsidio que le fue asignado. Tipo de dato: Number de longitud 8: valor entero de longitud 6 con 2 decimales.'
;

COMMENT ON COLUMN  Tiquetera.I_ESTADOPAGOTIQ IS 'Este campo corresponde el estado de pago mensual del beneficio de apoyo alimentario. El estado puede ser: 	- Pag�: S. 	- No pag�: N. Tipo de dato: Char de longitud 1, no puede ser nulo.'
;

/* Create Primary Keys, Indexes, Uniques, Checks, Triggers */

ALTER TABLE  Administrativo
 ADD CONSTRAINT PK_ADMIN
	PRIMARY KEY (K_CEDADMIN)
 USING INDEX
;

ALTER TABLE  AnioConvocatoria
 ADD CONSTRAINT PK_ANIOCONV
	PRIMARY KEY (K_IDANIOCONV)
 USING INDEX
;

ALTER TABLE  Beneficiario
 ADD CONSTRAINT PK_BENEF
	PRIMARY KEY (K_ID_BENEF)
 USING INDEX
;

ALTER TABLE  Beneficiario
 ADD CONSTRAINT CK_I_ESTADOBENEF CHECK (I_ESTADOBENEF in ('A', 'R'))
;

CREATE INDEX IXFK_BENEF_SOL
 ON  Beneficiario (K_IDSOL)
;

CREATE INDEX IXFK_BENEF_SUB
 ON  Beneficiario (K_IDSUB)
;

ALTER TABLE  Beneficiario_Dia
 ADD CONSTRAINT PK_BENEF_DIA
	PRIMARY KEY (K_IDBENEFDIA)
 USING INDEX
;

CREATE INDEX IXFK_BENEF_BENEF
 ON  Beneficiario_Dia (K_ID_BENEF)
;

CREATE INDEX IXFK_BENEF_DIA_DIA
 ON  Beneficiario_Dia (K_IDDIA)
;

ALTER TABLE  Condicion
 ADD CONSTRAINT PK_COND
	PRIMARY KEY (K_IDCOND)
 USING INDEX
;

ALTER TABLE  Condicion
 ADD CONSTRAINT CK_I_IDTIPOCOND CHECK (I_IDTIPOCOND in (1, 2, 3, 4))
;

ALTER TABLE  ControlDiario
 ADD CONSTRAINT PK_CONTROLD
	PRIMARY KEY (K_IDCONTROLD)
 USING INDEX
;

ALTER TABLE  ControlDiario
 ADD CONSTRAINT CK_I_ESTADOCONTROLD CHECK (I_ESTADOCONTROLD in ('P', 'R', 'N'))
;

CREATE INDEX IXFK_CONTROLD_TIQ
 ON  ControlDiario (K_IDTIQ)
;

ALTER TABLE  ControlHServS
 ADD CONSTRAINT PK_CONTROLHSERVSOC
	PRIMARY KEY (K_IDCONTROLH)
 USING INDEX
;

CREATE INDEX IXFK_CONTROLH_SERVSOC
 ON  ControlHServS
 (K_IDSERVSOC)
;

ALTER TABLE  Convocatoria
 ADD CONSTRAINT PK_CONV
	PRIMARY KEY (K_IDCONV)
 USING INDEX
;

ALTER TABLE  Convocatoria
 ADD CONSTRAINT CK_I_ESTADOCONV CHECK (I_ESTADOCONV in ('A', 'C'))
;

CREATE INDEX IXFK_CONV_ADMIN
 ON  Convocatoria (K_CEDADMIN)
;

CREATE INDEX IXFK_CONV_ANIOCONV
 ON  Convocatoria (K_IDANIOCONV)
;

CREATE INDEX IXFK_CONV_PER
 ON  Convocatoria (K_IDPERACAD)
;

ALTER TABLE  CuposConvocatoria
 ADD CONSTRAINT PK_CUPOSCONV
	PRIMARY KEY (K_IDCUPOSCONV)
 USING INDEX
;

ALTER TABLE  CuposConvocatoria
 ADD CONSTRAINT CK_I_TIPOSUBCUPOS CHECK (I_TIPOSUBCUPOS in ('T', 'A', 'B'))
;

CREATE INDEX IXFK_CUPOSCONV_CONV
 ON  CuposConvocatoria (K_IDCONV)
;

ALTER TABLE  Dia
 ADD CONSTRAINT PK_DIA
	PRIMARY KEY (K_IDDIA)
 USING INDEX
;

ALTER TABLE  Dia
 ADD CONSTRAINT CK_N_NOMDIA CHECK (N_NOMDIA in ('LU', 'MA', 'MI', 'JU', 'VI'))
;

ALTER TABLE  Estudiante
 ADD CONSTRAINT PK_EST
	PRIMARY KEY (K_CODEST)
 USING INDEX
;

ALTER TABLE  Estudiante
 ADD CONSTRAINT CK_I_ESTADOEST CHECK (I_ESTADOEST in ('A', 'V', 'I'))
;

ALTER TABLE  HistoricoSolicitud
 ADD CONSTRAINT PK_HISTSOL
	PRIMARY KEY (K_IDHIST)
 USING INDEX
;

ALTER TABLE  HistoricoSolicitud
 ADD CONSTRAINT CK_ESTADOHIST CHECK (I_ESTADOHIST in ('A','R','P'))
;

CREATE INDEX IXFK_HISTSOL_ADMIN
 ON  HistoricoSolicitud (K_CEDADMIN)
;

CREATE INDEX IXFK_HISTSOL_SOL
 ON  HistoricoSolicitud (K_IDSOL)
;

ALTER TABLE  PeriodoAcademico
 ADD CONSTRAINT PK_CALENDARIOA
	PRIMARY KEY (K_IDPERACAD)
 USING INDEX
;

ALTER TABLE  ServicioSocial
 ADD CONSTRAINT PK_SERVSOC
	PRIMARY KEY (K_IDSERVSOC)
 USING INDEX
;

CREATE INDEX IXFK_SERVSOC_ADMIN
 ON  ServicioSocial (K_CEDADMIN)
;

CREATE INDEX IXFK_SERVSOC_BENEF
 ON  ServicioSocial (K_ID_BENEF)
;

ALTER TABLE  Solicitud
 ADD CONSTRAINT PK_SOL
	PRIMARY KEY (K_IDSOL)
 USING INDEX
;

ALTER TABLE  Solicitud
 ADD CONSTRAINT CK_I_ESTADOSOL CHECK (I_ESTADOSOL in ('R','C','P','A'))
;

CREATE INDEX IXFK_SO_CONV
 ON  Solicitud (K_IDCONV)
;

CREATE INDEX IXFK_SOL_EST
 ON  Solicitud (K_CODEST)
;

ALTER TABLE  Soporte
 ADD CONSTRAINT PK_SOP
	PRIMARY KEY (K_IDSOP)
 USING INDEX
;

ALTER TABLE  Soporte
 ADD CONSTRAINT CK_I_ESTADOSOP CHECK (I_ESTADOSOP in ('A','R','P'))
;

CREATE INDEX IXFK_SOP_COND
 ON  Soporte (K_IDCOND)
;

CREATE INDEX IXFK_SOP_SOL
 ON  Soporte (K_IDSOL)
;

ALTER TABLE  Subsidio
 ADD CONSTRAINT PK_SUB
	PRIMARY KEY (K_IDSUB)
 USING INDEX
;

ALTER TABLE  Subsidio
 ADD CONSTRAINT CK_I_TIPOSUB CHECK (I_TIPOSUB in ('T', 'A', 'B'))
;

ALTER TABLE  Subsidio
 ADD CONSTRAINT CK_V_DTOSUB CHECK (V_DTOSUB in (1.0, 0.7, 0.4))
;

ALTER TABLE  Tiquetera
 ADD CONSTRAINT PK_TIQ
	PRIMARY KEY (K_IDTIQ)
 USING INDEX
;

ALTER TABLE  Tiquetera
 ADD CONSTRAINT CK_I_ESTADOPAGOTIQ CHECK (I_ESTADOPAGOTIQ in ('S','N'))
;

CREATE INDEX IXFK_TIQ_BENEF
 ON  Tiquetera (K_ID_BENEF)
;

/* Create Foreign Key Constraints */

ALTER TABLE  Beneficiario
 ADD CONSTRAINT FK_BENEF_SOL
	FOREIGN KEY (K_IDSOL) REFERENCES  Solicitud (K_IDSOL)
;

ALTER TABLE  Beneficiario
 ADD CONSTRAINT FK_BENEF_SUB
	FOREIGN KEY (K_IDSUB) REFERENCES  Subsidio (K_IDSUB)
;

ALTER TABLE  Beneficiario_Dia
 ADD CONSTRAINT FK_BENEF_BENEF
	FOREIGN KEY (K_ID_BENEF) REFERENCES  Beneficiario (K_ID_BENEF)
;

ALTER TABLE  Beneficiario_Dia
 ADD CONSTRAINT FK_BENEF_DIA_DIA
	FOREIGN KEY (K_IDDIA) REFERENCES  Dia (K_IDDIA)
;

ALTER TABLE  ControlDiario
 ADD CONSTRAINT FK_CONTROLD_TIQ
	FOREIGN KEY (K_IDTIQ) REFERENCES  Tiquetera (K_IDTIQ)
;

ALTER TABLE  ControlHServS
 ADD CONSTRAINT FK_CONTROLH_SERVSOC
	FOREIGN KEY (K_IDSERVSOC) REFERENCES  ServicioSocial (K_IDSERVSOC)
;

ALTER TABLE  Convocatoria
 ADD CONSTRAINT FK_CONV_ADMIN
	FOREIGN KEY (K_CEDADMIN) REFERENCES  Administrativo (K_CEDADMIN)
;

ALTER TABLE  Convocatoria
 ADD CONSTRAINT FK_CONV_ANIOCONV
	FOREIGN KEY (K_IDANIOCONV) REFERENCES  AnioConvocatoria (K_IDANIOCONV)
;

ALTER TABLE  Convocatoria
 ADD CONSTRAINT FK_CONV_PERACAD
	FOREIGN KEY (K_IDPERACAD) REFERENCES  PeriodoAcademico (K_IDPERACAD)
;

ALTER TABLE  CuposConvocatoria
 ADD CONSTRAINT FK_CUPOSCONV_CONV
	FOREIGN KEY (K_IDCONV) REFERENCES  Convocatoria (K_IDCONV)
;

ALTER TABLE  HistoricoSolicitud
 ADD CONSTRAINT FK_HISTSOL_ADMIN
	FOREIGN KEY (K_CEDADMIN) REFERENCES  Administrativo (K_CEDADMIN)
;

ALTER TABLE  HistoricoSolicitud
 ADD CONSTRAINT FK_HISTSOL_SOL
	FOREIGN KEY (K_IDSOL) REFERENCES  Solicitud (K_IDSOL)
;

ALTER TABLE  ServicioSocial
 ADD CONSTRAINT FK_SERVSOC_ADMIN
	FOREIGN KEY (K_CEDADMIN) REFERENCES  Administrativo (K_CEDADMIN)
;

ALTER TABLE  ServicioSocial
 ADD CONSTRAINT FK_SERVSOC_BENEF
	FOREIGN KEY (K_ID_BENEF) REFERENCES  Beneficiario (K_ID_BENEF)
;

ALTER TABLE  Solicitud
 ADD CONSTRAINT FK_SOL_CONV
	FOREIGN KEY (K_IDCONV) REFERENCES  Convocatoria (K_IDCONV)
;

ALTER TABLE  Solicitud
 ADD CONSTRAINT FK_SOL_EST
	FOREIGN KEY (K_CODEST) REFERENCES  Estudiante (K_CODEST)
;

ALTER TABLE  Soporte
 ADD CONSTRAINT FK_SOP_COND
	FOREIGN KEY (K_IDCOND) REFERENCES  Condicion (K_IDCOND)
;

ALTER TABLE  Soporte
 ADD CONSTRAINT FK_SOP_SOL
	FOREIGN KEY (K_IDSOL) REFERENCES  Solicitud (K_IDSOL)
;

ALTER TABLE  Tiquetera
 ADD CONSTRAINT FK_TIQ_BENEF
	FOREIGN KEY (K_ID_BENEF) REFERENCES  Beneficiario (K_ID_BENEF)
;

--NUEVOS ALTER TABLE
ALTER TABLE SOLICITUD ADD CONSTRAINT UK_EST_CONV UNIQUE (K_CODEST,K_IDCONV);
ALTER TABLE CONVOCATORIA ADD CONSTRAINT UK_PERIODOACA UNIQUE (K_IDPERACAD);
ALTER TABLE SOPORTE ADD CONSTRAINT UK_SOL_COND UNIQUE (K_IDSOL,K_IDCOND);
ALTER TABLE CONVOCATORIA ADD CONSTRAINT CK_INICIO_FIN CHECK(F_INICONV<F_FINCONV);

CONNECT ADMINISTRADOR_DB/ADMINISTRADOR_DB;
begin
	EXECUTE IMMEDIATE 'DROP TABLE   Solicitud_Dia CASCADE CONSTRAINTS';
	EXCEPTION WHEN OTHERS THEN NULL;
end;
/

CREATE TABLE  Solicitud_Dia
(
	K_IDSOLDIA NUMBER(8) NOT NULL,    -- Tipo de dato: Number de longitud 8, autonum�rico.
	K_IDSOL NUMBER(8) NULL,
	K_IDDIA NUMBER(1) NULL
)
;

COMMENT ON TABLE  Solicitud_Dia IS 'Tabla de rompimiento entre la tabla solicitud y la tabla d�a.'
;

ALTER TABLE  Solicitud_Dia
 ADD CONSTRAINT PK_SOL_DIA
	PRIMARY KEY (K_IDSOLDIA)
 USING INDEX
;
CREATE INDEX IXFK_SOL_SOL
 ON  Solicitud_Dia (K_IDSOL)
;

CREATE INDEX IXFK_SOL_DIA_DIA
 ON  Solicitud_Dia (K_IDDIA)
;
ALTER TABLE  Solicitud_Dia
 ADD CONSTRAINT FK_SOL_SOL
	FOREIGN KEY (K_IDSOL) REFERENCES  Solicitud (K_IDSOL)
;

ALTER TABLE  Solicitud_Dia
 ADD CONSTRAINT FK_SOL_DIA_DIA
	FOREIGN KEY (K_IDDIA) REFERENCES  Dia (K_IDDIA)
;
