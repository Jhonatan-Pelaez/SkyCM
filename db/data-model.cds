namespace my.app;

entity TM_USUARIOS {
  key USER_ID : String(15) not null;
  NUM_DOC     : String(15) not null;
  NOM_USER    : String(20) not null;
  APE_USER    : String(20) not null;
  EMAIL       : String(30) not null;
  CARGO_ID    : Association to TM_CARGOS {SOC_ID,CARGO_ID} not null;
  AREA_ID     : Association to TM_AREAS {SOC_ID,AREA_ID} not null;
  NUM_SEC     : Double not null;
  }
  
  entity TM_CARGOS {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  CARGO_ID    : String(5) not null;
  NIV_ID           : Association to TM_NIVELES {SOC_ID,NIV_ID} not null;
  DES_CARGOS       : String(20) not null;
}

entity TM_AREAS {
  key  SOC_ID   : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  AREA_ID  : String(5) not null;
  DES_AREA      : String(20) not null;
}  

entity TM_SOCIEDADES {
  key  SOC_ID   : String(20) not null;
  DES_SOC       : String(20) not null;
  }
  
  entity TM_NIVELES {
  key  SOC_ID  : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  NIV_ID  : String(5) not null;
  DES_NIV      : String(20) not null;
}  

entity TM_MEDIOSPAGO {
  key  SOC_ID     : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  MEDPAG_ID  : String(5) not null;
  DES_MEDPAG      : String(20) not null;
}  

entity TM_APROBADORES {
  key  SOC_ID    : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  USER_ID    : Association to TM_USUARIOS {USER_ID} not null;
  key  APROB_ID  : String(5) not null;
  AREA_ID        : String(20) not null;
}  

entity TM_PROYECTOS{
  key  SOC_ID   : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  PROY_ID  : String(5) not null; 
  DES_PROY      : String(20) not null;
}

entity TM_PROVEEDORES {
  key  PRO_ID  : String(10) not null;
  DES_PRO      : String(20) not null;
  DIR_PRO      : String(20);
  TEL_PRO      : String(20);
  CIU_PRO      : String(20);
  PAIS_PRO     : String(20);
  KUNNR        : String(20);
} 

entity TM_SOCXUSUARIOS {
  key  USER_ID : Association to TM_USUARIOS {USER_ID} not null;
  key  SOC_ID  : Association to TM_SOCIEDADES {SOC_ID} not null;
  }
  
  entity TM_CIUDADES {
  key  ZIPCODE  : String(10) not null;
  NOM_CIUDAD    : String(20) not null;
} 

entity TM_ESTCONT {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  ESTCONT_ID  : String(5) not null;
  DES_ESTCONT    : String(20) not null;
} 

entity TM_PARAMETROS {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  PARAM_ID    : String(5) not null;
  DES_PARAM        : String(20) not null;
} 

entity TM_ESTMOV {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  ESTMOV_ID  : String(5) not null;
  DES_ESTMOV    : String(20) not null;
}

entity TM_ESTSOL {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  ESTSOL_ID  : String(5) not null;
  DES_ESTSOL    : String(20) not null;
}

entity TM_TIPGAS {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  TIPGAS_ID   : String(5) not null;
  DES_TIPGAS       : String(20) not null;
  CTA_CTABLE       : String(20) not null;
  CTA_IVA          : String(20) not null;
  CTA_IPCON        : String(20);
  CTA_PROP         : String(20);
  IND_IVA          : String(20);
  TIPO_MOV         : String(20)not null;
} 

