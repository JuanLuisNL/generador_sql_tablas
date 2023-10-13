/// ******************************** NOTAS IMPORTANTES **************
// ? Los alias de los CanBeDel hay que cambiarlos por el alias real
/// /// **********************************************

enum EnumDataImpTipoEmisor { nadie, cliente, proveedor, fabricante, posiblecliente, tpvext }

enum EnumDataImpTipoOrigen {
  ninguno,
  infotarifa,
  infofande,
  ventainternet,
  pda,
  tpvexterno,
  vtfFacturas,
  contenedorverial,
  pascualhermanos,
  newholland,
  vtfPrecios,
  txtPrecios,
  cegalLibros,
  txtArticulos,
  last
}

enum EnumNombresTipoFicha {
  ninguno,
  clientesContactos,
  proveedoresContactos,
  cuentasBancariasPropiasOficina,
  cuentasBancariasPropiasContactos,
  fabricantesContactos
}

enum EnumAsientosTipo {
  ninguno,
  manual,
  cierreapertura,
  facturaemitida,
  facturarecibida,
  efectoPago,
  amortizacion,
  remesaPresentacion,
  remesaEjecucion,
  cierredecaja,
  nomina,
  varexistencias,
  comisiones,
  efectoFormalizacion,
  efectoAlBanco,
  efectoRechazado,
  efectoDudoso,
  efectoIncobrable,
  efectoAgrupacion,
  fianzaConstitucion,
  fianzaCancelacion,
}

enum EnumNumerosSerieTipo { docproveedor, doccliente, sat, docalmacen, fabricacionx }

enum EnumCategoriasDeTipo {
  clientes,
  proveedores,
}

enum EnumDataImpTipoDocumento {
  ninguno,
  altaarticulos,
  cambiodatosarticulos,
  documentoalmacen,
  pedidointernet,
  documentoproveedor,
  documentocliente,
  tarifacompra,
  tarifaventa,
  arboles,
  eanalternativos,
  operacioncaja,
}

enum EnumCuentasBancariasTipoFicha {
  todas,
  empresas,
  clientes,
  proveedores,
  personal,
}

enum EnumDocXTipoOrigen {
  articulo,
  comentario,
  reservado,
  habitacion,
  salon,
  actomenu,
  personal,
// GrupoImpresion = 101
// GrupoActoEvento = 102
// Seccion = 201         ' Sección de "carta"
// InfoTactil = 202      ' Información cada unidad de compuesto: Peso, Invitación, nº de plato
}

enum EnumRutasFicherosTipoFicha {
  ninguna,
  articulos,
  aparatos,
  clientes,
  proveedores,
  personal,
  fabricantes,
  tecnicos,
  doccli,
  docpro,
  dochotel,
  ordenestrabajo,
  conocimientos,
  asientos
}

enum EnumCamposAuxiliaresTipo {
  ninguno,
  articulos,
  aparatos,
  clientes,
  proveedores,
  personal,
  clientesFichamedica,
  partesmedicos,
  doccli,
  docpro,
  ordenestrabajo
}

enum EnumMensajesTipoFicha { ninguno, cliente, personal, almacen, proveedor, fabricante }

enum EnumArtRevisionesAveriasTipo { ninguno, averia, revision }

enum EnumTecnicosRevisionesAveriasTipo { ninguno, averia, revision }

class AppTablas {
  static String cGrupoEmpresa = "dv#00001_0001@e", cDBLog = "", cDBImg = "", cDBConfig = "";
  static String cBancos = "$cGrupoEmpresa.public.Bancos";
  static String cCajones = "$cGrupoEmpresa.public.Cajones";
  static String cInformesCfg = "$cGrupoEmpresa.public.InformesCfg";
  static String cInformesCfgX = "$cGrupoEmpresa.public.InformesCfgX";
  static String cModificacionCfg = "$cGrupoEmpresa.public.ModificacionCfg";
  static String cUbicaciones = "$cGrupoEmpresa.public.Ubicaciones";
  static String cProvincias = "$cGrupoEmpresa.public.Provincias";
  static String cPaises = "$cGrupoEmpresa.public.Paises";
  static String cUsuarios = "$cGrupoEmpresa.public.Usuarios";
  static String cUsuariosPerfiles = "$cGrupoEmpresa.public.UsuariosPerfiles";
  static String cUsuariosPerfilesX = "$cGrupoEmpresa.public.UsuariosPerfilesX";
  static String cDispositivos = "$cGrupoEmpresa.public.Dispositivos";
  static String cXSettings = "$cGrupoEmpresa.public.XSettings";
  static String cMonedas = "$cGrupoEmpresa.public.Monedas";
  static String cPuestos = "$cGrupoEmpresa.public.Puestos";
  static String cGrupos = "$cGrupoEmpresa.public.Grupos";
  static String cImpresoras = "$cGrupoEmpresa.public.Impresoras";
  static String cLogFichas = "$cGrupoEmpresa.public.LogFichas";
  static String cAgenda = "$cGrupoEmpresa.public.Agenda";
  static String cComentarios = "$cGrupoEmpresa.public.Comentarios";
  static String cPID = "$cGrupoEmpresa.public.PID";
  static String cCfgFondo = "$cGrupoEmpresa.public.Cfg_Fondo";
  static String cCfgFondoX = "$cGrupoEmpresa.public.Cfg_FondoX";
  static String cCfgMenu = "$cGrupoEmpresa.public.Cfg_Menu";
  static String cCfgMenuX = "$cGrupoEmpresa.public.Cfg_MenuX";
  static String cLocks = "$cGrupoEmpresa.public.Locks";
  static String cCfgBotonesFicha = "$cGrupoEmpresa.public.Cfg_BotonesFicha";
  static String cIncidencias = "$cDBLog.public.Incidencias";
  static String cIncidenciasX = "$cDBLog.public.IncidenciasX";
  static String cStock = "$cDBLog.public.Stock";
  static String cStockNumSerie = "$cDBLog.public.StockNumSerie";
  static String cAppBlobs = "$cDBImg.public.AppBlobs";
  static String cBlobs = "$cGrupoEmpresa.public.Blobs";
  static String cGruposLicencia = "$cGrupoEmpresa.public.GruposLicencia";
  static String cIdiomaInformes = "$cGrupoEmpresa.public.IdiomaInformes";
  static String ccfgDispositivos = "$cDBConfig.public.cfgDispositivos";
  static String ccfgPuestos = "$cDBConfig.public.cfgPuestos";
  static String cUsuariosRespuestas = "$cGrupoEmpresa.public.UsuariosRespuestas";
  static String cMessenger = "$cGrupoEmpresa.public.Messenger";
  static String cMessengerX = "$cGrupoEmpresa.public.MessengerX";
  static String cChequeos = "$cDBLog.public.Chequeos";
  static String cExTrans = "$cDBLog.public.ExTrans";
}

class RelacionesTablas {
  List<DRowRelacionesCamposEtc> lstRelaciones = [];
  Map<String, String> mapAlias = {};

