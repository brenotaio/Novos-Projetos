CREATE TABLE Descarga (
    id number primary key,
    dt_venda date,
    cd_cliente number(5),
    ds_cliente varchar2(70),
    cd_produto number(6),
    ds_produto varchar2(70),
    email varchar2(100)
);

CREATE SEQUENCE sq_descarga
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;


CREATE OR REPLACE TRIGGER tgr tgr_id_descarga
BEFORE INSERT INTO  Descarga
FOR EACH ROW
BEGIN 
    IF:NEW.id IS NULL THEN
    :NEW.id: := sq_descarga.NEXTVAL;
    END IF;
END;
/

INSERT INTO Descarga (dt_venda, cd_cliente, ds_cliente, cd_produto, ds_produto, email)
VALUES (date '2001-05-14', 12345, 'Jesse Breno', 654321, 'Bicicleta', 'brenoje@gmail.com');

SELECT ds_cliente, ds_produto FROM Descarga
WHERE EXTRACT (year from dt_venda)=2001;

UPDATE Descarga
SET
dt_venda = date '2025-05-15',
cd_cliente = 54321,
ds_cliente = 'Jesse Ferreira',
cd_produto = 123456,
ds_produto = 'Bike',
email = 'jebreno@gmail.com'
WHERE id = 1

DELETE FROM Descarga
WHERE id = 1


