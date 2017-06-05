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
-----Permisos-------------------------------------------------------
GRANT SELECT, INSERT, UPDATE ON SOLICITUD_DIA TO ROLE_ESTUDIANTE;
GRANT SELECT ON SOLICITUD_DIA TO REVISOR_SOLICITUD;
GRANT SELECT ON SOLICITUD_DIA TO ADMIN_APOYO;


--secuencias

CREATE SEQUENCE incremento_k_idsoldia
INCREMENT BY 1
START WITH 1;

CREATE PUBLIC SYNONYM SOLICITUD_DIA FOR ADMINISTRADOR_DB.SOLICITUD_DIA;
CREATE PUBLIC SYNONYM incremento_k_idsoldia FOR ADMINISTRADOR_DB.incremento_k_idsoldia;