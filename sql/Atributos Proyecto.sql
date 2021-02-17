ALTER TABLE USUARIOS
ADD CONSTRAINT CK_USUARIOID
CHECK(USUARIOID > 0);

ALTER TABLE PAISES
ADD CONSTRAINT CK_PAISID
CHECK(PAIS_ID > 0);

ALTER TABLE RESULTADOS
ADD CONSTRAINT CK_RESULTADOS_ID 
CHECK(ID > 0);

ALTER TABLE RESULTADOS
ADD CONSTRAINT CK_RESULTADOS_PARTIDOID
CHECK(PARTIDOID>0);

ALTER TABLE RESULTADOS
ADD CONSTRAINT CK_RESULTADOS_USUARIOID
CHECK(USUARIOID > 0);

ALTER TABLE RESULTADOS 
ADD CONSTRAINT CK_RESULTADOS_GANADORES 
CHECK(GANADORES IN('T', 'V', 'N'));

ALTER TABLE JUGADORESAPUESTAS
ADD CONSTRAINT CK_JUGADORESAPUESTAS_JUGADORID
CHECK(IDJUGADOR > 0);

ALTER TABLE JUGADORESAPUESTAS
ADD CONSTRAINT CK_JUGADORESAPUESTAS_USUARIOID 
CHECK(USUARIOID > 0);

ALTER TABLE JUGADORESAPUESTAS 
ADD CONSTRAINT CK_JUGADORESAPUESTAS_GANADORES 
CHECK(GANADORES IN('T','V','N'));

ALTER TABLE JUGADORESAPUESTAS 
ADD CONSTRAINT CK_JUGADORESAPUESTAS_ANOTACION 
CHECK(CANTANOTACIONES > 0);

ALTER TABLE JUGADORESAPUESTAS 
ADD CONSTRAINT CK_JUGADORESAPUESTAS_PAGA 
CHECK(PAGA > 0);

ALTER TABLE POSIBLESRESULTADOS 
ADD CONSTRAINT CK_POSIBLESRESUTLADOS_ID 
CHECK(RESULTADOID > 0);

ALTER TABLE POSIBLESRESULTADOS 
ADD CONSTRAINT CK_POSIBLESRESULTADOS_RE 
CHECK(RESULTADO LIKE('_-_'));

ALTER TABLE POSIBLESRESULTADOS 
ADD CONSTRAINT CK_POSIBLESRESULTADOS_PA
CHECK(PAGA > 0);

ALTER TABLE POSIBLESRESULTADOS
ADD CONSTRAINT CK_POSIBLESRESULTADOS_AFA
CHECK(AFAVORDE IN('L','V','E'));

ALTER TABLE PARTIDOS
ADD CONSTRAINT CK_PARTIDOS_PARTIDOID
CHECK(PARTIDOID > 0);

ALTER TABLE PARTIDOS
ADD CONSTRAINT CK_PARTIDOS_TEMPRADAID 
CHECK(TEMPORADAID > 0);

ALTER TABLE PARTIDOS
ADD CONSTRAINT CK_PARTIDOS_LOCALID
CHECK(LOCALID > 0);

ALTER TABLE PARTIDOS
ADD CONSTRAINT CK_PARTIDOS_VISITANTEID
CHECK(VISITANTEID > 0);

ALTER TABLE PARTIDOS 
ADD CONSTRAINT CK_PARTIDOS_TFINALIZADO 
CHECK(FINALIZADO IN('T','F'));

ALTER TABLE EQUIPOS
ADD CONSTRAINT CK_EQUIPOS_LIGA
CHECK(LIGA > 0);

ALTER TABLE EQUIPOS 
ADD CONSTRAINT CK_EQUIPOS_EQUIPOID
CHECK(EQUIPOID > 0);