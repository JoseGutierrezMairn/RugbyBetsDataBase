-------------------------------CREAR TABLAS-------------------------------------

CREATE TABLE USUARIOS(
USUARIOID NUMBER(3) NOT NULL,
NOMBRE VARCHAR(60) NOT NULL,
PAIS VARCHAR(50) NOT NULL,
FECHA_NACIMIENTO DATE NOT NULL);

CREATE TABLE RESULTADOS(
PARTIDOID INTEGER NOT NULL,
USUARIOID NUMBER(3) NOT NULL,
FECHAID DATE NOT NULL,
GANADORES CHAR(1) NOT NULL,
IMPORTE NUMBER NOT NULL, 
ID INTEGER NOT NULL);

Create Table Posiblesresultados(
Resultadoid Integer Not Null,
Resultado Varchar(4) Not Null,
Afavorde Char(1)Not Null, 
Paga Number Not Null);
                                                        
CREATE TABLE JUGADORESAPUESTAS(
IDJUGADOR INTEGER NOT NULL, 
USUARIOID INTEGER NOT NULL, 
FECHAID DATE NOT NULL,
GANADORES CHAR(1) NOT NULL,
IMPORTE NUMBER NOT NULL, 
CANTANOTACIONES INTEGER NOT NULL, 
PAGA NUMBER NOT NULL, 
PARTIDOID INTEGER NOT NULL);

CREATE TABLE PARTIDOS(
PARTIDOID INTEGER NOT NULL,
TEMPORADAID NUMBER(2) NOT NULL,
FECHA_JUEGO DATE NOT NULL, 
LOCALID INTEGER NOT NULL, 
VISITANTEID INTEGER NOT NULL, 
FINALIZADO CHAR(1)NOT NULL);

CREATE TABLE EQUIPOS(
EQUIPOID INTEGER NOT NULL,
NOMBRE VARCHAR(30)NOT NULL,
LIGA NUMBER(2) NOT NULL);

CREATE TABLE PAISES(
PAIS_ID NUMBER(2) NOT NULL,
NOMBRE VARCHAR(50) NOT NULL);

CREATE TABLE COMPETICIONES(
COMPETICION_ID NUMBER(3) NOT NULL,
TEMPORADA NUMBER(3) NOT NULL,
DESCRIPCION VARCHAR(100) NOT NULL);

CREATE TABLE TEMPORADAS(
TEMPORADA_ID NUMBER(2)NOT NULL,
DESCRIPCION VARCHAR(100) NOT NULL);

CREATE TABLE LIGAS(
LIGAID NUMBER(2) NOT NULL,
LIGA VARCHAR(23) NOT NULL,
PAIS VARCHAR(50) NOT NULL);