/* Trigger para EVITAR QUE SE CREEE UNA CONVOCATORIA CON UNA FECHA DE INICIO MENOR A LA ACTUAL*/
CREATE OR REPLACE TRIGGER TG_FI_CONVOCATORIA
BEFORE INSERT ON CONVOCATORIA
FOR EACH ROW
BEGIN
  IF :NEW.F_INICONV < SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20100, 'la fecha de inicio debe ser mayor o igual al día de hoy');
  END IF;
END TG_FI_CONVOCATORIA;
/
SHOW ERRORS;