  List<DRowRelacionesCamposEtc>  init() {
    getAliasTablas();
    String cFiltro = "";
    String cJoinDocClix = "LEFT JOIN doccli ON docclix.id_documento = doccli.verialid";
    String cJoinDocCliValores = "LEFT JOIN doccli ON docclivalores.id_documento = doccli.verialid";
    String cJoinDocProx = "LEFT JOIN docpro ON docprox.id_documento = docpro.verialid";
    String cJoinDocProValores = "LEFT JOIN docpro ON docprovalores.id_documento = docpro.verialid";

    String cJoinDocAlmacenx = "LEFT JOIN DocAlmacen ON DocAlmacenx.ID_Documento = DocAlmacen.VerialID";
    String cJoinDocHotelx = "LEFT JOIN DocHotel ON DocHotelx.ID_Documento = DocHotel.VerialID";
    String cJoinHstDocHotelx = "LEFT JOIN HstDocHotel ON HstDocHotelx.ID_Documento = HstDocHotel.VerialID";
    String cJoinAveriasArticulos = "LEFT JOIN Averias ON ArtRevisionesAverias.ID_AveriaRevision=Averias.VerialID";
    String cJoinRevisionesArticulos = "LEFT JOIN Revisiones ON ArtRevisionesAverias.ID_AveriaRevision=Revisiones.VerialID";
    String cJoinAveriasTecnicos = "LEFT JOIN Averias ON TecnicosRevisionesAverias.ID_AveriaRevision=Averias.VerialID";
    String cJoinRevisionesTecnicos = "LEFT JOIN Revisiones ON TecnicosRevisionesAverias.ID_AveriaRevision=Revisiones.VerialID";
    String cJoinDHXPrevision = "LEFT JOIN DocHotelx ON DocHotelxPrevision.ID_DocHotelx=DocHotelx.VerialID";
    String cJoinArtLotes = "LEFT JOIN ArtLotes ON ArtLotesX.ID_ArtLotes = ArtLotes.VerialID";
    String cJoinMenuEventos = "LEFT JOIN MenuEventos ON MenuEventosX.ID_MenuEventos = MenuEventos.VerialID";
    String cJoinPartesReparaciones = "LEFT JOIN PartesReparaciones ON PartesReparacionesX.ID_ParteReparacion = PartesReparaciones.VerialID";
    String cJoinPartesReparacionesX = "LEFT JOIN PartesReparaciones ON PartesReparacionesX.ID_ParteReparacion = PartesReparaciones.VerialID";
    String cJoinSalonesX = "LEFT JOIN Salones ON SalonesX.ID_Salon = Salones.VerialID";
    String cJoinRecursosActos = "LEFT JOIN DocHotelx ON RecursosActos.ID_DocHotelx = DocHotelx.VerialID"
        " LEFT JOIN DocHotel ON DocHotelx.ID_Documento = DocHotel.VerialID"
        " LEFT JOIN DocClix ON RecursosActos.ID_DocClix = DocClix.VerialID"
        " LEFT JOIN DocCli ON DocClix.ID_Documento = DocCli.VerialID";
    String cJoinFabricacion = "LEFT JOIN Fabricacion ON FabricacionX.ID_Fabricacion = Fabricacion.VerialID";
    String cJoinClientesX = "LEFT JOIN Clientes ON ClientesX.ID_Cliente = Clientes.verialID";
    String cJoinProveedoresX = "LEFT JOIN Proveedores ON ProveedoresX.ID_Proveedor = Proveedores.verialID";
    String cJoinTarifasArticulosX = "LEFT JOIN TarifasArticulos ON TarifasArticulosX.ID_TarifaArticulos = TarifasArticulos.verialID";

    // AEAT
    addRelation("Aeat", "Aeatx", "ID_Aeat");

    // Agenda
    addRelation("Agenda", "Agenda", "ID_Padre");

    // Almacenes
    addRelation("Almacenes", "Averias", "ID_Almacen");
    addRelation("Almacenes", "Mantenimientos", "ID_Almacen");
    addRelation("Almacenes", "Revisiones", "ID_Almacen");
    addRelation("Almacenes", "AreasVenta", "ID_Almacen");
    addRelation("Almacenes", "ArtAlmacenes", "ID_Almacen", lCanBeDeleteManual: true);
    addRelation("Almacenes", "ArtStocks", "ID_Almacen", selectCanBeDel: "ID_Articulo");
    addRelation("Almacenes", "Estantes", "ID_Almacen", lCanBeDeleteManual: true);
    cFiltro = "Mensajes.TipoFicha=${EnumMensajesTipoFicha.almacen.index}";
    addRelation("Almacenes", "Mensajes", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Almacenes", "Data_Imp", "ID_Almacen");
    addRelation("Almacenes", "DocCli", "ID_Almacen", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Almacenes", "DocClix", "ID_Almacen", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("Almacenes", "DocPro", "ID_Almacen", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Almacenes", "DocPro", "ID_AlmacenOrigen", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "almOrigen");
    addRelation("Almacenes", "DocProx", "ID_Almacen", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProx);
    addRelation("Almacenes", "Pdas", "ID_Almacen");
    addRelation("Almacenes", "Pdas", "ID_AlmacenPedidos", alias: "almPedidos");
    addRelation("Almacenes", "Tpvext_Cajas", "ID_Almacen");
    addRelation("Almacenes", "DocAlmacen", "ID_AlmacenOrigen", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", alias: "almOrigen");
    addRelation("Almacenes", "DocAlmacen", "ID_AlmacenDestino", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", alias: "almDestino");
    addRelation("Almacenes", "PuestosX", "ID_AlmacenUnico", selectCanBeDel: "ID_Puesto");
    addRelation("Almacenes", "AreasCompra", "ID_Almacen");
    addRelation("Almacenes", "DocHotel", "ID_Almacen", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("Almacenes", "DocHotelx", "ID_Almacen", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("Almacenes", "Inventario", "ID_Almacen");
    addRelation("Almacenes", "FabricacionGrupo", "ID_AlmacenOrigen", alias: "almOrigen");
    addRelation("Almacenes", "FabricacionGrupo", "ID_AlmacenDestino", alias: "almDestino");
    addRelation("Almacenes", "Fabricacion", "ID_AlmacenOrigen", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", alias: "almOrigen");
    addRelation("Almacenes", "Fabricacion", "ID_AlmacenDestino", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", alias: "almDestino");
    addRelation("Almacenes", "HstDocHotel", "ID_Almacen", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Almacenes", "HstDocHotelx", "ID_Almacen",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);
    addRelation("Almacenes", "Clientes", "ID_AlmacenURDI");
    addRelation("Almacenes", AppTablas.cStock, "ID_Almacen", lCanBeDeleteManual: true);

    // Aparatos
    addRelation("Aparatos", "Averias", "ID_Aparato", lCanBeDeleteManual: true);
    addRelation("Aparatos", "OrdenesTrabajo", "ID_Aparato", lCanBeDeleteManual: true);
    addRelation("Aparatos", "Revisiones", "ID_Aparato", lCanBeDeleteManual: true);

    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.aparatos.index}";
    addRelation("Aparatos", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true);

    cFiltro = "RutasFicheros.TipoFicha=${EnumRutasFicherosTipoFicha.aparatos.index}";
    addRelation("Aparatos", "RutasFicheros", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);

    addRelation("Aparatos", "FabricacionX", "ID_Aparato", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", joinStr: cJoinFabricacion);
    addRelation("Aparatos", "DocClix", "ID_Aparato", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);

    // AppBlobs_I
    addRelation("AppBlobs_I", "Empresas", "ID_SII_Certificado");
    addRelation("AppBlobs_I", "Empresas", "ID_CertificadoRecetas");
    addRelation("AppBlobs_I", "Veterinarios", "ID_Certificado");
    addRelation("AppBlobs_I", "Delegaciones", "ID_CertificadoPDF");

    // Arboles
    addRelation("Arboles", "Arboles", "ID_Padre", lCanBeDeleteManual: true);
    addRelation("Arboles", "ArtCompuestos", "ID_Categoria", lCanBeDeleteManual: true);
    addRelation("Arboles", "Articulos", "ID_Categoria", lCanBeDeleteManual: true, alias: "arbCat");
    addRelation("Arboles", "Clientes", "ID_Grupo", lCanBeDeleteManual: true);
    addRelation("Arboles", "GruposComisionesX", "ID_Categoria", lCanBeDeleteManual: true);
    addRelation("Arboles", "Data_ImpX", "ID_Categoria", lCanBeDeleteManual: true);
    addRelation("Arboles", "DocCli", "ID_TipoContingente", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", lCanBeDeleteManual: true);
    addRelation("Arboles", "DocHotel", "ID_TipoContingente",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", lCanBeDeleteManual: true);
    addRelation("Arboles", "Proveedores", "ID_Grupo", lCanBeDeleteManual: true);
    addRelation("Arboles", "Tarifas", "ID_Categoria", lCanBeDeleteManual: true);
    addRelation("Arboles", "Cfg_CentralReservas", "ID_TipoContingente", lCanBeDeleteManual: true);
    addRelation("Arboles", "CentroCostes_Defecto", "ID_Categoria", lCanBeDeleteManual: true);
    addRelation("Arboles", "Personal", "ID_Grupo", lCanBeDeleteManual: true);
    addRelation("Arboles", "CentroCostes_Defecto", "ID_GrupoProveedores", lCanBeDeleteManual: true, alias: "arbProv");
    addRelation("Arboles", "CentroCostes_Defecto", "ID_GrupoPersonal", lCanBeDeleteManual: true, alias: "arbPers");
    addRelation("Arboles", "HstDocHotel", "ID_TipoContingente",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", lCanBeDeleteManual: true);
    addRelation("Arboles", "Clientes", "ID_TipoContingente", lCanBeDeleteManual: true, alias: "arbTipoCon");
    addRelation("Arboles", "TarifasDocX", "ID_Categoria", lCanBeDeleteManual: true);
    addRelation("Arboles", "Inmovilizado", "ID_Categoria", lCanBeDeleteManual: true);
    addRelation("Arboles", "Articulos", "ID_CategoriaWeb", lCanBeDeleteManual: true);
    addRelation("Arboles", "CategoriasDe", "ID_Categoria", lCanBeDeleteManual: true);
    addRelation("Arboles", "Articulos", "ID_CategoriaWeb2", lCanBeDeleteManual: true, alias: "arbWeb1");
    addRelation("Arboles", "Articulos", "ID_CategoriaWeb3", lCanBeDeleteManual: true, alias: "arbWeb2");
    addRelation("Arboles", "Articulos", "ID_CategoriaWeb4", lCanBeDeleteManual: true, alias: "arbWeb3");
    addRelation("Arboles", "Cfg_CentralReservasClientesAgencias", "ID_TipoContingente", lCanBeDeleteManual: true);

    // ArbolesAuxiliares
    addRelation("ArbolesAuxiliares", "CamposAuxiliares", "ID_Arbol01", selectCanBeDel: "CamposAuxiliares.ID_Origen, CamposAuxiliares.Tipo", alias: "arbAux1");
    addRelation("ArbolesAuxiliares", "CamposAuxiliares", "ID_Arbol02", selectCanBeDel: "CamposAuxiliares.ID_Origen, CamposAuxiliares.Tipo", alias: "arbAux2");
    addRelation("ArbolesAuxiliares", "CamposAuxiliares", "ID_Arbol03", selectCanBeDel: "CamposAuxiliares.ID_Origen, CamposAuxiliares.Tipo", alias: "arbAux3");
    addRelation("ArbolesAuxiliares", "CamposAuxiliares", "ID_Arbol04", selectCanBeDel: "CamposAuxiliares.ID_Origen, CamposAuxiliares.Tipo", alias: "arbAux4");
    addRelation("ArbolesAuxiliares", "CamposAuxiliares", "ID_Arbol05", selectCanBeDel: "CamposAuxiliares.ID_Origen, CamposAuxiliares.Tipo", alias: "arbAux5");
    addRelation("ArbolesAuxiliares", "ArbolesAuxiliares", "ID_Padre");

    // AreasCompra
    addRelation("AreasCompra", "PuestosX", "ID_AreaCompra", selectCanBeDel: "ID_Puesto");
    addRelation("AreasCompra", "DocPro", "ID_AreaCompra", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("AreasCompra", "DocProx", "ID_AreaCompra", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProx);
    addRelation("AreasCompra", "Pdas", "ID_AreaCompra");

    // AreasVenta
    addRelation("AreasVenta", "Aparatos", "ID_AreaVenta");
    addRelation("AreasVenta", "Articulos", "ID_AreaVenta");
    addRelation("AreasVenta", "Data_Imp", "ID_AreaVenta");
    addRelation("AreasVenta", "DocCli", "ID_AreaVenta", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("AreasVenta", "DocClix", "ID_AreaVenta", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("AreasVenta", "DocHotel", "ID_AreaVenta", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("AreasVenta", "DocHotelx", "ID_AreaVenta", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("AreasVenta", "Habitaciones", "ID_AreaVenta");
    addRelation("AreasVenta", "Mesas", "ID_AreaVenta");
    addRelation("AreasVenta", "ReservasRest", "ID_AreaVenta");
    addRelation("AreasVenta", "Turnos", "ID_AreaVenta");
    addRelation("AreasVenta", "Pdas", "ID_AreaVenta");
    addRelation("AreasVenta", "Tpvext_Cajas", "ID_AreaVenta");
    addRelation("AreasVenta", "Cfg_CentralReservas", "ID_AreaVenta");
    addRelation("AreasVenta", "PuestosX", "ID_AreaVenta1", selectCanBeDel: "ID_Puesto", alias: "av1");
    addRelation("AreasVenta", "PuestosX", "ID_AreaVenta2", selectCanBeDel: "ID_Puesto", alias: "av2");
    addRelation("AreasVenta", "PuestosX", "ID_AreaVenta3", selectCanBeDel: "ID_Puesto", alias: "av3");
    addRelation("AreasVenta", "PuestosX", "ID_AreaVenta4", selectCanBeDel: "ID_Puesto", alias: "av4");
    addRelation("AreasVenta", "PuestosX", "ID_AreaVenta5", selectCanBeDel: "ID_Puesto", alias: "av5");
    addRelation("AreasVenta", "PartesReparaciones", "ID_AreaVenta");
    addRelation("AreasVenta", "TiendasVirtuales", "ID_AreaVenta");
    addRelation("AreasVenta", "Cupos", "ID_AreaVenta");
    addRelation("AreasVenta", "HstDocHotel", "ID_AreaVenta", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("AreasVenta", "HstDocHotelx", "ID_AreaVenta",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);
    addRelation("AreasVenta", "Numeraciones", "ID_AreaVenta");
    addRelation("AreasVenta", "PartesMedicos", "ID_AreaVenta");
    addRelation("AreasVenta", "Mantenimientos", "ID_AreaVenta");
    addRelation("AreasVenta", "BonosAcceso", "ID_AreaVenta");
    addRelation("AreasVenta", "Webs", "ID_AreaVenta");
    addRelation("AreasVenta", "BasculasTPV", "ID_AreaVenta");

    // Arqueos
    addRelation("Arqueos", "ArqueosX", "ID_Arqueo", lCanBeDeleteManual: true);
    addRelation("Arqueos", "OperacionesTPV", "ID_Arqueo", lCanBeDeleteManual: true);
    addRelation("Arqueos", "DocClix", "ID_Arqueo",        selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, lCanBeDeleteManual: true);
    addRelation("Arqueos", "DocHotelx", "ID_Arqueo",        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true);
    addRelation("Arqueos", "Efectos", "ID_Arqueo", lCanBeDeleteManual: true);
    addRelation("Arqueos", "HstDocHotelx", "ID_Arqueo",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, lCanBeDeleteManual: true);
    addRelation("Arqueos", "Fianzas", "ID_ArqueoConstitucion", alias: "arqConst");
    addRelation("Arqueos", "Fianzas", "ID_ArqueoCancelacion", alias: "arqCanc");

    // Articulos
    addRelation("Articulos", "Mantenimientos", "ID_Articulo");    cFiltro = "ArtRevisionesAverias.Tipo=${EnumArtRevisionesAveriasTipo.averia.index}";
    addRelation("Articulos", "ArtRevisionesAverias", "ID_Articulo",        selectCanBeDel: "Averias.verialID, Averias.ID_Aparato, ArtRevisionesAverias.Tipo", filtro: cFiltro, joinStr: cJoinAveriasArticulos);
    cFiltro = "ArtRevisionesAverias.Tipo=${EnumArtRevisionesAveriasTipo.revision.index}";
    addRelation("Articulos", "ArtRevisionesAverias", "ID_Articulo",        selectCanBeDel: "Revisiones.verialID, Revisiones.ID_Aparato, ArtRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinRevisionesArticulos);

    addRelation("Articulos", "AreasVenta", "ID_Cubierto", alias: "artCub");
    addRelation("Articulos", "AreasVenta", "ID_CargoSupIndividual", alias: "artSupInd");
    addRelation("Articulos", "AreasVenta", "ID_CargoSupEstanciaCorta", alias: "artSupEstC");
    addRelation("Articulos", "AreasVenta", "ID_CargoSupExtra1", alias: "artSupEx1");
    addRelation("Articulos", "AreasVenta", "ID_CargoSupExtra2", alias: "artSupEx2");
    addRelation("Articulos", "AreasVenta", "ID_CargoSupExtra3", alias: "artSupEx3");
    addRelation("Articulos", "ArtCompuestos", "ID_Compuesto", lCanBeDeleteManual: true, alias: "artComp");
    addRelation("Articulos", "ArtCompuestos", "ID_Articulo");
    addRelation("Articulos", "ArtCodigos", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "Articulos", "ID_Agrupado", alias: "artAgrup");
    addRelation("Articulos", "Articulos", "ID_ArticuloStock", alias: "artStk");
    addRelation("Articulos", "ArtIBIC", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "ArtProveedor", "ID_Articulo", selectCanBeDel: "ArtProveedor.ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "ArtAlmacenes", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "ArtStocks", "ID_Articulo", selectCanBeDel: "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "Autores", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "EstantesX", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "GruposComisionesX", "ID_Articulo");
    addRelation("Articulos", "Data_ImpX", "ID_Origen");

    cFiltro = "DocClix.TipoOrigen=${EnumDocXTipoOrigen.articulo.index}";
    addRelation("Articulos", "DocClix", "ID_Origen", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", filtro: cFiltro, joinStr: cJoinDocClix);

    cFiltro = "DocHotelx.TipoOrigen=${EnumDocXTipoOrigen.articulo.index}";
    addRelation("Articulos", "DocHotelx", "ID_Origen",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", filtro: cFiltro, joinStr: cJoinDocHotelx);

    addRelation("Articulos", "DocHotelxPrevision", "ID_Cargo", selectCanBeDel: "DocHotelx.ID_Documento", joinStr: cJoinDHXPrevision);
    addRelation("Articulos", "DocProx", "ID_Origen", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProx);
    addRelation("Articulos", "TipoHabitaciones", "ID_CargoDefecto");
    addRelation("Articulos", "ArtLotesX", "ID_Articulo", selectCanBeDel: "ArtLotes.verialID", joinStr: cJoinArtLotes);
    addRelation("Articulos", "CartaArticulos", "ID_Articulo");
    addRelation("Articulos", "Tarifas", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "Tpvext_Secciones", "ID_Articulo");
    addRelation("Articulos", "Cfg_CentralReservas", "ID_CargoDesayuno", alias: "artDesayuno");
    addRelation("Articulos", "Cfg_CentralReservas", "ID_CargoMediaPension", alias: "artMP");
    addRelation("Articulos", "Cfg_CentralReservas", "ID_CargoPensionCompleta", alias: "artPC");
    addRelation("Articulos", "Cfg_CentralReservas", "ID_CargoTodoIncluido", alias: "artTodoIncluido");
    addRelation("Articulos", "Cfg_CentralReservas", "ID_CargoUsoIndividual", alias: "artUsoInd");
    addRelation("Articulos", "Cfg_CentralReservas", "ID_CargoCamaSupletoria", alias: "artCamaSup");
    addRelation("Articulos", "Cfg_CentralReservasCargos", "ID_Cargo");
    addRelation("Articulos", "Tecnicos", "ID_ArticuloTrab", alias: "artTrab");
    addRelation("Articulos", "Tecnicos", "ID_ArticuloDesp", alias: "artDesp");
    addRelation("Articulos", "DocAlmacenx", "ID_Origen", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", joinStr: cJoinDocAlmacenx);
    addRelation("Articulos", "ArtDelegaciones", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "DocHotelx", "ID_CargoSup1", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, alias: "artSup1");
    addRelation("Articulos", "DocHotelx", "ID_CargoSup2", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, alias: "artSup2");
    addRelation("Articulos", "DocHotelx", "ID_CargoSup3", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, alias: "artSup3");
    addRelation("Articulos", "MenuRest", "ID_Articulo");
    addRelation("Articulos", "MenuRestX", "ID_Articulo");
    addRelation("Articulos", "TarifaHotel", "ID_CargoDefecto");
    addRelation("Articulos", "Salones", "ID_Articulo");
    addRelation("Articulos", "MenuEventos", "ID_Articulo");
    addRelation("Articulos", "MenuEventosX", "ID_Articulo", selectCanBeDel: "MenuEventos.verialID", joinStr: cJoinMenuEventos);
    addRelation("Articulos", "InventarioX", "ID_Articulo");
    addRelation("Articulos", "PartesReparacionesX", "ID_Articulo",
        selectCanBeDel: "PartesReparaciones.verialID", joinStr: cJoinPartesReparacionesX);
    addRelation("Articulos", "CentroCostes_Defecto", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "SalonesX", "ID_Articulo", selectCanBeDel: "SalonesX.ID_Salon", joinStr: cJoinSalonesX);
    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.articulos.index}";
    addRelation("Articulos", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true);
    cFiltro = "RutasFicheros.TipoFicha=${EnumRutasFicherosTipoFicha.articulos.index}";
    addRelation("Articulos", "RutasFicheros", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Articulos", "Delegaciones", "ID_ArticuloCentralita");
    addRelation("Articulos", "Fabricacion", "ID_Articulo", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo");
    addRelation("Articulos", "FabricacionX", "ID_Articulo", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", joinStr: cJoinFabricacion);
    addRelation("Articulos", "Mesas", "ID_Cubierto");
    cFiltro = "HstDocHotelx.TipoOrigen=${EnumDocXTipoOrigen.articulo.index}";
    addRelation("Articulos", "HstDocHotelx", "ID_Origen",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", filtro: cFiltro, joinStr: cJoinHstDocHotelx, lCanBeDeleteManual: true);
    addRelation("Articulos", "HstDocHotelx", "ID_CargoSup1",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "artSup1");
    addRelation("Articulos", "HstDocHotelx", "ID_CargoSup2",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "artSup2");
    addRelation("Articulos", "HstDocHotelx", "ID_CargoSup3",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "artSup3");
    addRelation("Articulos", "Articulos", "ID_ArticuloEcoTasas", alias: "artEcoTasas");
    addRelation("Articulos", "TarifasDocX", "ID_Articulo");
    addRelation("Articulos", "Logi_UnidadesX", "ID_Articulo");
    addRelation("Articulos", "Articulos", "ID_ArticuloEnvase", alias: "artEnvase");
    addRelation("Articulos", "Suscripciones", "ID_PrimerNumero");
    addRelation("Articulos", "Cfg_CentralReservasCargosXPersona", "ID_Cargo");
    addRelation("Articulos", "Coleccionables", "ID_Libro", alias: "artLibro");
    addRelation("Articulos", "Coleccionables", "ID_Articulo");
    addRelation("Articulos", "ArtSimilares", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "TareasTecnicos", "ID_Articulo");
    addRelation("Articulos", "CartaClientes_Articulos", "ID_Articulo");
    addRelation("Articulos", "ArtIngredientes", "ID_Articulo", lCanBeDeleteManual: true);
    addRelation("Articulos", "ArtIngredientes", "ID_Ingrediente", alias: "artIngred");
    addRelation("Articulos", "AreasVenta", "ID_ArtGastosEnvioTelepedido", alias: "artGastoEnvTelep");
    addRelation("Articulos", "AreasVenta", "ID_ArtBolsaTelepedido", alias: "artBolsaTelep");
    addRelation("Articulos", "TelepedidoOfertasX", "ID_Articulo");
    addRelation("Articulos", "PuestosX", "ID_ArticuloPortesWeb", selectCanBeDel: "ID_Puesto");
    addRelation("Articulos", AppTablas.cStock, "ID_Articulo", lCanBeDeleteManual: true);

    // ArtLotes
    addRelation("ArtLotes", "ArtLotesX", "ID_ArtLotes",
        selectCanBeDel: "ArtLotes.verialID", joinStr: cJoinArtLotes, lCanBeDeleteManual: true);

    // ArtRevisionesAverias
    cFiltro = "ArtRevisionesAverias.Tipo=${EnumArtRevisionesAveriasTipo.averia.index}";
    addRelation("ArtRevisionesAverias", "ArtRevisionesAverias", "ID_ArtRevisionesAverias",
        selectCanBeDel: "Averias.verialID, Averias.ID_Aparato, ArtRevisionesAverias.Tipo", filtro: cFiltro, joinStr: cJoinAveriasArticulos);
    cFiltro = "ArtRevisionesAverias.Tipo=${EnumArtRevisionesAveriasTipo.revision.index}";
    addRelation("ArtRevisionesAverias", "ArtRevisionesAverias", "ID_ArtRevisionesAverias",
        selectCanBeDel: "Revisiones.verialID, Revisiones.ID_Aparato, ArtRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinRevisionesArticulos);
    cFiltro = "NumerosSerie.Tipo=${EnumNumerosSerieTipo.sat.index}";
    addRelation("ArtRevisionesAverias", "NumerosSerie", "ID_Contenido", filtro: cFiltro);

    // ArtStocks
    addRelation("ArtStocks", "ArtSerie", "ID_Stocks", lCanBeDeleteManual: true);
    addRelation("ArtStocks", "ArtSerieUdsAux", "ID_Stocks", lCanBeDeleteManual: true);

    // Asientos
    addRelation("Asientos", "Apuntes", "ID_Asiento", selectCanBeDel: "ID_Asiento", lCanBeDeleteManual: true);
    addRelation("Asientos", "Comisiones", "ID_Asiento");
    addRelation("Asientos", "DocCli", "ID_Asiento", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Asientos", "DocPro", "ID_Asiento", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Asientos", "Nominas", "ID_Asiento");
    addRelation("Asientos", "Efectos", "ID_AsientoFormalizacion", alias: "asiForm");
    addRelation("Asientos", "Efectos", "ID_AsientoAlBanco", alias: "asiAlBanco");
    addRelation("Asientos", "Efectos", "ID_AsientoRechazo", alias: "asiRechazo");
    addRelation("Asientos", "Efectos", "ID_AsientoDudosoCobro", alias: "asiDudosoCobro");
    addRelation("Asientos", "Efectos", "ID_AsientoIncobrable", alias: "asiIncobrable");
    addRelation("Asientos", "Efectos", "ID_AsientoPagado", alias: "asiPagado");
    addRelation("Asientos", "Efectos", "ID_AsientoAgrupacion", alias: "asiAgrup");
    addRelation("Asientos", "RemesasAsientos", "ID_Asiento");
    addRelation("Asientos", "Remesas", "ID_Asiento");
    addRelation("Asientos", "Fianzas", "ID_AsientoConstitucion", alias: "asiConst");
    addRelation("Asientos", "Fianzas", "ID_AsientoCancelacion", alias: "asiCanc");

    // Averias
    addRelation("Averias", "OrdenesTrabajo", "ID_Averia", lCanBeDeleteManual: true);
    cFiltro = "ArtRevisionesAverias.Tipo=${EnumArtRevisionesAveriasTipo.averia.index}";
    addRelation("Averias", "ArtRevisionesAverias", "ID_AveriaRevision",
        selectCanBeDel: "Averias.verialID, Averias.ID_Aparato, ArtRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinAveriasArticulos,
        lCanBeDeleteManual: true);
    cFiltro = "TecnicosRevisionesAverias.Tipo=${EnumTecnicosRevisionesAveriasTipo.averia.index}";
    addRelation("Averias", "TecnicosRevisionesAverias", "ID_AveriaRevision",
        selectCanBeDel: "Averias.verialID, Averias.ID_Aparato, TecnicosRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinAveriasTecnicos,
        lCanBeDeleteManual: true);

    // Balances
    addRelation("Balances", "Balances", "ID_Padre");
    addRelation("Balances", "BalancesX", "ID_Balance", lCanBeDeleteManual: true);
    addRelation("Balances", "BalancesX", "ID_SubBalance", alias: "balXSub");

    // Bancos
    addRelation("Bancos_G", "CuentasBancarias", "ID_Banco");

    // BonosAcceso
    addRelation("BonosAcceso", "BonosAccesoX", "ID_BonoAcceso", lCanBeDeleteManual: true);

    // Cajones
    addRelation("Cajones", "AreasVenta", "ID_Cajon");
    addRelation("Cajones", "Arqueos", "ID_Cajon");
    addRelation("Cajones", "OperacionesTPV", "ID_Cajon");
    addRelation("Cajones", "Efectos", "ID_Cajon");
    addRelation("Cajones", "PuestosX", "ID_Cajon", selectCanBeDel: "ID_Puesto");
    addRelation("Cajones", "UsuariosX", "ID_Cajon", selectCanBeDel: "ID_Usuario");
    addRelation("Cajones", "Fianzas", "ID_CajonConstitucion", alias: "cajConst");
    addRelation("Cajones", "Fianzas", "ID_CajonCancelacion", alias: "cajCanc");
    addRelation("Cajones", "Pdas", "ID_Cajon");

    // CartaClientes
    addRelation("CartaClientes", "CartaClientes_Grupos", "ID_CartaClientes", lCanBeDeleteManual: true);
    addRelation("CartaClientes", "PuestosX", "ID_CartaAutopedido", selectCanBeDel: "ID_Puesto");

    // CartaClientes_Grupos
    addRelation("CartaClientes_Grupos", "CartaClientes_Articulos", "ID_CartaClientes_Grupo");

    // CartaGrupos
    addRelation("CartaGrupos", "CartaArticulos", "ID_Grupo", lCanBeDeleteManual: true);

    // CentroCostes_Arboles
    addRelation("CentroCostes_Arboles", "CentroCostes_Proyectos", "ID_Arbol");
    addRelation("CentroCostes_Arboles", "CentroCostes_Arbolesx", "ID_Arbol");

    // CentroCostes_Arbolesx
    addRelation("CentroCostes_Arbolesx", "CentroCostes_Arbolesx", "ID_Padre", alias: "centroCostesArbolesxPadre");
    addRelation("CentroCostes_Arbolesx", "CentroCostes_Arbolesx", "ID_ArbolXGeneral", alias: "centroCostesArbolesxGeneral");
    addRelation("CentroCostes_Arbolesx", "CentroCostes_Defecto", "ID_ArbolX");
    addRelation("CentroCostes_Arbolesx", "CentroCostes_Valores", "ID_ArbolX");

    // CentroCostes_Proyectos
    addRelation("CentroCostes_Proyectos", "CentroCostes_Defecto", "ID_Proyecto");
    addRelation("CentroCostes_Proyectos", "CentroCostes_Valores", "ID_Proyecto");

    // CentroInformes
    addRelation("CentroInformes", "CentroInformesX", "ID_CentroInformes", lCanBeDeleteManual: true);

    // Cfg_CentralReservas
    addRelation("Cfg_CentralReservas", "Cfg_CentralReservasCargos", "ID_Cfg_CentralReservas");
    addRelation("Cfg_CentralReservas", "Cfg_CentralReservasCargosXPersona", "ID_Cfg_CentralReservas");
    addRelation("Cfg_CentralReservas", "Cfg_CentralReservasClientesAgencias", "ID_Cfg_CentralReservas");
    addRelation("Cfg_CentralReservas", "Cfg_CentralReservasSincronizacionAuto", "ID_Cfg_CentralReservas");

    // Cfg_FicheroPolicia
    addRelation("Cfg_FicheroPolicia", "Delegaciones", "ID_Cfg_FicheroPolicia");
    addRelation("Cfg_FicheroPolicia", "AreasVenta", "ID_Cfg_FicheroPolicia");
    addRelation("Cfg_FicheroPolicia", "Habitaciones", "ID_Cfg_FicheroPolicia");

    // Cfg_Fondo
    addRelation("Cfg_Fondo_G", AppTablas.cCfgFondoX, "ID_Cfg_Fondo", lCanBeDeleteManual: true);
    addRelation("Cfg_Fondo_G", AppTablas.cUsuarios, "ID_Cfg_Fondo");

    // Cfg_Menu
    addRelation("Cfg_Menu_G", AppTablas.cCfgMenuX, "ID_Cfg_Menu", lCanBeDeleteManual: true);
    addRelation("Cfg_Menu_G", AppTablas.cUsuarios, "ID_Cfg_Menu");

    // Clientes
    addRelation("Clientes", "Mantenimientos", "ID_ClienteAtendido", alias: "cliAtend");
    addRelation("Clientes", "Mantenimientos", "ID_ClienteFacturacion", alias: "cliFac");
    addRelation("Clientes", "AreasVenta", "ID_ClienteDefecto");

    cFiltro = "CuentasBancarias.TipoFicha=${EnumCuentasBancariasTipoFicha.clientes.index}";
    addRelation("Clientes", "CuentasBancarias", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Clientes", "Clientes", "ID_FichaFiscal", lCanBeDeleteManual: true, alias: "cliFiscal");
    addRelation("Clientes", "Clientes", "ID_FichaVarios", alias: "cliVarios");
    addRelation("Clientes", "Clientes", "ID_Agencia", alias: "cliAgencia");

    cFiltro = "Mensajes.TipoFicha=${EnumMensajesTipoFicha.cliente.index}";
    addRelation("Clientes", "Mensajes", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);

    cFiltro = "Data_Imp.TipoEmisor=${EnumDataImpTipoEmisor.cliente.index}";
    addRelation("Clientes", "Data_Imp", "ID_Emisor", filtro: cFiltro);

    cFiltro = "Data_Imp.TipoDocumento=${EnumDataImpTipoDocumento.documentocliente.index}";
    addRelation("Clientes", "Data_Imp", "ID_TitularDoc", filtro: cFiltro, alias: "cliTitular");
    addRelation("Clientes", "DocCli", "ID_Cliente", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Clientes", "DocCli", "ID_Reservador", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "cliReservador");
    addRelation("Clientes", "DocCli", "ID_ClienteAgencia", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "cliAgencia");
    addRelation("Clientes", "DocClix", "ID_Reservador", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "cliResevador");
    addRelation("Clientes", "DocClix", "ID_ClienteAgencia", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "cliAgencia");
    addRelation("Clientes", "PuntosClientes", "ID_Cliente");
    addRelation("Clientes", "DocHotel", "ID_Cliente", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("Clientes", "DocHotel", "ID_Reservador", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", alias: "cliReservador");
    addRelation("Clientes", "DocHotelx", "ID_Cliente", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("Clientes", "DocHotelx", "ID_QuienPaga", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, alias: "cliPagador");
    addRelation("Clientes", "Cupos", "ID_Cliente");
    addRelation("Clientes", "Instalaciones", "ID_Cliente");
    addRelation("Clientes", "Instalaciones", "ID_Vendedor", alias: "cliVendedor");
    addRelation("Clientes", "Instalaciones", "ID_Mayorista", alias: "climayorista");
    cFiltro = "Nombres.TipoFicha=${EnumNombresTipoFicha.clientesContactos.index}";
    addRelation("Clientes", "Nombres", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Clientes", "Mandatos", "ID_Cliente", lCanBeDeleteManual: true);
    addRelation("Clientes", "ReservasRest", "ID_Cliente");
    addRelation("Clientes", "TarifaHotelClientes", "ID_Cliente");
    addRelation("Clientes", "Tpvext_Saldos", "ID_Cliente");
    addRelation("Clientes", "Aparatos", "ID_Cliente");
    addRelation("Clientes", "Delegaciones", "ID_ClienteVarios");
    addRelation("Clientes", "OcupantesX", "ID_Cliente");
    addRelation("Clientes", "Agenda", "ID_Cliente");

    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.clientes.index}";
    addRelation("Clientes", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true, alias: "cliOrigen");

    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.clientesFichamedica.index}";
    addRelation("Clientes", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true, alias: "cliOrigenFichaMedica");

    cFiltro = "RutasFicheros.TipoFicha=${EnumRutasFicherosTipoFicha.clientes.index}";
    addRelation("Clientes", "RutasFicheros", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Clientes", "FabricacionGrupo", "ID_Cliente");
    addRelation("Clientes", "DocCli", "ID_RemitenteCliente", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "cliRemitente");
    addRelation("Clientes", "DocCli", "ID_EnvioCliente", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "cliEnvio");
    addRelation("Clientes", "HstDocHotel", "ID_Cliente",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", lCanBeDeleteManual: true);
    addRelation("Clientes", "HstDocHotel", "ID_Reservador",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", lCanBeDeleteManual: true, alias: "cliReservador");
    addRelation("Clientes", "HstDocHotelx", "ID_Cliente",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, lCanBeDeleteManual: true);
    addRelation("Clientes", "HstDocHotelx", "ID_QuienPaga",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, lCanBeDeleteManual: true, alias: "cliPagador");
    addRelation("Clientes", "HstOcupantesX", "ID_Cliente", lCanBeDeleteManual: true);
    addRelation("Clientes", "PartesMedicos", "ID_Cliente");
    addRelation("Clientes", "Clientes", "ID_ReceptorEFactura", alias: "cliReceptorEFac");
    addRelation("Clientes", "Clientes", "ID_PagadorEFactura", alias: "cliPagadorEFac");
    addRelation("Clientes", "Clientes", "ID_ContableEFactura", alias: "cliContableEFac");
    addRelation("Clientes", "ObjetosPerdidos", "ID_ClienteEncontrado", alias: "cliEncontrado");
    addRelation("Clientes", "ObjetosPerdidos", "ID_ClienteReclamado", alias: "cliReclamado");
    addRelation("Clientes", "BonosAcceso", "ID_Cliente");
    addRelation("Clientes", "ClientesX", "ID_Cliente",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX, lCanBeDeleteManual: true);
    addRelation("Clientes", "DocAlmacen", "ID_Cliente", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo");
    addRelation("Clientes", "Suscripciones", "ID_Cliente");
    addRelation("Clientes", "Cfg_CentralReservasClientesAgencias", "ID_Cliente");
    cFiltro = "CategoriasDe.Tipo=${EnumCategoriasDeTipo.clientes.index}";
    addRelation("Clientes", "CategoriasDe", "ID_Quien", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Clientes", "CartaClientes", "ID_Cliente");

    // Coleccionables
    addRelation("Coleccionables", "Articulos", "ID_Coleccionable");

    // Comisiones
    cFiltro = "Asientos.Tipo=${EnumAsientosTipo.comisiones.index}";
    addRelation("Comisiones", "Asientos", "ID_Documento", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Comisiones", "ComisionesX", "ID_Comisiones", lCanBeDeleteManual: true);
    addRelation("Comisiones", "ComisionesX", "ID_ComisRetro", alias: "comisRetro");
    addRelation("Comisiones", "ComisionesX", "ID_ComisConfirm", alias: "comisConfim");

    // Comisionistas
    addRelation("Comisionistas", "Mantenimientos", "ID_Agente");
    addRelation("Comisionistas", "Comisiones", "ID_Comisionista");
    addRelation("Comisionistas", "ComisionesX", "ID_Comisionista");
    addRelation("Comisionistas", "DocHotel", "ID_Agente1", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", alias: "comisionistasAg1");
    addRelation("Comisionistas", "DocHotel", "ID_Agente2", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", alias: "comisionistasAg2");
    addRelation("Comisionistas", "DocHotel", "ID_Agente3", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", alias: "comisionistasAg3");
    addRelation("Comisionistas", "DocCli", "ID_Agente1", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "comisionistasAg1");
    addRelation("Comisionistas", "DocCli", "ID_Agente2", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "comisionistasAg2");
    addRelation("Comisionistas", "DocCli", "ID_Agente3", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "comisionistasAg3");
    addRelation("Comisionistas", "DocClix", "ID_Agente1", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "comisionistasAg1");
    addRelation("Comisionistas", "DocClix", "ID_Agente2", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "comisionistasAg2");
    addRelation("Comisionistas", "DocClix", "ID_Agente3", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "comisionistasAg3");
    addRelation("Comisionistas", "DocHotelx", "ID_Agente1", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, alias: "comisionistasAg1");
    addRelation("Comisionistas", "DocHotelx", "ID_Agente2", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, alias: "comisionistasAg2");
    addRelation("Comisionistas", "DocHotelx", "ID_Agente3", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, alias: "comisionistasAg3");
    addRelation("Comisionistas", "Pdas", "ID_Agente1", alias: "comisionistasAg1");
    addRelation("Comisionistas", "Pdas", "ID_Agente2", alias: "comisionistasAg2");
    addRelation("Comisionistas", "UsuariosX", "ID_AgenteAtencion", selectCanBeDel: "ID_Usuario");
    addRelation("Comisionistas", "Delegaciones", "ID_AgenteDefecto");
    addRelation("Comisionistas", "Cupos", "ID_CentralReservas");
    addRelation("Comisionistas", "HstDocHotel", "ID_Agente1", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", alias: "comisionistasAg1");
    addRelation("Comisionistas", "HstDocHotel", "ID_Agente2", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", alias: "comisionistasAg2");
    addRelation("Comisionistas", "HstDocHotel", "ID_Agente3", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", alias: "comisionistasAg3");
    addRelation("Comisionistas", "HstDocHotelx", "ID_Agente1",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "comisionistasAg1");
    addRelation("Comisionistas", "HstDocHotelx", "ID_Agente2",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "comisionistasAg2");
    addRelation("Comisionistas", "HstDocHotelx", "ID_Agente3",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "comisionistasAg3");
    addRelation("Comisionistas", "ClientesX", "ID_Agente1",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX, alias: "comisionistasAg1");
    addRelation("Comisionistas", "ClientesX", "ID_Agente2",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX, alias: "comisionistasAg2");
    addRelation("Comisionistas", "ClientesX", "ID_Agente3",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX, alias: "comisionistasAg3");
    addRelation("Comisionistas", "ComisionistasX", "ID_Comisionista", lCanBeDeleteManual: true);

    // Conocimientos
    addRelation("Conocimientos", "Conocimientos", "ID_Duplicado");
    addRelation("Conocimientos", "ConocimientosX", "ID_Conocimientos");

    // ContactosExternos
    addRelation("ContactosExternos", "DocCli", "ID_ContactoExterno", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("ContactosExternos", "DocClix", "ID_ContactoExterno", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("ContactosExternos", "Clientes", "ID_ContactoExterno");
    addRelation("ContactosExternos", "Aparatos", "ID_ContactoExterno");

    // CtasAnuales
    addRelation("CtasAnuales", "CtasAnualesCeldas", "ID_CtaAnual");
    addRelation("CtasAnuales", "CtasAnualesClaves", "ID_CtaAnual");

    // Cuentas
    addRelation("Cuentas", "Apuntes", "ID_Cuenta", selectCanBeDel: "ID_Asiento");
    addRelation("Cuentas", "Apuntes", "ID_Contrapartida", selectCanBeDel: "ID_Asiento", alias: "ctasCP");
    addRelation("Cuentas", "ConceptosContables", "ID_Cuenta");
    addRelation("Cuentas", "ConceptosContables", "ID_Contrapartida", alias: "ctasCP");
    addRelation("Cuentas", "CuentasBancarias", "ID_Cuenta");
    addRelation("Cuentas", "Clientes", "ID_Cuenta");
    addRelation("Cuentas", "Clientes", "ID_CuentaIngresos", alias: "ctasIngr");
    addRelation("Cuentas", "CuentasEspeciales", "ID_CtaGastos", alias: "ctasGastos");
    addRelation("Cuentas", "CuentasEspeciales", "ID_CtaIngresos", alias: "ctasIngr");
    addRelation("Cuentas", "CuentasEspeciales", "ID_CtaExistencias", alias: "ctasExist");
    addRelation("Cuentas", "Presupuestos", "ID_Cuenta");
    addRelation("Cuentas", "DocCliValores", "ID_Cuenta", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocCliValores);
    addRelation("Cuentas", "DocProValores", "ID_Cuenta", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProValores);
    addRelation("Cuentas", "Retenciones", "ID_CtaHPDeudora", alias: "ctasHpDeud");
    addRelation("Cuentas", "Retenciones", "ID_CtaHPAcreedora", alias: "ctasHpAcre");
    addRelation("Cuentas", "Inmovilizado", "ID_CtaInmovilizado", alias: "ctasInmov");
    addRelation("Cuentas", "Inmovilizado", "ID_CtaDotacion", alias: "ctasDotac");
    addRelation("Cuentas", "Inmovilizado", "ID_CtaAcumulado", alias: "ctasAcum");
    addRelation("Cuentas", "MetodosPago", "ID_Cuenta");
    addRelation("Cuentas", "MetodosPago", "ID_AltCuenta", alias: "ctasAlt");
    addRelation("Cuentas", "MetodosPago", "ID_CtaGastos", alias: "ctasGastos");
    addRelation("Cuentas", "MetodosPago", "ID_CtaDtoEfectos", alias: "ctasDtoEfec");
    addRelation("Cuentas", "Nominas", "ID_CtaIndemnizaciones", alias: "ctasIndem");
    addRelation("Cuentas", "Nominas", "ID_CtaPrestacionesSS", alias: "ctasPretSS");
    addRelation("Cuentas", "Nominas", "ID_CtaRetencionSS", alias: "ctasRetSS");
    addRelation("Cuentas", "Nominas", "ID_CtaRetencionSSEmpresa", alias: "ctasRetSSEmp");
    addRelation("Cuentas", "Nominas", "ID_CtaCreditosLP", alias: "ctasCredLP");
    addRelation("Cuentas", "Nominas", "ID_CtaCreditosCP", alias: "ctasCredCP");
    addRelation("Cuentas", "Nominas", "ID_CtaEnEspecie", alias: "ctasEnEsp");
    addRelation("Cuentas", "Nominas", "ID_CtaSSEmpresa", alias: "ctasSSEmp");
    addRelation("Cuentas", "Personal", "ID_CtaPendiente", alias: "ctasPendiente");
    addRelation("Cuentas", "Personal", "ID_CtaAnticipos", alias: "ctasAnticipos");
    addRelation("Cuentas", "Personal", "ID_CtaSalarios", alias: "ctasSalarios");
    addRelation("Cuentas", "Proveedores", "ID_Cuenta");
    addRelation("Cuentas", "Proveedores", "ID_CuentaGastos", alias: "ctasGastos");
    addRelation("Cuentas", "Prevision", "ID_Cuenta");
    addRelation("Cuentas", "CuentasBancarias", "ID_CuentaDtoEfectos", alias: "ctasDtoEfectos");
    addRelation("Cuentas", "Nominas", "ID_CtaOtrosDevengos", alias: "ctasOtrosDev");
    addRelation("Cuentas", "Nominas", "ID_CtaOtrasDeducciones", alias: "ctasOtrasDed");
    addRelation("Cuentas", "Fianzas", "ID_CtaFianzas", alias: "ctasFianzas");
    addRelation("Cuentas", "Fianzas", "ID_CtaIngresos", alias: "ctasIngr");
    addRelation("Cuentas", "FianzasX", "ID_CtaFianzas", alias: "ctasFianzas");
    addRelation("Cuentas", "FianzasX", "ID_CtaIngresos", alias: "ctasIngr");
    addRelation("Cuentas", "CuentasEspeciales", "ID_CtaSociosIngresos", alias: "ctasSocIngr");
    addRelation("Cuentas", "CuentasEspeciales", "ID_CtaSociosGastos", alias: "ctasSoxGastos");

    // CuentasBancarias
    addRelation("CuentasBancarias", "MetodosPago", "ID_CtaBancaria");
    cFiltro =
        "Nombres.TipoFicha IN(${EnumNombresTipoFicha.cuentasBancariasPropiasOficina.index},${EnumNombresTipoFicha.cuentasBancariasPropiasContactos.index})";
    addRelation("CuentasBancarias", "Nombres", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("CuentasBancarias", "Nominas", "ID_CuentaBancaria");
    addRelation("CuentasBancarias", "Mandatos", "ID_CtaCliente");
    addRelation("CuentasBancarias", "Efectos", "ID_CuentaBancaria");

    // CuentasEmail
    addRelation("CuentasEmail", "UsuariosX", "ID_CuentaEmail", selectCanBeDel: "ID_Usuario");

    // CuentasEspeciales
    addRelation("CuentasEspeciales", "AreasVenta", "ID_CuentaEspecial");
    addRelation("CuentasEspeciales", "Articulos", "ID_CuentaEspecial");
    addRelation("CuentasEspeciales", "Data_ImpX", "ID_CuentaEspecial");

    // Cupos
    addRelation("Cupos", "CuposX", "ID_Cupo", lCanBeDeleteManual: true);
    addRelation("Cupos", "TarifaHotel", "ID_Cupo", lCanBeDeleteManual: true);
    addRelation("Cupos", "DocHotelx", "ID_Cupo", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("Cupos", "HstDocHotelx", "ID_Cupo", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);

    // Data_Imp
    addRelation("Data_Imp", "Data_ImpX", "ID_Data_Imp");

    // Data_ImpX
    addRelation("Data_ImpX", "Data_ImpX_Detalle", "ID_Data_ImpX");

    // Delegaciones
    addRelation("Delegaciones", "PuestosX", "ID_Delegacion", selectCanBeDel: "ID_Puesto");
    addRelation("Delegaciones", "Delegaciones", "ID_FichaPrincipal");
    addRelation("Delegaciones", "Aparatos", "ID_Delegacion");
    addRelation("Delegaciones", "Mantenimientos", "ID_Delegacion");
    addRelation("Delegaciones", "ArtLotes", "ID_Delegacion");
    addRelation("Delegaciones", "CartaGrupos", "ID_Delegacion");
    addRelation("Delegaciones", "ContactosExternos", "ID_Delegacion");
    addRelation("Delegaciones", "GruposComisiones", "ID_Delegacion");
    addRelation("Delegaciones", "ITPV_Settings", "ID_Delegacion");
    addRelation("Delegaciones", "TarifaHotel", "ID_Delegacion");
    addRelation("Delegaciones", "Tecnicos", "ID_Delegacion");
    addRelation("Delegaciones", "Transportistas", "ID_Delegacion");
    addRelation("Delegaciones", "Vehiculos", "ID_Delegacion");
    addRelation("Delegaciones", "Veterinarios", "ID_Delegacion");
    addRelation("Delegaciones", "Zonas", "ID_Delegacion");
    addRelation("Delegaciones", "AreasVenta", "ID_Delegacion");
    addRelation("Delegaciones", "AreasCompra", "ID_Delegacion");
    addRelation("Delegaciones", "ArtDelegaciones", "ID_Delegacion");
    addRelation("Delegaciones", "TarifasArticulos", "ID_Delegacion");
    addRelation("Delegaciones", "Agenda", "ID_Delegacion");
    addRelation("Delegaciones", "PartesReparaciones", "ID_Delegacion");
    addRelation("Delegaciones", "Salones", "ID_Delegacion");
    addRelation("Delegaciones", "Almacenes", "ID_Delegacion");
    addRelation("Delegaciones", "FabricacionGrupo", "ID_Delegacion");
    addRelation("Delegaciones", "CentroCostes_Proyectos", "ID_Delegacion");
    addRelation("Delegaciones", "DocPro", "ID_Delegacion", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Delegaciones", "Personal", "ID_Delegacion");
    addRelation("Delegaciones", "OperacionesTPV", "ID_Delegacion");
    addRelation("Delegaciones", "Efectos", "ID_Delegacion");
    addRelation("Delegaciones", "DocCli", "ID_Delegacion", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Delegaciones", "GruposSeries", "ID_Delegacion");
    addRelation("Delegaciones", "DocHotel", "ID_Delegacion", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("Delegaciones", "HstDocHotel", "ID_Delegacion",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", lCanBeDeleteManual: true);
    addRelation("Delegaciones", "Inmovilizado", "ID_Delegacion");
    addRelation("Delegaciones", "ArtProveedor", "ID_Delegacion", selectCanBeDel: "ArtProveedor.ID_Articulo");
    addRelation("Delegaciones", "Cajones", "ID_Delegacion");
    addRelation("Delegaciones", "Fianzas", "ID_Delegacion");
    addRelation("Delegaciones", "ObjetosPerdidos", "ID_Delegacion");
    addRelation("Delegaciones", "Tpvext_Secciones", "ID_Delegacion");
    addRelation("Delegaciones", "TarifasDoc", "ID_Delegacion");
    addRelation("Delegaciones", "MetodosPago", "ID_Delegacion");
    addRelation("Delegaciones", "FabricacionEtapas", "ID_Delegacion");

    // Dispositivos
    addRelation("Dispositivos_G", AppTablas.cImpresoras, "ID_Dispositivo");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_Impresora");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_Ticadora");
    addRelation("Dispositivos_G", AppTablas.cInformesCfgX, "ID_Dispositivo");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_Visor");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_ScannerBarras");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_ScannerMag");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_Bascula");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_SmartCard");
    addRelation("Dispositivos_G", AppTablas.cDispositivos, "ID_Dispositivo");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_SrvInHova1");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_SrvInHova2");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_FirmaManuscrita");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_Impresora1Comandero");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_Impresora2Comandero");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_Impresora3Comandero");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_TerminalCobro");
    addRelation("Dispositivos_G", AppTablas.cPuestos, "ID_Etiquetadora");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraFacturas");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraAlbaranes");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraTickets");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraJustificantes");
    addRelation("Dispositivos_G", "CartaArticulos", "ID_Impresora1");
    addRelation("Dispositivos_G", "CartaArticulos", "ID_Impresora2");
    addRelation("Dispositivos_G", "CartaGrupos", "ID_Impresora1");
    addRelation("Dispositivos_G", "CartaGrupos", "ID_Impresora2");
    addRelation("Dispositivos_G", "MenuRestX", "ID_Impresora1");
    addRelation("Dispositivos_G", "MenuRestX", "ID_Impresora2");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraFacturasTic");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraAlbaranesTic");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraTicketsTic");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraPedidos");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraPedidosTic");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraPresupuestos");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraPresupuestosTic");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpresoraJustificantesTic");
    addRelation("Dispositivos_G", "Cajones", "ID_Dispositivo");
    addRelation("Dispositivos_G", "Habitaciones", "ID_SrvInHova");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpFacturasPlantilla");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpAlbaranesPlantilla");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpTicketsPlantilla");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpPedidosPlantilla");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpPresupuestosPlantilla");
    addRelation("Dispositivos_G", "AreasVenta", "ID_ImpNotasPlantilla");

    // DocAlmacen
    addRelation("DocAlmacen", "Averias", "ID_DocAlmacen", lCanBeDeleteManual: true);
    addRelation("DocAlmacen", "Revisiones", "ID_DocAlmacen", lCanBeDeleteManual: true);
    addRelation("DocAlmacen", "DocAlmacen", "ID_DocTraspaso", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo");
    addRelation("DocAlmacen", "DocAlmacenx", "ID_Documento",    selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", joinStr: cJoinDocAlmacenx, lCanBeDeleteManual: true);
    addRelation("DocAlmacen", "PartesReparaciones", "ID_DocAlmacen", lCanBeDeleteManual: true);
    addRelation("DocAlmacen", "Fabricacion", "ID_DocAlmacenSalida",        selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", lCanBeDeleteManual: true, alias: "docAlmSal");
    addRelation("DocAlmacen", "Fabricacion", "ID_DocAlmacenEntrada",        selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", lCanBeDeleteManual: true, alias: "docAlmEnt");

    // DocCli
    addRelation("DocCli", "Averias", "ID_DocCli");
    addRelation("DocCli", "OrdenesTrabajo", "ID_DocCli");
    addRelation("DocCli", "Revisiones", "ID_DocCli");
    cFiltro = "Asientos.Tipo IN(${EnumAsientosTipo.facturaemitida.index},${EnumAsientosTipo.cierredecaja.index})";
    addRelation("DocCli", "Asientos", "ID_Documento", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("DocCli", "ComisionesX", "ID_DocCli");
    addRelation("DocCli", "DocCli", "ID_Facturado", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "dcFac");
    addRelation("DocCli", "DocCli", "ID_CierreCaja", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "dcCiereCaja");
    addRelation("DocCli", "DocCli", "ID_Devolucion", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "dcDev");
    addRelation("DocCli", "DocCliValores", "ID_Documento", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocCliValores);
    addRelation("DocCli", "DocClix", "ID_Documento", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "dcDoc");
    addRelation("DocCli", "DocClix", "ID_Procedencia", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "dcProc");
    addRelation("DocCli", "DocClix", "ID_DocOrigen", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "dcOrigen");
    addRelation("DocCli", "PuntosClientes", "ID_Documento");
    addRelation("DocCli", "DocHotel", "ID_DocCli", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("DocCli", "DocHotelx", "ID_DocCli", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("DocCli", "DocPro", "ID_InversionSP", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "dcInvSP");
    addRelation("DocCli", "DocPro", "ID_DocCliTransfer", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", lCanBeDeleteManual: true, alias: "dcTransfer");
    addRelation("DocCli", "DocPro", "ID_DocCliPedido", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", lCanBeDeleteManual: true, alias: "dcPedido");

    addRelation("DocCli", "DocAlmacen", "ID_DocCli", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo");
    addRelation("DocCli", "Efectos", "ID_CierreCaja", alias: "dcCierre");
    addRelation("DocCli", "Efectos", "ID_Pedido", alias: "dcPedido");
    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.doccli.index}";
    addRelation("DocCli", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("DocCli", "FabricacionGrupo", "ID_DocCli", lCanBeDeleteManual: true);
    addRelation("DocCli", "FabricacionGrupo", "ID_Pedido", lCanBeDeleteManual: true, alias: "dcPedido");
    addRelation("DocCli", "HstDocHotel", "ID_DocCli", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", lCanBeDeleteManual: true);
    addRelation("DocCli", "DocCli", "ID_FacturaRectificada", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("DocCli", "Logi_Envios", "ID_DocCli");
    addRelation("DocCli", "DocAlmacenx", "ID_DocCliDepositario",
        selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", joinStr: cJoinDocAlmacenx);
    addRelation("DocCli", "DocCli", "ID_FacturaTicket", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "dcFacTic");
    addRelation("DocCli", "Aparatos", "ID_DocCliCopias", lCanBeDeleteManual: true);
    addRelation("DocCli", "DocCli", "ID_Pedido", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", lCanBeDeleteManual: true, alias: "dcPedido");
    addRelation("DocCli", "DocCli", "ID_PedidoReserva", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "dcPedidoRes");
    addRelation("DocCli", "DocCli", "ID_Anterior", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "dcAnterior");

    // DocClix
    cFiltro = "NumerosSerie.Tipo=${EnumNumerosSerieTipo.doccliente.index}";
    addRelation("DocClix", "NumerosSerie", "ID_Contenido", filtro: cFiltro);
    addRelation("DocClix", "DocClix", "ID_DocClix", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("DocClix", "DocClix", "ID_GrupoImpresion", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "dcxGrpImp");
    addRelation("DocClix", "DocClix", "ID_DocxMenu", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "dcxMenu");
    addRelation("DocClix", "DocClix", "ID_SubCompuesto", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "dcxSubComp");
    addRelation("DocClix", "DocClix", "ID_GrupoActoEvento", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "dcxGrpActoEvento");
    addRelation("DocClix", "OcupantesX", "ID_DocClix");
    addRelation("DocClix", "RecursosActos", "ID_DocClix",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc, DocCli.verialID, DocCli.Tipo", joinStr: cJoinRecursosActos);

    // DocHotel
    addRelation("DocHotel", "DocHotelx", "ID_Documento",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true);
    addRelation("DocHotel", "Efectos", "ID_DocHotel");
    addRelation("DocHotel", "ComandaVisual", "ID_DocHotel");

    // DocHotelx
    addRelation("DocHotelx", "DocHotelx", "ID_DocHotelx", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true);
    addRelation("DocHotelx", "DocHotelx", "ID_GrupoImpresion", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true, alias: "dhxGrpImp");
    addRelation("DocHotelx", "DocHotelx", "ID_DocxMenu", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true, alias: "dhxMenu");
    addRelation("DocHotelx", "DocHotelx", "ID_SubCompuesto",selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true, alias: "dhxSubComp");
    addRelation("DocHotelx", "DocHotelx", "ID_GrupoActoEvento",selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true, alias: "dhxGrpActoEvento");

    addRelation("DocHotelx", "DocHotelxPrevision", "ID_DocHotelx", selectCanBeDel: "DocHotelx.ID_Documento", joinStr: cJoinDHXPrevision, lCanBeDeleteManual: true);
    addRelation("DocHotelx", "OcupantesX", "ID_DocHotelx", lCanBeDeleteManual: true);
    addRelation("DocHotelx", "RecursosActos", "ID_DocHotelx",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc, DocCli.verialID, DocCli.Tipo",
        joinStr: cJoinRecursosActos,
        lCanBeDeleteManual: true);

    // DocPro
    cFiltro = "Asientos.Tipo=${EnumAsientosTipo.facturarecibida.index}";
    addRelation("DocPro", "Asientos", "ID_Documento", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("DocPro", "DocCli", "ID_InversionSP", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("DocPro", "DocCli", "ID_DocProTransfer", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", lCanBeDeleteManual: true, alias: "dpTransfer");
    addRelation("DocPro", "DocClix", "ID_Partida", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("DocPro", "DocPro", "ID_Facturado", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "dpFacturado");
    addRelation("DocPro", "DocPro", "ID_Devolucion", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "dpDev");
    addRelation("DocPro", "DocPro", "ID_FacturaRectificada", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "dpFacRec");
    addRelation("DocPro", "DocPro", "ID_DUA", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "dpDUA");

    addRelation("DocPro", "DocProValores", "ID_Documento", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProValores);
    addRelation("DocPro", "DocProValores", "ID_RefDocPro", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProValores, alias: "dpRefDoc");

    addRelation("DocPro", "DocProx", "ID_Documento", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProx);
    addRelation("DocPro", "DocProx", "ID_Procedencia", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProx, alias: "dpProc");
    addRelation("DocPro", "DocProx", "ID_Partida", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProx, alias: "dpPart");
    addRelation("DocPro", "DocProx", "ID_DocOrigen", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProx, alias: "dpDocOrigen");

    addRelation("DocPro", "Inmovilizado", "ID_Factura");
    addRelation("DocPro", "DocAlmacenx", "ID_Partida", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", joinStr: cJoinDocAlmacenx);
    addRelation("DocPro", "CentroCostes_Valores", "ID_DocPro", lCanBeDeleteManual: true);

    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.docpro.index}";
    addRelation("DocPro", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("DocPro", "Logi_Envios", "ID_Factura", alias: "dpFactura");
    addRelation("DocPro", "DocAlmacen", "ID_DocPro", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", lCanBeDeleteManual: true);

    cFiltro = "ArtRevisionesAverias.Tipo=${EnumArtRevisionesAveriasTipo.averia.index}";
    addRelation("DocPro", "ArtRevisionesAverias", "ID_Partida",
        selectCanBeDel: "Averias.verialID, Averias.ID_Aparato, ArtRevisionesAverias.Tipo", filtro: cFiltro, joinStr: cJoinAveriasArticulos, alias: "dpAverias");

    cFiltro = "ArtRevisionesAverias.Tipo=${EnumArtRevisionesAveriasTipo.revision.index}";
    addRelation("DocPro", "ArtRevisionesAverias", "ID_Partida",
        selectCanBeDel: "Revisiones.verialID, Revisiones.ID_Aparato, ArtRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinRevisionesArticulos, alias: "dpRevisiones");

    addRelation("DocPro", AppTablas.cStock, "ID_Partida");

    // DocProx
    cFiltro = "NumerosSerie.Tipo=${EnumNumerosSerieTipo.docproveedor.index}";
    addRelation("DocProx", "NumerosSerie", "ID_Contenido", filtro: cFiltro);
    addRelation("DocProx", "CentroCostes_Valores", "ID_DocProx");

    // DocSINLI
    addRelation("DocSinli", "DocSinliX", "ID_DocSINLI");

    // Efectos
    cFiltro =
        "Asientos.Tipo IN(${EnumAsientosTipo.efectoPago.index},${EnumAsientosTipo.efectoFormalizacion.index},${EnumAsientosTipo.efectoAlBanco.index},${EnumAsientosTipo.efectoRechazado.index},${EnumAsientosTipo.efectoDudoso.index},${EnumAsientosTipo.efectoIncobrable.index}";
    addRelation("Efectos", "Asientos", "ID_Documento", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Efectos", "Efectos", "ID_Padre", alias: "efecPadre");
    addRelation("Efectos", "Efectos", "ID_Rechazado", alias: "efecRechaz");
    addRelation("Efectos", "Efectos", "ID_Consolidado", alias: "efecCons");

    // Empresas
    cFiltro = "CuentasBancarias.TipoFicha=${EnumCuentasBancariasTipoFicha.empresas.index}";
    addRelation("Empresas", "CuentasBancarias", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Empresas", "GruposSeries", "ID_Empresa");
    addRelation("Empresas", "Almacenes", "ID_Empresa");
    addRelation("Empresas", "Delegaciones", "ID_Empresa");
    addRelation("Empresas", "Aeat", "ID_Empresa");
    addRelation("Empresas", "MetodosPago", "ID_Empresa");
    addRelation("Empresas", "PlazosPago", "ID_Empresa");
    addRelation("Empresas", "Articulos", "ID_Empresa");
    addRelation("Empresas", "Personal", "ID_Empresa");
    addRelation("Empresas", "Agenda", "ID_Empresa");
    addRelation("Empresas", "TarifaHotel", "ID_Empresa");
    addRelation("Empresas", "TarifasArticulos", "ID_Empresa");
    addRelation("Empresas", "CentroCostes_Proyectos", "ID_Empresa");
    addRelation("Empresas", "CentroCostes_Arboles", "ID_Empresa");
    addRelation("Empresas", "CuentasEmail", "ID_Empresa");
    addRelation("Empresas", "ClientesX", "ID_Empresa",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX, lCanBeDeleteManual: true);
    addRelation("Empresas", "ProveedoresX", "ID_Empresa",
        selectCanBeDel: "ProveedoresX.ID_Proveedor, ProveedoresX.ID_Empresa", joinStr: cJoinProveedoresX, lCanBeDeleteManual: true);
    addRelation("Empresas", "TarifasDoc", "ID_Empresa");
    addRelation("Empresas", "CuentasBancarias", "ID_EmpresaCtaDefecto");
    addRelation("Empresas", "ComisionistasX", "ID_Empresa");
    addRelation("Empresas", "DocCli", "ID_SII_EmpresaSucedida", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Empresas", "DocPro", "ID_SII_EmpresaSucedida", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Empresas", "Hoja", "ID_Empresa");

    // Especies
    addRelation("Especies", "Articulos", "ID_EspecieDefecto");
    addRelation("Especies", "Clientes", "ID_EspecieDefecto");
    addRelation("Especies", "Recetas", "ID_Especie");

    // Estantes
    addRelation("Estantes", "EstantesX", "ID_Estante");

    // Fabricacion
    addRelation("Fabricacion", "FabricacionX", "ID_Fabricacion", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", joinStr: cJoinFabricacion, lCanBeDeleteManual: true);

    // FabricacionCfg
    addRelation("FabricacionCfg", "Fabricacion", "ID_FabricacionCfg", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo");

    // FabricacionEtapas
    addRelation("FabricacionEtapas", "FabricacionEtapas", "ID_Plantilla");
    addRelation("FabricacionEtapas", "FabricacionEtapasX", "ID_FabricacionEtapas", lCanBeDeleteManual: true);
    addRelation("FabricacionEtapas", "FabricacionGrupo", "ID_FabricacionEtapas");

    // FabricacionGrupo
    addRelation("FabricacionGrupo", "FabricacionGrupo", "ID_Plantilla");
    addRelation("FabricacionGrupo", "Fabricacion", "ID_FabricacionGrupo",
        selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", lCanBeDeleteManual: true);
    addRelation("FabricacionGrupo", "FabricacionEtapasX", "ID_FabricacionGrupo");

    // FabricacionTareas
    addRelation("FabricacionTareas", "FabricacionX", "ID_Tarea",
        selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", joinStr: cJoinFabricacion);

    // Fabricantes
    addRelation("Fabricantes", "Aparatos", "ID_Fabricante");
    addRelation("Fabricantes", "Articulos", "ID_Fabricante");
    cFiltro = "Mensajes.TipoFicha=${EnumMensajesTipoFicha.fabricante.index}";
    addRelation("Fabricantes", "Mensajes", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    cFiltro = "Data_Imp.TipoEmisor=${EnumDataImpTipoEmisor.fabricante.index}";
    addRelation("Fabricantes", "Data_Imp", "ID_Emisor", filtro: cFiltro);
    addRelation("Fabricantes", "Data_ImpX", "ID_Fabricante");
    addRelation("Fabricantes", "FabricantesX", "ID_Fabricante", lCanBeDeleteManual: true);
    addRelation("Fabricantes", "RangosBarras", "ID_Fabricante", lCanBeDeleteManual: true);
    addRelation("Fabricantes", "Tarifas", "ID_Fabricante");
    addRelation("Fabricantes", "TarifasDocX", "ID_Fabricante");

    // Fianzas
    addRelation("Fianzas", "FianzasX", "ID_Fianza", lCanBeDeleteManual: true);

    // Grupos
    addRelation("Grupos", "Mantenimientos", "ID_Grupo", lCanBeDeleteManual: true);
    addRelation("Grupos", "AreasVenta", "ID_Carta", lCanBeDeleteManual: true, alias: "grpCarta");
    addRelation("Grupos", "AreasVenta", "ID_GrupoDestino", lCanBeDeleteManual: true, alias: "grpDestino");

    addRelation("Grupos", "Articulos", "ID_CriterioTarifa", lCanBeDeleteManual: true, alias: "grpCritTar");
    addRelation("Grupos", "Articulos", "ID_CriterioComision", lCanBeDeleteManual: true, alias: "grpCritComis");
    addRelation("Grupos", "Articulos", "ID_GrupoArticulosDoc", lCanBeDeleteManual: true, alias: "grpArtDoc");
    addRelation("Grupos", "Articulos", "ID_Coleccion", lCanBeDeleteManual: true, alias: "grpColec");
    addRelation("Grupos", "Articulos", "ID_Curso", lCanBeDeleteManual: true, alias: "grpCurso");
    addRelation("Grupos", "Articulos", "ID_Asignatura", lCanBeDeleteManual: true, alias: "grpAsig");
    addRelation("Grupos", "GruposComisionesX", "ID_CriterioComision", lCanBeDeleteManual: true, alias: "grpCritComis");
    addRelation("Grupos", "GruposComisionesX", "ID_CriterioTarifa", lCanBeDeleteManual: true, alias: "grpCritTar");
    addRelation("Grupos", "Data_ImpX", "ID_Curso", lCanBeDeleteManual: true, alias: "grpCurso");
    addRelation("Grupos", "Data_ImpX", "ID_Asignatura", lCanBeDeleteManual: true, alias: "grpAsig");
    addRelation("Grupos", "DocHotelx", "ID_GrupoRegimen",selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true);
    addRelation("Grupos", "CartaGrupos", "ID_Carta", lCanBeDeleteManual: true, alias: "grpCarta");
    addRelation("Grupos", "CartaGrupos", "ID_Grupofactura", lCanBeDeleteManual: true, alias: "grpFac");
    addRelation("Grupos", "Tarifas", "ID_CriterioTarifa", lCanBeDeleteManual: true);
    addRelation("Grupos", "DocAlmacen", "ID_GrupoDestino", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", lCanBeDeleteManual: true);
    addRelation("Grupos", "ArtDelegaciones", "ID_Estado", lCanBeDeleteManual: true);
    addRelation("Grupos", "Articulos", "ID_Estado", lCanBeDeleteManual: true, alias: "grpEstado");
    addRelation("Grupos", "Clientes", "ID_GrupoINE", lCanBeDeleteManual: true);
    addRelation("Grupos", "Articulos", "ID_GrupoCalendario", lCanBeDeleteManual: true, alias: "grpCalen");
    addRelation("Grupos", "Articulos", "ID_GrupoCubiculo", lCanBeDeleteManual: true, alias: "grpCubiculo");
    addRelation("Grupos", "Agenda", "ID_Grupo", lCanBeDeleteManual: true);
    addRelation("Grupos", "Agenda", "ID_MarcaHora", lCanBeDeleteManual: true, alias: "grpMH");
    addRelation("Grupos", "MenuEventos", "ID_Tipo", lCanBeDeleteManual: true);
    addRelation("Grupos", "DocHotelx", "ID_TipoActo",        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true, alias: "grpTipoActo");
    addRelation("Grupos", "DocClix", "ID_TipoActo",        selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, lCanBeDeleteManual: true, alias: "grpTipoActo");
    addRelation("Grupos", "RecursosActos", "ID_PosicionPersona",        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc, DocCli.verialID, DocCli.Tipo",
        joinStr: cJoinRecursosActos,        lCanBeDeleteManual: true);
    addRelation("Grupos", "DocHotelx", "ID_MontajeSalon",        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, lCanBeDeleteManual: true, alias: "grpMontajeSalon");
    addRelation("Grupos", "DocClix", "ID_MontajeSalon",
        selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, lCanBeDeleteManual: true);
    addRelation("Grupos", "ReservasRest", "ID_Tipo", lCanBeDeleteManual: true);
    addRelation("Grupos", "Articulos", "ID_TipoTratamiento", lCanBeDeleteManual: true, alias: "grpTipoTrat");
    addRelation("Grupos", "Articulos", "ID_TipoPaqueteCircuito", lCanBeDeleteManual: true, alias: "grpTipoPaquete");
    addRelation("Grupos", "PartesReparaciones", "ID_Tipo", lCanBeDeleteManual: true);
    addRelation("Grupos", "Cfg_CamposAuxiliares", "ID_Grupo", lCanBeDeleteManual: true);
    addRelation("Grupos", "Articulos", "ID_GrupoSpa", lCanBeDeleteManual: true);
    addRelation("Grupos", "MenuEventosX", "ID_Grupo",
        selectCanBeDel: "MenuEventos.verialID", joinStr: cJoinMenuEventos, lCanBeDeleteManual: true);
    addRelation("Grupos", "FabricacionX", "ID_CentroTrabajo",
        selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", joinStr: cJoinFabricacion, lCanBeDeleteManual: true);
    addRelation("Grupos", "FabricacionTareas", "ID_CentroTrabajo", lCanBeDeleteManual: true);
    addRelation("Grupos", "FabricacionGrupo", "ID_Prioridad", lCanBeDeleteManual: true, alias: "grpPrioridad");
    addRelation("Grupos", "FabricacionGrupo", "ID_Incidencia", lCanBeDeleteManual: true, alias: "grpIncid");
    addRelation("Grupos", "CentroInformes", "ID_Grupo", lCanBeDeleteManual: true);
    addRelation("Grupos", "HstDocHotelx", "ID_GrupoRegimen",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, lCanBeDeleteManual: true,  alias: "grpRegimen");
    addRelation("Grupos", "HstDocHotelx", "ID_TipoActo",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, lCanBeDeleteManual: true, alias: "grpTipoActo");
    addRelation("Grupos", "HstDocHotelx", "ID_MontajeSalon",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, lCanBeDeleteManual: true, alias: "grpMontajesalon");
    addRelation("Grupos", "HstRecursosActos", "ID_PosicionPersona", lCanBeDeleteManual: true);
    addRelation("Grupos", "OrdenesTrabajo", "ID_Tipo", lCanBeDeleteManual: true, alias: "grpTipo");
    addRelation("Grupos", "OrdenesTrabajo", "ID_Etapa", lCanBeDeleteManual: true, alias: "grpEtapa");
    addRelation("Grupos", "ObjetosPerdidos", "ID_UbicacionEncontrado", lCanBeDeleteManual: true, alias: "grpUbiEnc");
    addRelation("Grupos", "ObjetosPerdidos", "ID_UbicacionGuardado", lCanBeDeleteManual: true, alias: "grpUbiGuard");
    addRelation("Grupos", "BonosAcceso", "ID_Descripcion", lCanBeDeleteManual: true);
    addRelation("Grupos", "TarifasDocX", "ID_CriterioTarifa", lCanBeDeleteManual: true);
    addRelation("Grupos", "Cfg_CentralReservasCargosXPersona", "ID_GrupoRegimen", lCanBeDeleteManual: true);
    addRelation("Grupos", "TelepedidoOfertas", "ID_Carta", lCanBeDeleteManual: true);
    addRelation("Grupos", "Cfg_CentralReservasCargos", "ID_GrupoRegimen", lCanBeDeleteManual: true);
    addRelation("Grupos", "Conocimientos", "ID_Sector", lCanBeDeleteManual: true);

    // Grupos
    addRelation("Grupos_G", AppTablas.cProvincias, "ID_Grupo");
    addRelation("Grupos_G", AppTablas.cProvincias, "ID_Region");
    addRelation("Grupos_G", AppTablas.cPaises, "ID_EstadisticaPais");

    // GruposComisiones
    addRelation("GruposComisiones", "Comisionistas", "ID_Grupo");
    addRelation("GruposComisiones", "GruposComisionesX", "ID_Grupo", lCanBeDeleteManual: true);
    addRelation("GruposComisiones", "ComisionistasX", "ID_Grupo");

    // GruposSeries
    addRelation("GruposSeries", "Series", "ID_GrupoSeries", lCanBeDeleteManual: true);
    addRelation("GruposSeries", "Nominas", "ID_GrupoSeries");
    addRelation("GruposSeries", "Comisiones", "ID_GrupoSeries");
    addRelation("GruposSeries", "ComisionesX", "ID_GrupoSeries");
    addRelation("GruposSeries", "Inmovilizado", "ID_GrupoSeries");
    addRelation("GruposSeries", "Asientos", "ID_GrupoSeries");
    addRelation("GruposSeries", "Remesas", "ID_GrupoSeries");
    addRelation("GruposSeries", "DocCli", "ID_GrupoSeries", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("GruposSeries", "DocPro", "ID_GrupoSeries", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("GruposSeries", "Delegaciones", "ID_CliGrupoSeriesEntregasACta");
    addRelation("GruposSeries", "Efectos", "ID_GrupoSeries");
    addRelation("GruposSeries", "Empresas", "ID_GrupoSeriesDefecto");
    addRelation("GruposSeries", "Presupuestos", "ID_GrupoSeries");
    addRelation("GruposSeries", "CentroCostes_Valores", "ID_GrupoSeries");
    addRelation("GruposSeries", "Fianzas", "ID_GrupoSeries");

    // Habitaciones
    cFiltro = "DocClix.TipoOrigen=${EnumDocXTipoOrigen.habitacion.index}";
    addRelation("Habitaciones", "DocClix", "ID_Origen",        selectCanBeDel: "DocCli.verialID, DocCli.Tipo", filtro: cFiltro, joinStr: cJoinDocClix);
    addRelation("Habitaciones", "DocClix", "ID_HabitacionCargo", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, alias: "habCargo");
    addRelation("Habitaciones", "DocHotelx", "ID_HabitacionCargo",        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx, alias: "habCargo");
    addRelation("Habitaciones", "DocHotelx", "ID_Habitacion",        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("Habitaciones", "HabitacionesX", "ID_Habitacion", lCanBeDeleteManual: true);
    addRelation("Habitaciones", "PartesReparaciones", "ID_Habitacion");
    addRelation("Habitaciones", "HstDocHotelx", "ID_Habitacion",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);
    addRelation("Habitaciones", "HstDocHotelx", "ID_HabitacionCargo",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "habCargo");

    // HabitacionesProps
    addRelation("HabitacionesProps", "HabitacionesX", "ID_Propiedad", lCanBeDeleteManual: true);

    // Hoja
    addRelation("Hoja", "HojaX", "ID_Hoja");

    // HotelDtos
    addRelation("HotelDtos", "HotelDtosX", "ID_HotelDtos", lCanBeDeleteManual: true);
    addRelation("HotelDtos", "TarifaHotel", "ID_HotelDtos");

    // HstDocHotel
    addRelation("HstDocHotel", "HstDocHotelx", "ID_Documento",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);

    // HstDocHotelx
    addRelation("HstDocHotelx", "HstDocHotelx", "ID_HstDocHotelx",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);
    addRelation("HstDocHotelx", "HstDocHotelx", "ID_GrupoImpresion",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "hstDhXGrpImp");
    addRelation("HstDocHotelx", "HstDocHotelx", "ID_GrupoActoEvento",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "hstDhXGrpActoEvento");
    addRelation("HstDocHotelx", "HstDocHotelx", "ID_DocXMenu",        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, alias: "hstDhXMenu");
    addRelation("HstDocHotelx", "HstOcupantesX", "ID_HstDocHotelx");
    addRelation("HstDocHotelx", "HstRecursosActos", "ID_HstDocHotelx");

    // HstRecursosActos
    addRelation("HstRecursosActos", "HstRecursosActos", "ID_Padre");

    // Impuestos
    addRelation("Impuestos", "AreasVenta", "ID_Impuesto");
    addRelation("Impuestos", "Articulos", "ID_Impuesto");
    addRelation("Impuestos", "Data_ImpX", "ID_Impuesto");
    addRelation("Impuestos", "ImpuestosX", "ID_Impuesto", lCanBeDeleteManual: true);
    addRelation("Impuestos", "TarifasArticulos", "ID_Impuesto");

    // Incidencias_L
    addRelation("Incidencias_L", AppTablas.cIncidenciasX, "ID_Incidencia");

    // InformesCfg
    addRelation("InformesCfg_G", AppTablas.cInformesCfgX, "ID_Origen");
    addRelation("InformesCfg_G", AppTablas.cInformesCfgX, "ID_Presets");
    addRelation("InformesCfg_G", AppTablas.cInformesCfg, "ID_CabeceraInforme");
    addRelation("InformesCfg_G", AppTablas.cInformesCfg, "ID_PieInforme");
    addRelation("InformesCfg_G", AppTablas.cInformesCfg, "ID_ModeloDesign");
    addRelation("InformesCfg_G", "Delegaciones", "ID_CabeceraInformes");
    addRelation("InformesCfg_G", "Delegaciones", "ID_PieInformes");
    addRelation("InformesCfg_G", "Delegaciones", "ID_CabeceraDocA4");
    addRelation("InformesCfg_G", "Delegaciones", "ID_PieDocA4");
    addRelation("InformesCfg_G", "Delegaciones", "ID_CabeceraDocA5");
    addRelation("InformesCfg_G", "Delegaciones", "ID_PieDocA5");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloFacturas");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloAlbaranes");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloTickets");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloPresupuestos");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloPedidos");
    addRelation("InformesCfg_G", "AreasCompra", "ID_ModeloFacturas");
    addRelation("InformesCfg_G", "AreasCompra", "ID_ModeloAlbaranes");
    addRelation("InformesCfg_G", "AreasCompra", "ID_ModeloPedidos");
    addRelation("InformesCfg_G", "AreasCompra", "ID_ModeloPresupuestos");
    addRelation("InformesCfg_G", "AreasCompra", "ID_ModeloDevoluciones");
    addRelation("InformesCfg_G", "FabricacionCfg", "ID_ModeloEtiquetaCajas");
    addRelation("InformesCfg_G", "FabricacionCfg", "ID_ModeloEtiquetaArticulo");
    addRelation("InformesCfg_G", "Fabricacion", "ID_ModeloEtiquetaCajas", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo");
    addRelation("InformesCfg_G", "Fabricacion", "ID_ModeloEtiquetaArticulo", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo");
    addRelation("InformesCfg_G", "CentroInformesX", "ID_Presets");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloWelcome");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloFacturasPlantilla");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloAlbaranesPlantilla");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloTicketsPlantilla");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloPedidosPlantilla");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloPresupuestosPlantilla");
    addRelation("InformesCfg_G", "AreasVenta", "ID_ModeloNotasPlantilla");

    // InformesUsuarios
    addRelation("InformesUsuarios", "InformesUsuariosX", "ID_InformesUsuarios");

    // Inmovilizado
    addRelation("Inmovilizado", "InmovilizadoValores", "ID_Documento", lCanBeDeleteManual: true);
    addRelation("Inmovilizado", "InmovilizadoX", "ID_Documento", lCanBeDeleteManual: true);

    // Instalaciones
    addRelation("Instalaciones", "InstalacionesX", "ID_Instalacion", lCanBeDeleteManual: true);
    addRelation("Instalaciones", "InstalacionesProps", "ID_Instalacion", lCanBeDeleteManual: true);
    addRelation("Instalaciones", "Aparatos", "ID_Instalacion");
    addRelation("Instalaciones", "Conocimientos", "ID_Instalacion");

    // Inventario
    addRelation("Inventario", "InventarioX", "ID_Inventario");

    // Logi_Destinos
    addRelation("Logi_Destinos", "Logi_Envios", "ID_Destino");
    addRelation("Logi_Destinos", "DocCli", "ID_Destino", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");

    // Logi_Envios
    addRelation("Logi_Envios", "Logi_Unidades", "ID_Envio");

    // Logi_Formas
    addRelation("Logi_Formas", "Logi_Destinos", "ID_FormaEnvio", lCanBeDeleteManual: true);
    addRelation("Logi_Formas", "Clientes", "ID_FormaEnvio");
    addRelation("Logi_Formas", "DocCli", "ID_FormaEnvio", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Logi_Formas", "Logi_Envios", "ID_FormaEnvio");

    // Logi_Formatos
    addRelation("Logi_Formatos", "Logi_Unidades", "ID_Formato");

    // Logi_Unidades
    addRelation("Logi_Unidades", "Logi_UnidadesX", "ID_Unidad", lCanBeDeleteManual: true);

    // Mandatos
    addRelation("Mandatos", "Efectos", "ID_Mandato");

    // Mantenimientos
    addRelation("Mantenimientos", "Aparatos", "ID_Contrato", alias: "manC1");
    addRelation("Mantenimientos", "Aparatos", "ID_Contrato2", alias: "manC2");
    addRelation("Mantenimientos", "DocClix", "ID_Mantenimiento", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("Mantenimientos", "Instalaciones", "ID_Mantenimiento");

    // MenuEventos
    cFiltro = "DocClix.TipoOrigen=${EnumDocXTipoOrigen.actomenu.index}";
    addRelation("MenuEventos", "DocClix", "ID_Origen",
        selectCanBeDel: "DocCli.verialID, DocCli.Tipo", filtro: cFiltro, joinStr: cJoinDocClix);
    addRelation("MenuEventos", "MenuEventosX", "ID_MenuEventos",
        selectCanBeDel: "MenuEventos.verialID", joinStr: cJoinMenuEventos, lCanBeDeleteManual: true);

    // MenuRest
    addRelation("MenuRest", "MenuRestX", "ID_MenuRest", lCanBeDeleteManual: true);

    // Mesas
    addRelation("Mesas", "DocClix", "ID_Mesa", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("Mesas", "DocHotel", "ID_Mesa", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("Mesas", "DocHotelx", "ID_Mesa", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("Mesas", "HstDocHotel", "ID_Mesa", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Mesas", "HstDocHotelx", "ID_Mesa", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);

    // Messenger
    addRelation("Messenger_G", AppTablas.cMessengerX, "ID_Messenger");

    // MetodosPago
    addRelation("MetodosPago", "Mantenimientos", "ID_ComoPago");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoCobro1", alias: "metPag1");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoCobro2", alias: "metPag2");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoCobro3", alias: "metPag3");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoCobro4", alias: "metPag4");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoCobro5", alias: "metPag5");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoCobro6", alias: "metPag6");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoCobro7", alias: "metPag7");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoCobro8", alias: "metPag8");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoEfectivo", alias: "metEfec");
    addRelation("MetodosPago", "ArqueosX", "ID_ComoPago");
    addRelation("MetodosPago", "OperacionesTPV", "ID_ComoPago");
    addRelation("MetodosPago", "Comisiones", "ID_ComoPago");
    addRelation("MetodosPago", "Data_Imp", "ID_ComoPago");
    addRelation("MetodosPago", "Data_ImpX", "ID_ComoPago");
    addRelation("MetodosPago", "DocCli", "ID_ComoPago", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("MetodosPago", "DocPro", "ID_ComoPago", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("MetodosPago", "Nominas", "ID_MetodoPago");
    addRelation("MetodosPago", "Remesas", "ID_ComoPago");
    addRelation("MetodosPago", "Cfg_CentralReservas", "ID_MetodoPago1", alias: "metPag1");
    addRelation("MetodosPago", "Cfg_CentralReservas", "ID_MetodoPago2", alias: "metPag2");
    addRelation("MetodosPago", "Cfg_CentralReservas", "ID_MetodoPago3", alias: "metPag3");
    addRelation("MetodosPago", "Delegaciones", "ID_MetodoEfectivo", alias: "metPagEfec");
    addRelation("MetodosPago", "Delegaciones", "ID_CliMetodoCobroDefecto", alias: "metPagCliDef");
    addRelation("MetodosPago", "Delegaciones", "ID_ProMetodoPagoDefecto", alias: "metPagProDef");
    addRelation("MetodosPago", "Efectos", "ID_ComoPago");
    addRelation("MetodosPago", "Personal", "ID_ComoPago");
    addRelation("MetodosPago", "Fianzas", "ID_MetodoConstitucion", alias: "metPagConst");
    addRelation("MetodosPago", "Fianzas", "ID_MetodoCancelacion", alias: "metPagCanc");
    addRelation("MetodosPago", "ClientesX", "ID_ComoPago",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX);
    addRelation("MetodosPago", "ProveedoresX", "ID_ComoPago",
        selectCanBeDel: "ProveedoresX.ID_Proveedor, ProveedoresX.ID_Empresa", joinStr: cJoinProveedoresX);
    addRelation("MetodosPago", "Cajones", "ID_MetodoApertura");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoTelepedido", alias: "metPagTelep");
    addRelation("MetodosPago", "DocHotel", "ID_ComoPago", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoEfectivoKioskoHotel", alias: "metPagEfecKiosko");
    addRelation("MetodosPago", "AreasVenta", "ID_MetodoTarjetaKioskoHotel", alias: "metPagTarjKiosko");
    addRelation("MetodosPago", "Cfg_CentralReservasClientesAgencias", "ID_ComoPago");

    // Monedas
    addRelation("Monedas_G", AppTablas.cPaises, "ID_Moneda");
    addRelation("Monedas_G", "Clientes", "ID_Moneda");
    addRelation("Monedas_G", "DocCli", "ID_Moneda2", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Monedas_G", "ViasPago", "ID_Moneda");

    // Nombres
    addRelation("Nombres", "Data_Imp", "ID_Destinatario");
    addRelation("Nombres", "DocPro", "ID_Visita", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "nomVista");
    addRelation("Nombres", "DocPro", "ID_Atencion", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "nomAtencion");
    addRelation("Nombres", "DocCli", "ID_RemitenteContacto", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "nomRem");
    addRelation("Nombres", "DocCli", "ID_EnvioContacto", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "nomEnvio");

    // Nominas
    cFiltro = "Asientos.Tipo=${EnumAsientosTipo.nomina.index}";
    addRelation("Nominas", "Asientos", "ID_Documento", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Nominas", "CentroCostes_Valores", "ID_Nomina", lCanBeDeleteManual: true);
    addRelation("Nominas", "Efectos", "ID_NominaAtrasos");

    // Ocupantes
    addRelation("Ocupantes", "OcupantesX", "ID_Ocupante");
    addRelation("Ocupantes", "HstOcupantesX", "ID_Ocupante");

    // OrdenesTrabajo
    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.ordenestrabajo.index}";
    addRelation("OrdenesTrabajo", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true);

    // Paises
    addRelation("Paises_G", AppTablas.cProvincias, "ID_Pais");
    addRelation("Paises_G", AppTablas.cBancos, "ID_Pais");
    addRelation("Paises_G", AppTablas.cUbicaciones, "ID_Pais");
    addRelation("Paises_G", "Articulos", "ID_Pais");
    addRelation("Paises_G", "Clientes", "ID_PaisNacionalidad");
    addRelation("Paises_G", "Data_ImpX", "ID_PaisPublicacion");
    addRelation("Paises_G", "Ocupantes", "ID_Pais");
    addRelation("Paises_G", "Ocupantes", "ID_PaisNacionalidad");
    addRelation("Paises_G", "Nombres", "ID_Pais");
    addRelation("Paises_G", "Clientes", "ID_Pais");
    addRelation("Paises_G", "Proveedores", "ID_Pais");
    addRelation("Paises_G", "Fabricantes", "ID_Pais");
    addRelation("Paises_G", "Personal", "ID_Pais");
    addRelation("Paises_G", "Almacenes", "ID_Pais");
    addRelation("Paises_G", "Transportistas", "ID_Pais");
    addRelation("Paises_G", "ContactosExternos", "ID_Pais");
    addRelation("Paises_G", "Veterinarios", "ID_Pais");
    addRelation("Paises_G", "Tecnicos", "ID_Pais");
    addRelation("Paises_G", "Empresas", "ID_Pais");
    addRelation("Paises_G", "Delegaciones", "ID_Pais");
    addRelation("Paises_G", "OcupantesX", "ID_Pais");
    addRelation("Paises_G", "HstOcupantesX", "ID_Pais", lCanBeDeleteManual: true);
    addRelation("Paises_G", "ViasPago", "ID_Pais");
    addRelation("Paises_G", "Clientes", "ID_PaisNIF");

    // PartesMedicos
    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.partesmedicos.index}";
    addRelation("PartesMedicos", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true);

    // PartesReparaciones
    addRelation("PartesReparaciones", "PartesReparacionesX", "ID_ParteReparacion",
        selectCanBeDel: "PartesReparaciones.verialID", joinStr: cJoinPartesReparacionesX, lCanBeDeleteManual: true);

    // PDAs
    cFiltro = "Data_Imp.TipoOrigen=${EnumDataImpTipoOrigen.pda.index}";
    addRelation("Pdas", "Data_Imp", "ID_Origen", filtro: cFiltro);
    addRelation("Pdas", "Pdas_Sincronizaciones", "ID_PDA", lCanBeDeleteManual: true);

    // Perfiles
    addRelation("Perfiles", "Articulos", "ID_Perfil");
    addRelation("Perfiles", "Data_ImpX", "ID_Perfil");

    // PerfilesCamposAux
    addRelation("PerfilesCamposAux", "Cfg_CamposAuxiliares", "ID_PerfilCamposAux", lCanBeDeleteManual: true);
    addRelation("PerfilesCamposAux", "Arboles", "ID_PerfilCamposAux");
    addRelation("PerfilesCamposAux", "Articulos", "ID_PerfilCamposAux");
    addRelation("PerfilesCamposAux", "CamposAuxiliares", "ID_PerfilCamposAux",
        selectCanBeDel: "CamposAuxiliares.ID_Origen, CamposAuxiliares.Tipo");
    addRelation("PerfilesCamposAux", "ArbolesAuxiliares", "ID_PerfilCamposAux", lCanBeDeleteManual: true);
    addRelation("PerfilesCamposAux", "Aparatos", "ID_PerfilCamposAux");

    // Personal
    cFiltro = "CuentasBancarias.TipoFicha=${EnumCuentasBancariasTipoFicha.personal.index}";
    addRelation("Personal", "CuentasBancarias", "ID_Ficha", lCanBeDeleteManual: true);

    cFiltro = "Mensajes.TipoFicha=${EnumMensajesTipoFicha.personal.index}";
    addRelation("Personal", "Mensajes", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Personal", "DocCli", "ID_Autorizacion", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");

    cFiltro = "DocClix.TipoOrigen=${EnumDocXTipoOrigen.personal.index}";
    addRelation("Personal", "DocClix", "ID_Origen", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", filtro: cFiltro, joinStr: cJoinDocClix);

    cFiltro = "DocHotelx.TipoOrigen=${EnumDocXTipoOrigen.personal.index}";
    addRelation("Personal", "DocHotelx", "ID_Origen", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", filtro: cFiltro, joinStr: cJoinDocHotelx);
    addRelation("Personal", "DocPro", "ID_Autorizacion", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "persAut");
    addRelation("Personal", "DocPro", "ID_Recepcion", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "persRecep");
    addRelation("Personal", "Habitaciones", "ID_Camarera");
    addRelation("Personal", "Nominas", "ID_Personal");
    addRelation("Personal", "Remesas", "ID_Presentador", alias: "persPres");
    addRelation("Personal", "Remesas", "ID_Ordenante", alias: "persOrden");
    addRelation("Personal", "Comisionistas", "ID_Personal");
    addRelation("Personal", "DocAlmacen", "ID_Autorizacion", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", alias: "persAut");
    addRelation("Personal", "DocAlmacen", "ID_Recepcion", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo", alias: "persRecep");
    addRelation("Personal", "UsuariosX", "ID_Personal", selectCanBeDel: "ID_Usuario");
    addRelation("Personal", "Agenda", "ID_Personal");
    addRelation("Personal", "PartesReparacionesX", "ID_Personal",
        selectCanBeDel: "PartesReparaciones.verialID", joinStr: cJoinPartesReparacionesX);
    addRelation("Personal", "SalonesX", "ID_Personal", selectCanBeDel: "SalonesX.ID_Salon", joinStr: cJoinSalonesX);
    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.personal.index}";
    addRelation("Personal", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true);
    cFiltro = "RutasFicheros.TipoFicha=${EnumRutasFicherosTipoFicha.personal.index}";
    addRelation("Personal", "RutasFicheros", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Personal", "CentroCostes_Defecto", "ID_Personal", lCanBeDeleteManual: true);
    cFiltro = "HstDocHotelx.TipoOrigen=${EnumDocXTipoOrigen.personal.index}";
    addRelation("Personal", "HstDocHotelx", "ID_Origen",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", filtro: cFiltro, joinStr: cJoinHstDocHotelx);
    addRelation("Personal", "ObjetosPerdidos", "ID_PersonalEncontrado", alias: "persEncontrado");
    addRelation("Personal", "ObjetosPerdidos", "ID_PersonalEnvio", alias: "persEnvio");
    addRelation("Personal", "Presencia", "ID_Personal");

    // PlazosPago
    addRelation("PlazosPago", "Mantenimientos", "ID_CuandoPago");
    addRelation("PlazosPago", "Data_Imp", "ID_CuandoPago");
    addRelation("PlazosPago", "DocCli", "ID_CuandoPago", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("PlazosPago", "DocPro", "ID_CuandoPago", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("PlazosPago", "DiasPago", "ID_Plazos", lCanBeDeleteManual: true);
    addRelation("PlazosPago", "Delegaciones", "ID_CliPeriodicidadDefecto", alias: "plazosCliPerDef");
    addRelation("PlazosPago", "Delegaciones", "ID_ProPeriodicidadDefecto", alias: "plazosProPerDef");
    addRelation("PlazosPago", "ClientesX", "ID_CuandoPago",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX);
    addRelation("PlazosPago", "ProveedoresX", "ID_CuandoPago",
        selectCanBeDel: "ProveedoresX.ID_Proveedor, ProveedoresX.ID_Empresa", joinStr: cJoinProveedoresX);

    // Prevision
    addRelation("Prevision", "Prevision", "ID_FichaPrevision");

    // Programas
    addRelation("Programas", "Instalaciones", "ID_Programa");

    // Proveedores
    addRelation("Proveedores", "ArtCodigos", "ID_Proveedor", lCanBeDeleteManual: true);
    addRelation("Proveedores", "Articulos", "ID_Proveedor");
    addRelation("Proveedores", "ArtProveedor", "ID_Proveedor", selectCanBeDel: "ArtProveedor.ID_Articulo", lCanBeDeleteManual: true);
    cFiltro = "CuentasBancarias.TipoFicha=${EnumCuentasBancariasTipoFicha.proveedores.index}";
    addRelation("Proveedores", "CuentasBancarias", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    cFiltro = "Mensajes.TipoFicha=${EnumMensajesTipoFicha.proveedor.index}";
    addRelation("Proveedores", "Mensajes", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    cFiltro = "Data_Imp.TipoEmisor=${EnumDataImpTipoEmisor.proveedor.index}";
    addRelation("Proveedores", "Data_Imp", "ID_Emisor", filtro: cFiltro);
    cFiltro = "Data_Imp.TipoDocumento=${EnumDataImpTipoDocumento.documentoproveedor.index}";
    addRelation("Proveedores", "Data_Imp", "ID_TitularDoc", filtro: cFiltro);
    addRelation("Proveedores", "DocPro", "ID_Proveedor", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Proveedores", "DocPro", "ID_Distribuidor", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", alias: "proDist");
    addRelation("Proveedores", "Fabricantes", "ID_Proveedor");
    addRelation("Proveedores", "FabricantesX", "ID_Proveedor", lCanBeDeleteManual: true);
    addRelation("Proveedores", "Perfiles", "ID_Proveedor");
    cFiltro = "Nombres.TipoFicha=${EnumNombresTipoFicha.proveedoresContactos.index}";
    addRelation("Proveedores", "Nombres", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Proveedores", "Nominas", "ID_Sindicato");
    addRelation("Proveedores", "Proveedores", "ID_FichaFiscal", lCanBeDeleteManual: true, alias: "proFiscal");
    addRelation("Proveedores", "Proveedores", "ID_FichaVarios", alias: "proVarios");
    addRelation("Proveedores", "Aparatos", "ID_Proveedor");
    addRelation("Proveedores", "Comisionistas", "ID_Proveedor");
    addRelation("Proveedores", "ArtDelegaciones", "ID_Proveedor");
    addRelation("Proveedores", "Agenda", "ID_Proveedor");
    addRelation("Proveedores", "CentroCostes_Defecto", "ID_Proveedor", lCanBeDeleteManual: true);
    cFiltro = "CamposAuxiliares.Tipo=${EnumCamposAuxiliaresTipo.proveedores.index}";
    addRelation("Proveedores", "CamposAuxiliares", "ID_Origen", filtro: cFiltro, lCanBeDeleteManual: true);
    cFiltro = "RutasFicheros.TipoFicha=${EnumRutasFicherosTipoFicha.proveedores.index}";
    addRelation("Proveedores", "RutasFicheros", "ID_Ficha", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Proveedores", "ProveedoresX", "ID_Proveedor",
        selectCanBeDel: "ProveedoresX.ID_Proveedor, ProveedoresX.ID_Empresa", joinStr: cJoinProveedoresX, lCanBeDeleteManual: true);
    addRelation("Proveedores", "DocAlmacen", "ID_Proveedor", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo");
    cFiltro = "CategoriasDe.Tipo=${EnumCategoriasDeTipo.proveedores.index}";
    addRelation("Proveedores", "CategoriasDe", "ID_Quien", filtro: cFiltro, lCanBeDeleteManual: true);

    // Provincias
    addRelation("Provincias_G", AppTablas.cUbicaciones, "ID_Provincia");
    addRelation("Provincias_G", "Ocupantes", "ID_Provincia");
    addRelation("Provincias_G", "Nombres", "ID_Provincia");
    addRelation("Provincias_G", "Clientes", "ID_Provincia");
    addRelation("Provincias_G", "Proveedores", "ID_Provincia");
    addRelation("Provincias_G", "Fabricantes", "ID_Provincia");
    addRelation("Provincias_G", "Personal", "ID_Provincia");
    addRelation("Provincias_G", "Almacenes", "ID_Provincia");
    addRelation("Provincias_G", "Transportistas", "ID_Provincia");
    addRelation("Provincias_G", "ContactosExternos", "ID_Provincia");
    addRelation("Provincias_G", "Veterinarios", "ID_Provincia");
    addRelation("Provincias_G", "Tecnicos", "ID_Provincia");
    addRelation("Provincias_G", "Empresas", "ID_Provincia");
    addRelation("Provincias_G", "Delegaciones", "ID_Provincia");
    addRelation("Provincias_G", "OcupantesX", "ID_Provincia");
    addRelation("Provincias_G", "HstOcupantesX", "ID_Provincia", lCanBeDeleteManual: true);

    // Puestos
    addRelation("Puestos_G", AppTablas.cImpresoras, "ID_Puesto", lCanBeDeleteManual: true);
    addRelation("Puestos_G", AppTablas.cXSettings, "ID_Puesto");
    addRelation("Puestos_G", AppTablas.cInformesCfg, "ID_Puesto");
    addRelation("Puestos_G", AppTablas.cPID, "ID_Puesto", lCanBeDeleteManual: true);
    addRelation("Puestos_G", AppTablas.cInformesCfgX, "ID_Puesto");
    addRelation("Puestos_G", AppTablas.cMessenger, "ID_DePuesto");
    addRelation("Puestos_G", AppTablas.cMessengerX, "ID_Puesto");
    addRelation("Puestos_G", "OrdenesTrabajo", "ID_Puesto");
    addRelation("Puestos_G", "Arqueos", "ID_Puesto");
    addRelation("Puestos_G", "OperacionesTPV", "ID_Puesto");
    addRelation("Puestos_G", "XSettings", "ID_Puesto");
    addRelation("Puestos_G", "Data_Imp", "ID_Puesto");
    addRelation("Puestos_G", "DocCli", "ID_Puesto", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Puestos_G", "DocClix", "ID_Puesto", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("Puestos_G", "PuntosClientes", "ID_Puesto");
    addRelation("Puestos_G", "DocHotel", "ID_Puesto", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("Puestos_G", "DocHotelx", "ID_Puesto", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("Puestos_G", "DocPro", "ID_Puesto", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Puestos_G", "Mandatos", "ID_Puesto");
    addRelation("Puestos_G", "ReservasRest", "ID_Puesto");
    addRelation("Puestos_G", "Pdas", "ID_Puesto");
    addRelation("Puestos_G", "Pdas", "ID_PuestoAlternativo");
    addRelation("Puestos_G", "Tpvext_Cajas", "ID_Puesto");
    addRelation("Puestos_G", "DocAlmacen", "ID_Puesto", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo");
    addRelation("Puestos_G", "PuestosX", "ID_Puesto", selectCanBeDel: "ID_Puesto", lCanBeDeleteManual: true);
    addRelation("Puestos_G", "Efectos", "ID_Puesto");
    addRelation("Puestos_G", "Agenda", "ID_Puesto");
    addRelation("Puestos_G", "Inventario", "ID_Puesto");
    addRelation("Puestos_G", "InventarioX", "ID_Puesto");
    addRelation("Puestos_G", "HstDocHotel", "ID_PuestoProceso", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Puestos_G", "HstDocHotel", "ID_Puesto", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Puestos_G", "HstDocHotelx", "ID_Puesto",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);
    addRelation("Puestos_G", "InstalacionesProps", "ID_Puesto");
    addRelation("Puestos_G", "Fianzas", "ID_Puesto");
    addRelation("Puestos_G", "Webs", "ID_Puesto");
    addRelation("Puestos_G", AppTablas.cIncidencias, "ID_Puesto");
    addRelation("Puestos_G", AppTablas.cStock, "ID_Puesto");
    addRelation("Puestos_G", AppTablas.cChequeos, "ID_Puesto");
    addRelation("Puestos_G", AppTablas.cExTrans, "ID_Puesto");

    // Recetas
    addRelation("Recetas", "DocClix", "ID_Receta", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);

    // RecursosActos
    addRelation("RecursosActos", "RecursosActos", "ID_Padre",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc, DocCli.verialID, DocCli.Tipo", joinStr: cJoinRecursosActos);

    // Remesas
    cFiltro = "Asientos.Tipo =${EnumAsientosTipo.remesaPresentacion.index}";
    addRelation("Remesas", "Asientos", "ID_Documento", filtro: cFiltro, lCanBeDeleteManual: true);
    addRelation("Remesas", "Efectos", "ID_Remesa", lCanBeDeleteManual: true);
    addRelation("Remesas", "RemesasAsientos", "ID_Remesa", lCanBeDeleteManual: true);

    // Retenciones
    addRelation("Retenciones", "Clientes", "ID_Retencion");
    addRelation("Retenciones", "DocCli", "ID_Retencion", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Retenciones", "DocPro", "ID_Retencion", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Retenciones", "RetencionesX", "ID_Retencion", lCanBeDeleteManual: true);
    addRelation("Retenciones", "Nominas", "ID_RetencionIRPF");
    addRelation("Retenciones", "Proveedores", "ID_Retencion");
    addRelation("Retenciones", "DocCliValores", "ID_Retencion", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocCliValores);
    addRelation("Retenciones", "DocProValores", "ID_Retencion", selectCanBeDel: "DocPro.verialID, DocPro.Tipo", joinStr: cJoinDocProValores);

    // Revisiones
    addRelation("Revisiones", "OrdenesTrabajo", "ID_Revision", lCanBeDeleteManual: true);
    cFiltro = "ArtRevisionesAverias.Tipo=${EnumArtRevisionesAveriasTipo.revision.index}";
    addRelation("Revisiones", "ArtRevisionesAverias", "ID_AveriaRevision",
        selectCanBeDel: "Revisiones.verialID, Revisiones.ID_Aparato, ArtRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinRevisionesArticulos,
        lCanBeDeleteManual: true);
    cFiltro = "TecnicosRevisionesAverias.Tipo=${EnumTecnicosRevisionesAveriasTipo.revision.index}";
    addRelation("Revisiones", "TecnicosRevisionesAverias", "ID_AveriaRevision",
        selectCanBeDel: "Revisiones.verialID, Revisiones.ID_Aparato, TecnicosRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinRevisionesTecnicos,
        lCanBeDeleteManual: true);

    // Salones
    cFiltro = "DocClix.TipoOrigen=${EnumDocXTipoOrigen.salon.index}";
    addRelation("Salones", "DocClix", "ID_Origen", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", filtro: cFiltro, joinStr: cJoinDocClix);
    addRelation("Salones", "RecursosActos", "ID_Salon",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc, DocCli.verialID, DocCli.Tipo", joinStr: cJoinRecursosActos);
    addRelation("Salones", "ReservasRest", "ID_Salon");
    addRelation("Salones", "PartesReparaciones", "ID_Salon");
    addRelation("Salones", "SalonesX", "ID_Salon", selectCanBeDel: "SalonesX.ID_Salon", joinStr: cJoinSalonesX, lCanBeDeleteManual: true);
    addRelation("Salones", "HstRecursosActos", "ID_Salon");

    // Secciones
    addRelation("Secciones", "SeccionesX", "ID_Seccion", lCanBeDeleteManual: true);
    addRelation("Secciones", "CartaArticulos", "ID_Seccion");
    addRelation("Secciones", "MenuRestX", "ID_Seccion");

    // Series
    addRelation("Series", "AreasVenta", "ID_SerieDefecto", alias: "serDef");
    addRelation("Series", "AreasVenta", "ID_SerieAlternativa", alias: "serAlt");
    addRelation("Series", "Data_Imp", "ID_Serie");
    addRelation("Series", "DocCli", "ID_Serie", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Series", "DocPro", "ID_Serie", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Series", "Numeraciones", "ID_Serie", lCanBeDeleteManual: true);
    addRelation("Series", "Pdas", "ID_Serie");
    addRelation("Series", "Tpvext_Cajas", "ID_Serie");
    addRelation("Series", "AreasCompra", "ID_SerieDefecto", alias: "serDef");
    addRelation("Series", "AreasCompra", "ID_SerieAlternativa", alias: "serAlt");
    addRelation("Series", "Delegaciones", "ID_SerieDefecto");
    addRelation("Series", "TiendasVirtuales", "ID_Serie");
    addRelation("Series", "Mantenimientos", "ID_Serie");
    addRelation("Series", "Webs", "ID_Serie");
    addRelation("Series", "ClientesX", "ID_Serie", selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX);
    addRelation("Series", "ProveedoresX", "ID_Serie",
        selectCanBeDel: "ProveedoresX.ID_Proveedor, ProveedoresX.ID_Empresa", joinStr: cJoinProveedoresX);
    addRelation("Series", "AreasVenta", "ID_SerieDefectoTickets", alias: "serDefTic");
    addRelation("Series", "AreasVenta", "ID_SerieAlternativaTickets", alias: "serAltTic");
    addRelation("Series", "ClientesX", "ID_SerieTickets",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX, alias: "serTic");
    addRelation("Series", "Delegaciones", "ID_ProSerieDefecto", alias: "serProDef");
    addRelation("Series", "Delegaciones", "ID_ProSerieAlternativa", alias: "serProAat");
    addRelation("Series", "PuestosX", "ID_SerieWeb", selectCanBeDel: "ID_Puesto", alias: "serWeb");
    addRelation("Series", "PuestosX", "ID_SerieTicketsWeb", selectCanBeDel: "ID_Puesto", alias: "serTicWeb");
    addRelation("Series", "BasculasTPV", "ID_Serie");
    addRelation("Series", "BasculasTPV", "ID_SerieTickets", alias: "serTic");

    // Stock_L
    addRelation("Stock_L", AppTablas.cStockNumSerie, "ID_Stock");

    // TareasTecnicos
    cFiltro = "TecnicosRevisionesAverias.Tipo=${EnumTecnicosRevisionesAveriasTipo.averia.index}";
    addRelation("TareasTecnicos", "TecnicosRevisionesAverias", "ID_TareaTecnicos",
        selectCanBeDel: "Averias.verialID, Averias.ID_Aparato, TecnicosRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinAveriasTecnicos);
    cFiltro = "TecnicosRevisionesAverias.Tipo=${EnumTecnicosRevisionesAveriasTipo.revision.index}";
    addRelation("TareasTecnicos", "TecnicosRevisionesAverias", "ID_TareaTecnicos",
        selectCanBeDel: "Revisiones.verialID, Revisiones.ID_Aparato, TecnicosRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinRevisionesTecnicos);

    // TarifaHotel
    addRelation("TarifaHotel", "DocHotel", "ID_TarifaCliente", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", alias: "tarHotCli");
    addRelation("TarifaHotel", "DocHotel", "ID_TarifaEmpresa", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", alias: "tarHotEmp");
    addRelation("TarifaHotel", "DocHotelx", "ID_TarifaHotel",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("TarifaHotel", "TarifaHotelClientes", "ID_TarifaHotel", lCanBeDeleteManual: true);
    addRelation("TarifaHotel", "TarifaHotelx", "ID_TarifaHotel", lCanBeDeleteManual: true);
    addRelation("TarifaHotel", "TarifaHotelx", "ID_TarifaFija", alias: "tarHotFija");
    addRelation("TarifaHotel", "Tarifas", "ID_TarifaHotel", lCanBeDeleteManual: true);
    addRelation("TarifaHotel", "Cfg_CentralReservas", "ID_TarifaHotel");
    addRelation("TarifaHotel", "Delegaciones", "ID_CliTarifaHotelDefecto");
    addRelation("TarifaHotel", "HstDocHotel", "ID_TarifaCliente",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", lCanBeDeleteManual: true, alias: "tarHotCli");
    addRelation("TarifaHotel", "HstDocHotel", "ID_TarifaEmpresa",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", lCanBeDeleteManual: true, alias: "tarHotEmp");
    addRelation("TarifaHotel", "HstDocHotelx", "ID_TarifaHotel",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx, lCanBeDeleteManual: true);
    addRelation("TarifaHotel", "ClientesX", "ID_TarifaHotel",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX);
    addRelation("TarifaHotel", "AreasVenta", "ID_TarifaKioskoHotel");

    // TarifasArticulos
    addRelation("TarifasArticulos", "AreasVenta", "ID_Tarifa1", alias: "tar1");
    addRelation("TarifasArticulos", "AreasVenta", "ID_Tarifa2", alias: "tar2");
    addRelation("TarifasArticulos", "AreasVenta", "ID_Tarifa3", alias: "tar3");
    addRelation("TarifasArticulos", "AreasVenta", "ID_TarifaPreciosTpvext", alias: "tarPrTpvEx");
    addRelation("TarifasArticulos", "AreasVenta", "ID_TarifaOfertasTpvext", alias: "tarOfTpvEx");
    addRelation("TarifasArticulos", "AreasVenta", "ID_TarifaComponentes", alias: "tarComponentes");
    addRelation("TarifasArticulos", "AreasVenta", "ID_Tarifa_Cli_Varios", alias: "tarCliVarios");
    addRelation("TarifasArticulos", "AreasVenta", "ID_Tarifa_Excepciones_Cli_Varios", alias: "tarExcCliVarios");

    addRelation("TarifasArticulos", "Data_Imp", "ID_TarifaArticulos");
    addRelation("TarifasArticulos", "DocCli", "ID_Tarifa", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("TarifasArticulos", "DocCli", "ID_TarifaExcepciones", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", alias: "tarExp");
    addRelation("TarifasArticulos", "DocHotel", "ID_Tarifa", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("TarifasArticulos", "Mesas", "ID_Tarifa");
    addRelation("TarifasArticulos", "Tarifas", "ID_TarifaArticulos", lCanBeDeleteManual: true);
    addRelation("TarifasArticulos", "Pdas", "ID_Tarifa");
    addRelation("TarifasArticulos", "Pdas", "ID_Tarifa2", alias: "tar2");
    addRelation("TarifasArticulos", "Pdas", "ID_Tarifa3", alias: "tar3");
    addRelation("TarifasArticulos", "Delegaciones", "ID_CliTarifaArticulosDefecto", alias: "tarCliArtDef");
    addRelation("TarifasArticulos", "Delegaciones", "ID_CliTarifaExcepcionesDefecto", alias: "tarCliExcDef");
    addRelation("TarifasArticulos", "Delegaciones", "ID_TarifaAux1", alias: "tarAux1");
    addRelation("TarifasArticulos", "Delegaciones", "ID_TarifaAux2", alias: "tarAux2");
    addRelation("TarifasArticulos", "Delegaciones", "ID_TarifaAux3", alias: "tarAux3");
    addRelation("TarifasArticulos", "Delegaciones", "ID_TarifaAux4", alias: "tarAux4");
    addRelation("TarifasArticulos", "Delegaciones", "ID_TarifaAux5", alias: "tarAux5");
    addRelation("TarifasArticulos", "TiendasVirtuales", "ID_TarifaArticulos");
    addRelation("TarifasArticulos", "HstDocHotel", "ID_Tarifa", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("TarifasArticulos", "AreasVenta", "ID_TarifaAlquilerNoDevuelto", alias: "tarAlquilerNoDev");
    addRelation("TarifasArticulos", "TarifasArticulos", "ID_TarifaPrecioBase");
    addRelation("TarifasArticulos", "AreasVenta", "ID_TarifaGestion", alias: "tarGestion");
    addRelation("TarifasArticulos", "ClientesX", "ID_Tarifa", selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX);
    addRelation("TarifasArticulos", "ClientesX", "ID_TarifaExcepciones",
        selectCanBeDel: "ClientesX.ID_Cliente, ClientesX.ID_Empresa", joinStr: cJoinClientesX, alias: "tarExcep");
    addRelation("TarifasArticulos", "TarifasArticulosX", "ID_TarifaArticulos",
        selectCanBeDel: "TarifasArticulosX.ID_TarifaArticulos, TarifasArticulos.Opciones",
        joinStr: cJoinTarifasArticulosX,
        lCanBeDeleteManual: true);
    addRelation("TarifasArticulos", "Webs", "ID_Tarifa");
    addRelation("TarifasArticulos", "Webs", "ID_TarifaExcepciones", alias: "tarExcep");
    addRelation("TarifasArticulos", "AreasVenta", "ID_TarifaVisorPrecios", alias: "tarVisor");
    addRelation("TarifasArticulos", "AreasVenta", "ID_TarifaExcepcionesVisorPrecios", alias: "tarExcepVisor");
    addRelation("TarifasArticulos", "CartaClientes", "ID_Tarifa");

    addRelation("TarifasArticulos", "PuestosX", "ID_TarifaWeb", selectCanBeDel: "ID_Puesto", alias: "tarWeb");
    addRelation("TarifasArticulos", "PuestosX", "ID_TarifaExcepcionesWeb", selectCanBeDel: "ID_Puesto", alias: "tarExcepWeb");

    // TarifasDoc
    addRelation("TarifasDoc", "TarifasDocX", "ID_TarifaDoc", lCanBeDeleteManual: true);
    addRelation("TarifasDoc", "TarifasArticulosX", "ID_TarifaDoc",
        selectCanBeDel: "TarifasArticulosX.ID_TarifaArticulos, TarifasArticulos.Opciones", joinStr: cJoinTarifasArticulosX);
    addRelation("TarifasDoc", "DocClix", "ID_TarifaDoc",
        selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix, lCanBeDeleteManual: true);

    // Tecnicos
    addRelation("Tecnicos", "OrdenesTrabajo", "ID_TecnicoRecepcion", alias: "tecRecep");

    cFiltro = "TecnicosRevisionesAverias.Tipo=${EnumTecnicosRevisionesAveriasTipo.averia.index}";
    addRelation("Tecnicos", "TecnicosRevisionesAverias", "ID_Tecnico",
        selectCanBeDel: "Averias.verialID, Averias.ID_Aparato, TecnicosRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinAveriasTecnicos);

    cFiltro = "TecnicosRevisionesAverias.Tipo=${EnumTecnicosRevisionesAveriasTipo.revision.index}";
    addRelation("Tecnicos", "TecnicosRevisionesAverias", "ID_Tecnico",
        selectCanBeDel: "Revisiones.verialID, Revisiones.ID_Aparato, TecnicosRevisionesAverias.Tipo",
        filtro: cFiltro,
        joinStr: cJoinRevisionesTecnicos);

    addRelation("Tecnicos", "DocCli", "ID_Tecnico", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Tecnicos", "DocClix", "ID_Tecnico", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("Tecnicos", "FabricacionX", "ID_Tecnico", selectCanBeDel: "Fabricacion.ID_FabricacionGrupo", joinStr: cJoinFabricacion);
    addRelation("Tecnicos", "FabricacionTareas", "ID_Tecnico");
    addRelation("Tecnicos", "PartesMedicos", "ID_Medico");
    addRelation("Tecnicos", "OrdenesTrabajo", "ID_TecnicoTrabajo", alias: "tecTrab");

    // TelepedidoOfertas
    addRelation("TelepedidoOfertas", "TelepedidoOfertasX", "ID_TelepedidoOfertas");

    // TiendasVirtuales
    addRelation("TiendasVirtuales", "Destinos", "ID_TiendaVirtual");

    // TipoHabitaciones
    addRelation("TipoHabitaciones", "DocHotelx", "ID_TipoHabitacion",
        selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("TipoHabitaciones", "Habitaciones", "ID_Tipo");
    addRelation("TipoHabitaciones", "Cfg_CentralReservasCargos", "ID_TipoHabitacion");
    addRelation("TipoHabitaciones", "HstDocHotelx", "ID_TipoHabitacion",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);

    // TPVExt_Cajas
    cFiltro = "Data_Imp.TipoOrigen=${EnumDataImpTipoOrigen.tpvexterno.index}";
    addRelation("Tpvext_Cajas", "Data_Imp", "ID_Origen", filtro: cFiltro);

    // TPVEXT_Cajas
    addRelation("Tpvext_Cajas", "Tpvext_Saldos", "ID_Caja", alias: "tpvExCaja");

    // TPVExt_Saldos
    addRelation("Tpvext_Saldos", "Tpvext_Saldos", "ID_Operacion", alias: "tpvExOp");

    // Transportistas
    addRelation("Transportistas", "Clientes", "ID_Transportista");
    addRelation("Transportistas", "Proveedores", "ID_Transportista");
    addRelation("Transportistas", "DocCli", "ID_Transportista", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Transportistas", "DocPro", "ID_Transportista", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Transportistas", "DocAlmacen", "ID_Transportista", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo");
    addRelation("Transportistas", "Pdas", "ID_Transportista");
    addRelation("Transportistas", "Delegaciones", "ID_TransportistaDefecto");
    addRelation("Transportistas", "DocHotel", "ID_Transportista", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("Transportistas", "HstDocHotel", "ID_Transportista", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Transportistas", "Logi_Formas", "ID_Transportista");
    addRelation("Transportistas", "Logi_Envios", "ID_Transportista");

    // Turnos
    addRelation("Turnos", "ReservasRest", "ID_Turno");

    // Ubicaciones
    addRelation("Ubicaciones_G", "Ocupantes", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Nombres", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Clientes", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Proveedores", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Fabricantes", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Personal", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Almacenes", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Transportistas", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "ContactosExternos", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Veterinarios", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Tecnicos", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Empresas", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "Delegaciones", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "OcupantesX", "ID_Ubicacion");
    addRelation("Ubicaciones_G", "HstOcupantesX", "ID_Ubicacion", lCanBeDeleteManual: true);

    // Usuarios
    addRelation("Usuarios_G", AppTablas.cPuestos, "ID_Usuario");
    addRelation("Usuarios_G", AppTablas.cUsuariosRespuestas, "ID_Usuario");
    addRelation("Usuarios_G", AppTablas.cMessenger, "ID_DeUsuario");
    addRelation("Usuarios_G", AppTablas.cMessengerX, "ID_Usuario");
    addRelation("Usuarios_G", "OrdenesTrabajo", "ID_Usuario");
    addRelation("Usuarios_G", "Arqueos", "ID_Usuario");
    addRelation("Usuarios_G", "OperacionesTPV", "ID_Usuario");
    addRelation("Usuarios_G", "Data_Imp", "ID_Usuario");
    addRelation("Usuarios_G", "DocCli", "ID_Usuario", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Usuarios_G", "DocClix", "ID_Usuario", selectCanBeDel: "DocCli.verialID, DocCli.Tipo", joinStr: cJoinDocClix);
    addRelation("Usuarios_G", "PuntosClientes", "ID_Usuario");
    addRelation("Usuarios_G", "DocHotel", "ID_Usuario", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc");
    addRelation("Usuarios_G", "DocHotelx", "ID_Usuario", selectCanBeDel: "DocHotel.verialID, DocHotel.TipoDoc", joinStr: cJoinDocHotelx);
    addRelation("Usuarios_G", "DocPro", "ID_Usuario", selectCanBeDel: "DocPro.verialID, DocPro.Tipo");
    addRelation("Usuarios_G", "InstalacionesX", "ID_Usuario");
    addRelation("Usuarios_G", "Mandatos", "ID_Usuario");
    addRelation("Usuarios_G", "ReservasRest", "ID_Usuario");
    addRelation("Usuarios_G", "Pdas", "ID_Usuario");
    addRelation("Usuarios_G", "DocAlmacen", "ID_Usuario", selectCanBeDel: "DocAlmacen.verialID, DocAlmacen.Tipo");
    addRelation("Usuarios_G", "UsuariosX", "ID_Usuario", selectCanBeDel: "ID_Usuario", lCanBeDeleteManual: true);
    addRelation("Usuarios_G", "Efectos", "ID_Usuario");
    addRelation("Usuarios_G", "Agenda", "ID_Usuario");
    addRelation("Usuarios_G", "Inventario", "ID_Usuario");
    addRelation("Usuarios_G", "InventarioX", "ID_Usuario");

    addRelation("Usuarios_G", "HstDocHotel", "ID_UsuarioProceso", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Usuarios_G", "HstDocHotel", "ID_Usuario", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Usuarios_G", "HstDocHotelx", "ID_Usuario",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);

    addRelation("Usuarios_G", "HstDocHotel", "ID_UsuarioProceso", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Usuarios_G", "HstDocHotel", "ID_Usuario", selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc");
    addRelation("Usuarios_G", "HstDocHotelx", "ID_Usuario",
        selectCanBeDel: "HstDocHotel.verialID, HstDocHotel.TipoDoc", joinStr: cJoinHstDocHotelx);
    addRelation("Usuarios_G", "CRM_Cfg", "ID_Usuario");
    addRelation("Usuarios_G", "Fianzas", "ID_Usuario");
    addRelation("Usuarios_G", "Conocimientos", "ID_Usuario");
    addRelation("Usuarios_G", "Conocimientos", "ID_Usuario2");
    addRelation("Usuarios_G", AppTablas.cIncidencias, "ID_Usuario");
    addRelation("Usuarios_G", AppTablas.cIncidencias, "ID_UsuarioAutorizado");
    addRelation("Usuarios_G", AppTablas.cStock, "ID_Usuario");
    addRelation("Usuarios_G", AppTablas.cChequeos, "ID_Usuario");
    addRelation("Usuarios_G", AppTablas.cExTrans, "ID_Usuario");

    // UsuariosPerfiles
    addRelation("UsuariosPerfiles_G", AppTablas.cUsuarios, "ID_Perfil");
    addRelation("UsuariosPerfiles_G", AppTablas.cUsuariosPerfilesX, "ID_Perfil", lCanBeDeleteManual: true);

    // Vehiculos
    addRelation("Vehiculos", "Transportistas", "ID_Vehiculo");
    addRelation("Vehiculos", "Logi_Envios", "ID_Vehiculo");
    addRelation("Vehiculos", "DocCli", "ID_Vehiculo", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");

    // Veterinarios
    addRelation("Veterinarios", "DocCli", "ID_Veterinario", selectCanBeDel: "DocCli.verialID, DocCli.Tipo");
    addRelation("Veterinarios", "Clientes", "ID_Veterinario", alias: "cliVet");
    addRelation("Veterinarios", "Delegaciones", "ID_CliVeterinarioDefecto");
    addRelation("Veterinarios", "Recetas", "ID_Veterinario");
    addRelation("Veterinarios", "Clientes", "ID_VeterinarioResponsable", alias: "cliVetResp");

    //Zonas
    addRelation("Zonas", "Clientes", "ID_Zona");

    return lstRelaciones;
  }

  void addRelation(String tablaDestino, String tablaOrigen, String campoID,
      {String selectCanBeDel = "verialid", String filtro = "", String joinStr = "", String alias = "", bool lCanBeDeleteManual = false}) {
    String tablaJoin = tablaDestino;
    if (tablaDestino.endsWith("_G")) {
      tablaJoin = tablaDestino.replaceAll("_G", "");
    } else if (tablaDestino.endsWith("_I")) {
      tablaJoin = tablaDestino.replaceAll("_I", "");
    } else if (tablaDestino.endsWith("_L")) {
      tablaJoin = tablaDestino.replaceAll("_L", "");
    }

    bool lEmpGrupo = false;
    if (tablaDestino.endsWith("_G") && !tablaOrigen.contains(".")) {
      lEmpGrupo = true;
    }

    DRowRelacionesCamposEtc row = DRowRelacionesCamposEtc();
    row.tablaJoin = tablaDestino;
    row.tablaOrigen = tablaOrigen.toLowerCase();
    row.tablaJoinDBEx = tablaJoin.toLowerCase();
    row.campoID = campoID.toLowerCase();
    row.camposSelectCanBeDelete = selectCanBeDel.toLowerCase();
    row.joins = joinStr.toLowerCase();
    row.filtroWhere = filtro.toLowerCase();
    row.lCanBeDeleteManual = lCanBeDeleteManual;
    row.isEmpresasGrupo = lEmpGrupo;
    String cAlias = alias;
    if (cAlias == "") {
      String cTmp = tablaDestino.toLowerCase().replaceAll("_","");
      cAlias = mapAlias[cTmp] ?? cTmp.substring(0,3);
    }
    row.alias = cAlias;
    lstRelaciones.add(row);
  }

  void getAliasTablas() {
    mapAlias["aeat"] = "aeat";
    mapAlias["aeatx"] = "aeatX";
    mapAlias["appblobs_i"] = "appBlobsImg";
    mapAlias["arboles"] = "arb";
    mapAlias["arbolesauxiliares"] = "arbAux";
    mapAlias["areascompra"] = "ac";
    mapAlias["areasventa"] = "av";
    mapAlias["articulos"] = "art";
    mapAlias["artlotes"] = "artLot";
    mapAlias["artrevisionesaverias"] = "artRevAv";
    mapAlias["balancesx"] = "balX";
    mapAlias["centrocostesarboles"] = "ccArb";
    mapAlias["centrocostesarbolesx"] = "ccArbX";
    mapAlias["centrocostesproyectos"] = "ccProy";
    mapAlias["centrocostesvalores"] = "ccVal";
    mapAlias["centrocostesdefecto"] = "ccDef";
    mapAlias["comisiones"] = "comi";
    mapAlias["comisionitas"] = "comiTas";
    mapAlias["contactosexternos"] = "contExt";
    mapAlias["ctasanuales"] = "ctasAn";
    mapAlias["cuentas"] = "ctas";
    mapAlias["cuentasbancarias"] = "ctasBan";
    mapAlias["cuentasespeciales"] = "ctasEsp";
    mapAlias["docalmacen"] = "docAlm";
    mapAlias["doccli"] = "dc";
    mapAlias["docclivalores"] = "dcVal";
    mapAlias["docclix"] = "dcX";
    mapAlias["dochotel"] = "dh";
    mapAlias["dochotelx"] = "dhX";
    mapAlias["docpro"] = "dp";
    mapAlias["docprovalores"] = "dpVal";
    mapAlias["docprox"] = "dpX";
    mapAlias["docsinli"] = "docSinli";
    mapAlias["docsinlix"] = "docSinliX";
    mapAlias["efectos"] = "efec";
    mapAlias["fabricacion"] = "fabN";
    mapAlias["fabricacioncfg"] = "fabCfg";
    mapAlias["fabricacionetapas"] = "fabEt";
    mapAlias["fabricaciongrupo"] = "fabGrp";
    mapAlias["fabricaciontareas"] = "fabTar";
    mapAlias["fabricantes"] = "fabTes";
    mapAlias["grupos"] = "grp";
    mapAlias["habitacionesprops"] = "habProps";
    mapAlias["hstdochotel"] = "hstDh";
    mapAlias["hstdochotelx"] = "hstDhX";
    mapAlias["logi_destinos"] = "logiDest";
    mapAlias["logi_envios"] = "logiEnv";
    mapAlias["logi_formas"] = "logiForm";
    mapAlias["metodospago"] = "metPag";
    mapAlias["perfiles"] = "perf";
    mapAlias["perfilescamposaux"] = "perfAux";
    mapAlias["personal"] = "pers";
    mapAlias["plazospago"] = "plazos";
    mapAlias["programas"] = "prg";
    mapAlias["proveedoresx"] = "proX";
    mapAlias["tarifahotel"] = "tarHot";
    mapAlias["tarifasarticulos"] = "tarArt";
    mapAlias["tarifasdoc"] = "tarDoc";
    mapAlias["tpvext_cajas"] = "tpvExCaj";
    mapAlias["tpvext_saldos"] = "tpvExSal";
    mapAlias["usuarios"] = "usr";
    mapAlias["logidestinos"] = "logiDes";
    mapAlias["logiformas"] = "logiFormas";
    mapAlias["logiformatos"] = "logiFormat";
    mapAlias["logiuds"] = "logiFormat";

  }
}

class DRowRelacionesCamposEtc {
  DRowRelacionesCamposEtc();
  late String tablaJoin, tablaOrigen, tablaJoinDBEx, campoID, camposSelectCanBeDelete, joins, filtroWhere, alias;
  late bool lCanBeDeleteManual, isEmpresasGrupo;
}
