/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 13.0 		*/
/*  Created On : 31-mar.-2017 11:53:11 p.m. 				*/
/*  DBMS       : Oracle 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

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

