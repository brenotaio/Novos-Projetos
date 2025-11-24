CREATE OR REPLACE TRIGGER tgr tgr_id_descarga
BEFORE INSERT INTO  Descarga
FOR EACH ROW
BEGIN 
    IF:NEW.id IS NULL THEN
    :NEW.id: := sq_descarga.NEXTVAL;
    END IF;
END;
/
