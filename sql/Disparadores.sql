-----EL ID DE LOS RESULTADOS TIENE QUE SER UN ENTERO CONSECUTIVO
-----LAS APUESTAS NO SE PUEDEN MODIFICAR NI ELIMINAR

CREATE OR REPLACE TRIGGER ADD_RESULTADOS
BEFORE INSERT ON RESULTADOS
FOR EACH ROW
DECLARE
    X INTEGER;
BEGIN
    SELECT COUNT(*) INTO X FROM RESULTADOS;
    :NEW.ID := X;
END ADD_RESULTADOS;


CREATE OR REPLACE TRIGGER EL_RESULTADOS
BEFORE DELETE ON RESULTADOS
FOR EACH ROW
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(20002, 'NO SE PUEDEN ELIMINAR LAS APUESTAS');
END EL_RESULTADOS;


CREATE OR REPLACE TRIGGER MOD_RESULTADOS
BEFORE DELETE ON RESULTADOS
FOR EACH ROW
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(20003, 'NO SE PUEDEN MODIFICAR LAS APUESTAS');
END MOD_RESULTADOS;


CREATE OR REPLACE TRIGGER EL_POSIBLESRESULTADOS
BEFORE DELETE ON POSIBLESRESULTADOS
FOR EACH ROW
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(20004, 'NO SE PUEDEN ELIMINAR LAS APUESTAS');
END EL_POSIBLESRESULTADOS;


CREATE OR REPLACE TRIGGER MOD_POSIBLESRESULTADOS
BEFORE DELETE ON POSIBLESRESULTADOS
FOR EACH ROW
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(20005, 'NO SE PUEDEN MODIFICAR LAS APUESTAS');
END MOD_POSIBLESRESULTADOS;


CREATE OR REPLACE TRIGGER EL_JUGADORESAPUESTAS
BEFORE DELETE ON JUGADORESAPUESTAS
FOR EACH ROW
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(20006, 'NO SE PUEDEN ELIMINAR LAS APUESTAS');
END EL_JUGADORESAPUESTAS;


CREATE OR REPLACE TRIGGER MOD_JUGADORESAPUESTAS
BEFORE DELETE ON JUGADORESAPUESTAS
FOR EACH ROW
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(20007, 'NO SE PUEDEN MODIFICAR LAS APUESTAS');
END MOD_JUGADORESAPUESTAS;

----Disparadores usuarios----
CREATE OR REPLACE TRIGGER NUEVOUSUARIO
BEFORE INSERT ON USUARIOS
FOR EACH ROW
DECLARE
    USUARIO NUMBER;
    EDAD NUMBER;
BEGIN
    select trunc(SYSDATE)-TRUNC(FECHA_NACIMIENTO) as EDAD from dual;
    IF EDAD< 6570 THEN
        SELECT COUNT(*) INTO USUARIO FROM USUARIOS;
        :NEW.USUARIOID:=(USUARIO+1);
    ELSE
        RAISE_APPLICATION_ERROR(-20007, 'EL USUARIO NO ES MAYOR DE EDAD');
    END IF;
     
END NUEVOUSUARIO;

CREATE TRIGGER MODIFICAUSUARIO
BEFORE UPDATE ON USUARIOS
FOR EACH ROW
DECLARE
BEGIN
    IF :NEW.USUARIOID!=:OLD.USUARIOID THEN
        :NEW.USUARIOID:=:OLD.USUARIOID;
    END IF;
END MODIFICAUSUARIO;

CREATE TRIGGER ELIMINAUSUARIO
BEFORE DELETE ON USUARIOS
FOR EACH ROW
DECLARE
BEGIN
    if 
---NECESITAMOS AYUDA CON ESTA CONDICION
    RAISE_APPLICATION_ERROR(-20097, 'EL USUARIO TIENE APUESTAS PENDIENTES');
END ELIMINAUSUARIO;

CREATE OR REPLACE TRIGGER ADICIONA_PAIS
BEFORE INSERT ON PAISES
FOR EACH ROW
DECLARE
    X INTEGER;
BEGIN
    SELECT COUNT(*) INTO X FROM PAISES;
    :NEW.PAIS_ID := X+1;
END ADICIONA_PAIS;

CREATE OR REPLACE TRIGGER ELIMINAPAIS
BEFORE DELETE ON PAISES
FOR EACH ROW
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(-20090, 'NO SE PUEDEN ELIMINAR LOS PAISES');
END EL_RESULTADOS;
