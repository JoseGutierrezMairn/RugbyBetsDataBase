--********************************************************************
------------------------------roles----------------------------------
--*******************************************************************
Create role AdminApuesta identified by AdminApuesta;
Create role Usuario identified by Usuario;
Create role AdminDatos identified by AdminDatos;

--********************************************************************
-----------------------------Permisos--------------------------------
--********************************************************************
Grant PC_PAIS TO AdminDatos;
Grant PC_Apuestas TO Usuario;
Grant PC_Usuario TO Usuario;