entity TM_SOLICITUDES {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  USER_ID     : Association to TM_USUARIOS {USER_ID} not null;
  key NUM_SOL      : String(10) not null;
  SOL_ID           : String(10) not null;
  FECHA            : String(15) not null;
  FECHA_SOL        : String(15) not null;
  PROY_ID          : Association to TM_PROYECTOS {SOC_ID,PROY_ID};
  AREAD_ID         : Association to TM_AREAS {SOC_ID,AREA_ID} not null;
  OBSERVACIONES    : String(30) not null;
  VAL_SOL          : Double not null;
  VAL_APRO         : Double not null;
  VAL_DIF          : Double not null;
  APROB_ID         : String(15) not null;
  HORA_SOL         : String(15) not null;
  DOC_CONT         : String(20) ;
  ESTSOL_ID        : Association to TM_ESTSOL {SOC_ID,ESTSOL_ID} not null;
  ESTCONT_ID       : Association to TM_ESTCONT {SOC_ID,ESTCONT_ID} not null;
}

entity TM_CONTABILIZACION {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  NUM_SOL     : Association to TM_SOLICITUDES {SOC_ID,USER_ID,NUM_SOL} not null;
  key  GJAHR       : String(10) not null;
  BLART            : String(10) ;
  WAERS            : String(10) ;
  BLDAT            : String(10) ;
  XBLNR            : String(10) ;
  BLSTAT           : String(10) ;
  BUZEI            : String(10) ;
  BSCHL            : String(10) ;
  BLDDAT           : String(10) ;
  HKONT            : String(10) ;
  MWSKZ            : String(10) ;
  DMBTR            : String(10) ;
  SGTXT            : String(10) ;
  KOSTL            : String(10) ;
  KUNNR            : String(10) ;
} 

entity TM_TIPSOL {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  TIPSOL_ID  : String(5) not null;
  DES_TIPSOL    : String(15) not null;
} 

entity TM_ESTANDARES { 
  key SOC_ID  : Association to TM_SOCIEDADES {SOC_ID} not null;
  key ANIO    : String(5) not null;
  NIV_ID      : Association to TM_NIVELES {SOC_ID,NIV_ID} not null;
  ZIPCODE     : Association to TM_CIUDADES{ZIPCODE} not null;
  TIPGAS_ID   : Association to TM_TIPGAS  {SOC_ID,TIPGAS_ID} not null;
  VAL_UMBRAL  : Double not null;
  }
  
  entity TM_ANTSOL_DET {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  NUM_SOL     : Association to TM_SOLICITUDES {SOC_ID,USER_ID,NUM_SOL} not null;
  key  ZIPCODE     : Association to TM_CIUDADES {ZIPCODE} not null;
  key  TIPGAS      : Association to TM_TIPGAS {SOC_ID,TIPGAS_ID} not null;
  NUM_DIAS         : String(2) not null;
  VAL_SOL          : Double not null;
  VAL_APRO         : Double not null;
}

entity TM_MOVIMIENTOS {
  key  SOC_ID      : Association to TM_SOCIEDADES {SOC_ID} not null;
  key  NUM_SOL     : Association to TM_SOLICITUDES {SOC_ID,USER_ID,NUM_SOL} not null;
  key  ZIPCODE     : Association to TM_CIUDADES {ZIPCODE} not null;
  key  REG_NUM     : String(5) not null;
  NUM_FACT         : String(15) not null;
  FECHA_MOV        : String(15) not null;
  HORA_MOV         : String(15) not null;
  TIPGAS_ID        : Association to TM_TIPGAS     {SOC_ID,TIPGAS_ID} not null;
  PRO_ID           : Association to TM_PROVEEDORES{PRO_ID} not null;
  MEDPAG_ID        : Association to TM_MEDIOSPAGO {SOC_ID,MEDPAG_ID} not null;
  VAL_MOV          : Double not null;
  VAL_IVA          : Double not null;
  VAL_IPOCMO       : Double not null;
  VAL_PROPINA      : Double not null;
  CCO             : String(15) not null;
  MONEDA           : String(15) not null;
  OBSERVACIONES    : String(30) not null;
  ESTMOV_ID        : Association to TM_ESTMOV {SOC_ID,ESTMOV_ID};
  FECHA_APROB      : String(15);
  ESTCONT_ID       : Association to TM_ESTCONT {SOC_ID,ESTCONT_ID};
  FECHA_CONT       : String(15) ;
} 