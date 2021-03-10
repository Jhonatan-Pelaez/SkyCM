using my.app from '../db/data-model';

service CatalogService {
	entity USUARIOS as projection on app.TM_USUARIOS;
	entity CARGOS as projection on app.TM_CARGOS;
	entity AREAS as projection on app.TM_AREAS;
	entity SOCIEDADES as projection on app.TM_SOCIEDADES;
	entity NIVELES as projection on app.TM_NIVELES;
	entity MEDIOSPAGO as projection on app.TM_MEDIOSPAGO;
	entity APROBADORES as projection on app.TM_APROBADORES;
	entity PROYECTOS as projection on app.TM_PROYECTOS;
	entity PROVEEDORES as projection on app.TM_PROVEEDORES;
	entity SOCXUSUARIOS as projection on app.TM_SOCXUSUARIOS;
	entity CIUDADES as projection on app.TM_CIUDADES;
	entity ESTADOSCONTABLES as projection on app.TM_ESTCONT;
	entity PARAMETROS as projection on app.TM_PARAMETROS;
	entity ESTADOSMOVIMIENTOS as projection on app.TM_ESTMOV;
	entity ESTADOSSOLICITUDES as projection on app.TM_ESTSOL;
	entity TIPOGASTO as projection on app.TM_TIPGAS;
	entity SOLICITUDES as projection on app.TM_SOLICITUDES;
	entity CONTABILIZACION as projection on app.TM_CONTABILIZACION;
	entity TIPOSSOLICITUD as projection on app.TM_TIPSOL;
	entity ESTANDARES as projection on app.TM_ESTANDARES;
	entity ANTSOL_DETALLE as projection on app.TM_ANTSOL_DET;
	entity MOVIMIENTOS as projection on app.TM_MOVIMIENTOS;
}