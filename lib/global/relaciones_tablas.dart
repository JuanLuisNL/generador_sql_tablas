import 'package:generador_sql_tablas/global/utils.dart';

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
  static String cBancos = "bancos";
  static String cCajones = "cajones";
  static String cInformesCfg = "informescfg";
  static String cInformesCfgX = "informescfgx";
  static String cModificacionCfg = "modificacioncfg";
  static String cUbicaciones = "ubicaciones";
  static String cProvincias = "provincias";
  static String cPaises = "paises";
  static String cUsuarios = "usuarios";
  static String cUsuariosPerfiles = "usuariosperfiles";
  static String cUsuariosPerfilesX = "usuariosperfilesx";
  static String cDispositivos = "dispositivos";
  static String cXSettings = "xsettings";
  static String cMonedas = "monedas";
  static String cPuestos = "puestos";
  static String cGrupos = "grupos";
  static String cImpresoras = "impresoras";
  static String cLogFichas = "logfichas";
  static String cAgenda = "agenda";
  static String cComentarios = "comentarios";
  static String cPID = "pid";
  static String cCfgFondo = "cfg_fondo";
  static String cCfgFondoX = "cfg_fondox";
  static String cCfgMenu = "cfg_menu";
  static String cCfgMenuX = "cfg_menux";
  static String cLocks = "locks";
  static String cCfgBotonesFicha = "cfg_botonesficha";
  static String cIncidencias = "incidencias";
  static String cIncidenciasX = "incidenciasx";
  static String cStock = "stock";
  static String cStockNumSerie = "stocknumserie";
  static String cAppBlobs = "appblobs";
  static String cBlobs = "blobs";
  static String cGruposLicencia = "gruposlicencia";
  static String cIdiomaInformes = "idiomainformes";
  static String ccfgDispositivos = "cfgdispositivos";
  static String ccfgPuestos = "cfgpuestos";
  static String cUsuariosRespuestas = "usuariosrespuestas";
  static String cMessenger = "messenger";
  static String cMessengerX = "messengerx";
  static String cChequeos = "chequeos";
  static String cExTrans = "extrans";
}

class RelacionesTablas {
  List<DRowRelacionesCamposEtc> lstRelaciones = [];
  Map<String, String> mapAlias = {};
  List<String> lstTmp = [];

  List<DRowRelacionesCamposEtc>  init() {
    getAliasTablas();


//AEAT
    addRelation("aeat", "aeatx", "id_a_eat");

//Agenda
    addRelation("agenda", "agenda", "id_padre");

//Almacenes
    addRelation("almacenes", "averias", "id_almacen");
    addRelation("almacenes", "mantenimientos", "id_almacen");
    addRelation("almacenes", "revisiones", "id_almacen");
    addRelation("almacenes", "areas_venta", "id_almacen");
    addRelation("almacenes", "art_almacenes", "id_almacen");
    addRelation("almacenes", "art_stocks", "id_almacen");
    addRelation("almacenes", "estantes", "id_almacen");
    addRelation("almacenes", "mensajes", "id_ficha");
    addRelation("almacenes", "data_imp", "id_almacen");
    addRelation("almacenes", "doc_cli", "id_almacen");
    addRelation("almacenes", "doc_clix", "id_almacen");
    addRelation("almacenes", "doc_pro", "id_almacen");
    addRelation("almacenes", "doc_prox", "id_almacen");
    addRelation("almacenes", "pdas", "id_almacen");
    addRelation("almacenes", "tpvext_cajas", "id_almacen");
    addRelation("almacenes", "doc_almacen", "id_almacen_origen");
    addRelation("almacenes", "doc_almacen", "id_almacen_destino");
    addRelation("almacenes", "puestosx", "id_almacen_unico");
    addRelation("almacenes", "areas_compra", "id_almacen");
    addRelation("almacenes", "doc_hotel", "id_almacen");
    addRelation("almacenes", "doc_hotelx", "id_almacen");
    addRelation("almacenes", "inventario", "id_almacen");
    addRelation("almacenes", "fabricacion_grupo", "id_almacen_origen");
    addRelation("almacenes", "fabricacion_grupo", "id_almacen_destino");
    addRelation("almacenes", "fabricacion", "id_almacen_origen");
    addRelation("almacenes", "fabricacion", "id_almacen_destino");
    addRelation("almacenes", "hst_doc_hotel", "id_almacen");
    addRelation("almacenes", "hst_doc_hotelx", "id_almacen");
    addRelation("almacenes", "pdas", "id_almacen_pedidos");
    addRelation("almacenes", "doc_pro", "id_almacen_origen");
    addRelation("almacenes", "clientes", "id_almacen_urdi");
    addRelation("almacenes", AppTablas.cStock, "id_almacen"); // TODO ??

//Aparatos
    addRelation("aparatos", "averias", "id_aparato");
    addRelation("aparatos", "ordenes_trabajo", "id_aparato");
    addRelation("aparatos", "revisiones", "id_aparato");
    addRelation("aparatos", "campos_auxiliares", "id_origen");
    addRelation("aparatos", "rutas_ficheros", "id_ficha");
    addRelation("aparatos", "fabricacionx", "id_aparato");
    addRelation("aparatos", "doc_clix", "id_aparato");

//AppBlobs_I
    addRelation("app_blobs", "empresas", "id_s_ii_certificado");
    addRelation("app_blobs", "empresas", "id_certificado_recetas");
    addRelation("app_blobs", "veterinarios", "id_certificado");
    addRelation("app_blobs", "delegaciones", "id_certificado_pdf");

//Arboles
    addRelation("arboles", "arboles", "id_padre");
    addRelation("arboles", "art_compuestos", "id_categoria");
    addRelation("arboles", "articulos", "id_categoria");
    addRelation("arboles", "clientes", "id_grupo");
    addRelation("arboles", "grupos_comisionesx", "id_categoria");
    addRelation("arboles", "data_impx", "id_categoria");
    addRelation("arboles", "doc_cli", "id_tipo_contingente");
    addRelation("arboles", "doc_hotel", "id_tipo_contingente");
    addRelation("arboles", "proveedores", "id_grupo");
    addRelation("arboles", "tarifas", "id_categoria");
    addRelation("arboles", "cfg_central_reservas", "id_tipo_contingente");
    addRelation("arboles", "centro_costes_defecto", "id_categoria");
    addRelation("arboles", "personal", "id_grupo");
    addRelation("arboles", "centro_costes_defecto", "id_grupo_proveedores");
    addRelation("arboles", "centro_costes_defecto", "id_grupo_personal");
    addRelation("arboles", "hst_doc_hotel", "id_tipo_contingente");
    addRelation("arboles", "clientes", "id_tipo_contingente");
    addRelation("arboles", "tarifas_docx", "id_categoria");
    addRelation("arboles", "inmovilizado", "id_categoria");
    addRelation("arboles", "articulos", "id_categoria_web");
    addRelation("arboles", "categorias_de", "id_categoria");
    addRelation("arboles", "articulos", "id_categoria_web2");
    addRelation("arboles", "articulos", "id_categoria_web3");
    addRelation("arboles", "articulos", "id_categoria_web4");
    addRelation("arboles", "cfg_central_reservas_clientes_agencias", "id_tipo_contingente");

//ArbolesAuxiliares
    addRelation("arboles_auxiliares", "campos_auxiliares", "id_arbol01");
    addRelation("arboles_auxiliares", "campos_auxiliares", "id_arbol02");
    addRelation("arboles_auxiliares", "campos_auxiliares", "id_arbol03");
    addRelation("arboles_auxiliares", "campos_auxiliares", "id_arbol04");
    addRelation("arboles_auxiliares", "campos_auxiliares", "id_arbol05");
    addRelation("arboles_auxiliares", "arboles_auxiliares", "id_padre");

//AreasCompra
    addRelation("areas_compra", "puestosx", "id_area_compra");
    addRelation("areas_compra", "doc_pro", "id_area_compra");
    addRelation("areas_compra", "doc_prox", "id_area_compra");
    addRelation("areas_compra", "pdas", "id_area_compra");

//AreasVenta
    addRelation("areas_venta", "aparatos", "id_area_venta");
    addRelation("areas_venta", "articulos", "id_area_venta");
    addRelation("areas_venta", "data_imp", "id_area_venta");
    addRelation("areas_venta", "doc_cli", "id_area_venta");
    addRelation("areas_venta", "doc_clix", "id_area_venta");
    addRelation("areas_venta", "doc_hotel", "id_area_venta");
    addRelation("areas_venta", "doc_hotelx", "id_area_venta");
    addRelation("areas_venta", "habitaciones", "id_area_venta");
    addRelation("areas_venta", "mesas", "id_area_venta");
    addRelation("areas_venta", "reservas_rest", "id_area_venta");
    addRelation("areas_venta", "turnos", "id_area_venta");
    addRelation("areas_venta", "pdas", "id_area_venta");
    addRelation("areas_venta", "tpvext_cajas", "id_area_venta");
    addRelation("areas_venta", "cfg_central_reservas", "id_area_venta");
    addRelation("areas_venta", "puestosx", "id_area_venta1");
    addRelation("areas_venta", "puestosx", "id_area_venta2");
    addRelation("areas_venta", "puestosx", "id_area_venta3");
    addRelation("areas_venta", "puestosx", "id_area_venta4");
    addRelation("areas_venta", "puestosx", "id_area_venta5");
    addRelation("areas_venta", "partes_reparaciones", "id_area_venta");
    addRelation("areas_venta", "tiendas_virtuales", "id_area_venta");
    addRelation("areas_venta", "cupos", "id_area_venta");
    addRelation("areas_venta", "hst_doc_hotel", "id_area_venta");
    addRelation("areas_venta", "hst_doc_hotelx", "id_area_venta");
    addRelation("areas_venta", "numeraciones", "id_area_venta");
    addRelation("areas_venta", "partes_medicos", "id_area_venta");
    addRelation("areas_venta", "mantenimientos", "id_area_venta");
    addRelation("areas_venta", "bonos_acceso", "id_area_venta");
    addRelation("areas_venta", "webs", "id_area_venta");
    addRelation("areas_venta", "basculas_tpv", "id_area_venta");

//Arqueos
    addRelation("arqueos", "arqueosx", "id_arqueo");
    addRelation("arqueos", "operaciones_tpv", "id_arqueo");
    addRelation("arqueos", "doc_clix", "id_arqueo");
    addRelation("arqueos", "doc_hotelx", "id_arqueo");
    addRelation("arqueos", "efectos", "id_arqueo");
    addRelation("arqueos", "hst_doc_hotelx", "id_arqueo");
    addRelation("arqueos", "fianzas", "id_arqueo_constitucion");
    addRelation("arqueos", "fianzas", "id_arqueo_cancelacion");

//Articulos
    addRelation("articulos", "mantenimientos", "id_articulo");
    addRelation("articulos", "art_revisiones_averias", "id_articulo");
    addRelation("articulos", "art_revisiones_averias", "id_articulo");
    addRelation("articulos", "areas_venta", "id_cubierto");
    addRelation("articulos", "areas_venta", "id_cargo_sup_individual");
    addRelation("articulos", "areas_venta", "id_cargo_sup_estancia_corta");
    addRelation("articulos", "areas_venta", "id_cargo_sup_extra1");
    addRelation("articulos", "areas_venta", "id_cargo_sup_extra2");
    addRelation("articulos", "areas_venta", "id_cargo_sup_extra3");
    addRelation("articulos", "art_compuestos", "id_compuesto");
    addRelation("articulos", "art_compuestos", "id_articulo");
    addRelation("articulos", "art_codigos", "id_articulo");
    addRelation("articulos", "articulos", "id_agrupado");
    addRelation("articulos", "articulos", "id_articulo_stock");
    addRelation("articulos", "art_ibic", "id_articulo");
    addRelation("articulos", "art_proveedor", "id_articulo");
    addRelation("articulos", "art_almacenes", "id_articulo");
    addRelation("articulos", "art_stocks", "id_articulo");
    addRelation("articulos", "autores", "id_articulo");
    addRelation("articulos", "estantesx", "id_articulo");
    addRelation("articulos", "grupos_comisionesx", "id_articulo");
    addRelation("articulos", "data_impx", "id_origen");
    addRelation("articulos", "doc_clix", "id_origen");
    addRelation("articulos", "doc_hotelx", "id_origen");
    addRelation("articulos", "doc_hotel_xprevision", "id_cargo");
    addRelation("articulos", "doc_prox", "id_origen");
    addRelation("articulos", "tipo_habitaciones", "id_cargo_defecto");
    addRelation("articulos", "art_lotesx", "id_articulo");
    addRelation("articulos", "carta_articulos", "id_articulo");
    addRelation("articulos", "tarifas", "id_articulo");
    addRelation("articulos", "tpvext_secciones", "id_articulo");
    addRelation("articulos", "cfg_central_reservas", "id_cargo_desayuno");
    addRelation("articulos", "cfg_central_reservas", "id_cargo_media_pension");
    addRelation("articulos", "cfg_central_reservas", "id_cargo_pension_completa");
    addRelation("articulos", "cfg_central_reservas", "id_cargo_todo_incluido");
    addRelation("articulos", "cfg_central_reservas", "id_cargo_uso_individual");
    addRelation("articulos", "cfg_central_reservas", "id_cargo_cama_supletoria");
    addRelation("articulos", "cfg_central_reservas_cargos", "id_cargo");
    addRelation("articulos", "tecnicos", "id_articulo_trab");
    addRelation("articulos", "tecnicos", "id_articulo_desp");
    addRelation("articulos", "doc_almacenx", "id_origen");
    addRelation("articulos", "art_delegaciones", "id_articulo");
    addRelation("articulos", "doc_hotelx", "id_cargo_sup1");
    addRelation("articulos", "doc_hotelx", "id_cargo_sup2");
    addRelation("articulos", "doc_hotelx", "id_cargo_sup3");
    addRelation("articulos", "menu_rest", "id_articulo");
    addRelation("articulos", "menu_restx", "id_articulo");
    addRelation("articulos", "tarifa_hotel", "id_cargo_defecto");
    addRelation("articulos", "salones", "id_articulo");
    addRelation("articulos", "menu_eventos", "id_articulo");
    addRelation("articulos", "menu_eventosx", "id_articulo");
    addRelation("articulos", "inventariox", "id_articulo");
    addRelation("articulos", "partes_reparacionesx", "id_articulo");
    addRelation("articulos", "centro_costes_defecto", "id_articulo");
    addRelation("articulos", "salonesx", "id_articulo");
    addRelation("articulos", "campos_auxiliares", "id_origen");
    addRelation("articulos", "rutas_ficheros", "id_ficha");
    addRelation("articulos", "delegaciones", "id_articulo_centralita");
    addRelation("articulos", "fabricacion", "id_articulo");
    addRelation("articulos", "fabricacionx", "id_articulo");
    addRelation("articulos", "mesas", "id_cubierto");
    addRelation("articulos", "hst_doc_hotelx", "id_origen");
    addRelation("articulos", "hst_doc_hotelx", "id_cargo_sup1");
    addRelation("articulos", "hst_doc_hotelx", "id_cargo_sup2");
    addRelation("articulos", "hst_doc_hotelx", "id_cargo_sup3");
    addRelation("articulos", "articulos", "id_articulo_eco_tasas");
    addRelation("articulos", "tarifas_docx", "id_articulo");
    addRelation("articulos", "logi_unidadesx", "id_articulo");
    addRelation("articulos", "articulos", "id_articulo_envase");
    addRelation("articulos", "suscripciones", "id_primer_numero");
    addRelation("articulos", "cfg_central_reservas_cargos_xpersona", "id_cargo");
    addRelation("articulos", "coleccionables", "id_libro");
    addRelation("articulos", "coleccionables", "id_articulo");
    addRelation("articulos", "art_similares", "id_articulo");
    addRelation("articulos", "tareas_tecnicos", "id_articulo");
    addRelation("articulos", "carta_clientes_articulos", "id_articulo");
    addRelation("articulos", "art_ingredientes", "id_articulo");
    addRelation("articulos", "art_ingredientes", "id_ingrediente");
    addRelation("articulos", "areas_venta", "id_art_gastos_envio_telepedido");
    addRelation("articulos", "areas_venta", "id_art_bolsa_telepedido");
    addRelation("articulos", "telepedido_ofertasx", "id_articulo");
    addRelation("articulos", "puestosx", "id_articulo_portes_web");
    addRelation("articulos", "art_visibles_xdelegacion", "id_articulo");
    addRelation("articulos", AppTablas.cStock, "id_articulo");   // TODO ??

//ArtLotes
    addRelation("art_lotes", "art_lotesx", "id_art_lotes");

//ArtRevisionesAverias
    addRelation("art_revisiones_averias", "art_revisiones_averias", "id_art_revisiones_averias");
    addRelation("art_revisiones_averias", "art_revisiones_averias", "id_art_revisiones_averias");
    addRelation("art_revisiones_averias", "numeros_serie", "id_contenido");

//ArtStocks
    addRelation("art_stocks", "art_serie", "id_stocks");
    addRelation("art_stocks", "art_serie_uds_aux", "id_stocks");

//Asientos
    addRelation("asientos", "apuntes", "id_asiento");
    addRelation("asientos", "comisiones", "id_asiento");
    addRelation("asientos", "doc_cli", "id_asiento");
    addRelation("asientos", "doc_pro", "id_asiento");
    addRelation("asientos", "nominas", "id_asiento");
    addRelation("asientos", "efectos", "id_asiento_formalizacion");
    addRelation("asientos", "efectos", "id_asiento_al_banco");
    addRelation("asientos", "efectos", "id_asiento_rechazo");
    addRelation("asientos", "efectos", "id_asiento_dudoso_cobro");
    addRelation("asientos", "efectos", "id_asiento_incobrable");
    addRelation("asientos", "efectos", "id_asiento_pagado");
    addRelation("asientos", "efectos", "id_asiento_agrupacion");
    addRelation("asientos", "remesas_asientos", "id_asiento");
    addRelation("asientos", "remesas", "id_asiento");
    addRelation("asientos", "fianzas", "id_asiento_constitucion");
    addRelation("asientos", "fianzas", "id_asiento_cancelacion");

//Averias
    addRelation("averias", "ordenes_trabajo", "id_averia");
    addRelation("averias", "art_revisiones_averias", "id_averia_revision");
    addRelation("averias", "tecnicos_revisiones_averias", "id_averia_revision");

//Balances
    addRelation("balances", "balances", "id_padre");
    addRelation("balances", "balancesx", "id_balance");
    addRelation("balances", "balancesx", "id_sub_balance");

//Bancos
    addRelation("bancos", "cuentas_bancarias", "id_banco");

//BonosAcceso
    addRelation("bonos_acceso", "bonos_accesox", "id_bono_acceso");

//Cajones
    addRelation("cajones", "areas_venta", "id_cajon");
    addRelation("cajones", "arqueos", "id_cajon");
    addRelation("cajones", "operaciones_tpv", "id_cajon");
    addRelation("cajones", "efectos", "id_cajon");
    addRelation("cajones", "puestosx", "id_cajon");
    addRelation("cajones", "usuariosx", "id_cajon");
    addRelation("cajones", "fianzas", "id_cajon_constitucion");
    addRelation("cajones", "fianzas", "id_cajon_cancelacion");
    addRelation("cajones", "pdas", "id_cajon");

//CartaClientes
    addRelation("carta_clientes", "carta_clientes_grupos", "id_carta_clientes");
    addRelation("carta_clientes", "puestosx", "id_carta_autopedido");

//CartaClientes_Grupos
    addRelation("carta_clientes_grupos", "carta_clientes_articulos", "id_carta_clientes_grupo");

//CartaGrupos
    addRelation("carta_grupos", "carta_articulos", "id_grupo");

//CentroCostes_Arboles
    addRelation("centro_costes_arboles", "centro_costes_proyectos", "id_arbol");
    addRelation("centro_costes_arboles", "centro_costes_arbolesx", "id_arbol");

//CentroCostes_ArbolesX
    addRelation("centro_costes_arbolesx", "centro_costes_arbolesx", "id_padre");
    addRelation("centro_costes_arbolesx", "centro_costes_arbolesx", "id_arbol_xgeneral");
    addRelation("centro_costes_arbolesx", "centro_costes_defecto", "id_arbolx");
    addRelation("centro_costes_arbolesx", "centro_costes_valores", "id_arbolx");

//CentroCostes_Proyectos
    addRelation("centro_costes_proyectos", "centro_costes_defecto", "id_proyecto");
    addRelation("centro_costes_proyectos", "centro_costes_valores", "id_proyecto");

//CentroInformes
    addRelation("centro_informes", "centro_informesx", "id_centro_informes");

//Cfg_CentralReservas
    addRelation("cfg_central_reservas", "cfg_central_reservas_cargos", "id_cfg_central_reservas");
    addRelation("cfg_central_reservas", "cfg_central_reservas_cargos_xpersona", "id_cfg_central_reservas");
    addRelation("cfg_central_reservas", "cfg_central_reservas_clientes_agencias", "id_cfg_central_reservas");
    addRelation("cfg_central_reservas", "cfg_central_reservas_sincronizacion_auto", "id_cfg_central_reservas");

//Cfg_FicheroPolicia
    addRelation("cfg_fichero_policia", "delegaciones", "id_cfg_fichero_policia");
    addRelation("cfg_fichero_policia", "areas_venta", "id_cfg_fichero_policia");
    addRelation("cfg_fichero_policia", "habitaciones", "id_cfg_fichero_policia");

//Cfg_Fondo
    addRelation("cfg_fondo", AppTablas.cCfgFondoX, "id_cfg_fondo");
    addRelation("cfg_fondo", AppTablas.cUsuarios, "id_cfg_fondo");

//Cfg_Menu
    addRelation("cfg_menu", AppTablas.cCfgMenuX, "id_cfg_menu");
    addRelation("cfg_menu", AppTablas.cUsuarios, "id_cfg_menu");

//Clientes
    addRelation("clientes", "mantenimientos", "id_cliente_atendido");
    addRelation("clientes", "mantenimientos", "id_cliente_facturacion");
    addRelation("clientes", "areas_venta", "id_cliente_defecto");
    addRelation("clientes", "cuentas_bancarias", "id_ficha");
    addRelation("clientes", "clientes", "id_ficha_fiscal");
    addRelation("clientes", "clientes", "id_ficha_varios");
    addRelation("clientes", "clientes", "id_agencia");
    addRelation("clientes", "mensajes", "id_ficha");
    addRelation("clientes", "data_imp", "id_emisor");
    addRelation("clientes", "data_imp", "id_titular_doc");
    addRelation("clientes", "doc_cli", "id_cliente");
    addRelation("clientes", "doc_cli", "id_reservador");
    addRelation("clientes", "doc_cli", "id_cliente_agencia");
    addRelation("clientes", "doc_clix", "id_reservador");
    addRelation("clientes", "doc_clix", "id_cliente_agencia");
    addRelation("clientes", "puntos_clientes", "id_cliente");
    addRelation("clientes", "doc_hotel", "id_cliente");
    addRelation("clientes", "doc_hotel", "id_reservador");
    addRelation("clientes", "doc_hotelx", "id_cliente");
    addRelation("clientes", "doc_hotelx", "id_quien_paga");
    addRelation("clientes", "cupos", "id_cliente");
    addRelation("clientes", "instalaciones", "id_cliente");
    addRelation("clientes", "instalaciones", "id_vendedor");
    addRelation("clientes", "instalaciones", "id_mayorista");
    addRelation("clientes", "nombres", "id_ficha");
    addRelation("clientes", "mandatos", "id_cliente");
    addRelation("clientes", "reservas_rest", "id_cliente");
    addRelation("clientes", "tarifa_hotel_clientes", "id_cliente");
    addRelation("clientes", "tpvext_saldos", "id_cliente");
    addRelation("clientes", "aparatos", "id_cliente");
    addRelation("clientes", "delegaciones", "id_cliente_varios");
    addRelation("clientes", "ocupantesx", "id_cliente");
    addRelation("clientes", "agenda", "id_cliente");
    addRelation("clientes", "campos_auxiliares", "id_origen");
    addRelation("clientes", "campos_auxiliares", "id_origen");
    addRelation("clientes", "rutas_ficheros", "id_ficha");
    addRelation("clientes", "fabricacion_grupo", "id_cliente");
    addRelation("clientes", "doc_cli", "id_remitente_cliente");
    addRelation("clientes", "doc_cli", "id_envio_cliente");
    addRelation("clientes", "hst_doc_hotel", "id_cliente");
    addRelation("clientes", "hst_doc_hotel", "id_reservador");
    addRelation("clientes", "hst_doc_hotelx", "id_cliente");
    addRelation("clientes", "hst_doc_hotelx", "id_quien_paga");
    addRelation("clientes", "hst_ocupantesx", "id_cliente");
    addRelation("clientes", "partes_medicos", "id_cliente");
    addRelation("clientes", "clientes", "id_receptor_efactura");
    addRelation("clientes", "clientes", "id_pagador_efactura");
    addRelation("clientes", "clientes", "id_contable_efactura");
    addRelation("clientes", "objetos_perdidos", "id_cliente_encontrado");
    addRelation("clientes", "objetos_perdidos", "id_cliente_reclamado");
    addRelation("clientes", "bonos_acceso", "id_cliente");
    addRelation("clientes", "clientesx", "id_cliente");
    addRelation("clientes", "doc_almacen", "id_cliente");
    addRelation("clientes", "suscripciones", "id_cliente");
    addRelation("clientes", "cfg_central_reservas_clientes_agencias", "id_cliente");
    addRelation("clientes", "categorias_de", "id_quien");
    addRelation("clientes", "carta_clientes", "id_cliente");
    addRelation("clientes", "obras", "id_cliente");

//Coleccionables
    addRelation("coleccionables", "articulos", "id_coleccionable");

//Comisiones
    addRelation("comisiones", "asientos", "id_documento");
    addRelation("comisiones", "comisionesx", "id_comisiones");
    addRelation("comisiones", "comisionesx", "id_comis_retro");
    addRelation("comisiones", "comisionesx", "id_comis_confirm");

//Comisionistas
    addRelation("comisionistas", "mantenimientos", "id_agente");
    addRelation("comisionistas", "comisiones", "id_comisionista");
    addRelation("comisionistas", "comisionesx", "id_comisionista");
    addRelation("comisionistas", "doc_hotel", "id_agente1");
    addRelation("comisionistas", "doc_hotel", "id_agente2");
    addRelation("comisionistas", "doc_hotel", "id_agente3");
    addRelation("comisionistas", "doc_cli", "id_agente1");
    addRelation("comisionistas", "doc_cli", "id_agente2");
    addRelation("comisionistas", "doc_cli", "id_agente3");
    addRelation("comisionistas", "doc_clix", "id_agente1");
    addRelation("comisionistas", "doc_clix", "id_agente2");
    addRelation("comisionistas", "doc_clix", "id_agente3");
    addRelation("comisionistas", "doc_hotelx", "id_agente1");
    addRelation("comisionistas", "doc_hotelx", "id_agente2");
    addRelation("comisionistas", "doc_hotelx", "id_agente3");
    addRelation("comisionistas", "pdas", "id_agente1");
    addRelation("comisionistas", "pdas", "id_agente2");
    addRelation("comisionistas", "usuariosx", "id_agente_atencion");
    addRelation("comisionistas", "delegaciones", "id_agente_defecto");
    addRelation("comisionistas", "cupos", "id_central_reservas");
    addRelation("comisionistas", "hst_doc_hotel", "id_agente1");
    addRelation("comisionistas", "hst_doc_hotel", "id_agente2");
    addRelation("comisionistas", "hst_doc_hotel", "id_agente3");
    addRelation("comisionistas", "hst_doc_hotelx", "id_agente1");
    addRelation("comisionistas", "hst_doc_hotelx", "id_agente2");
    addRelation("comisionistas", "hst_doc_hotelx", "id_agente3");
    addRelation("comisionistas", "clientesx", "id_agente1");
    addRelation("comisionistas", "clientesx", "id_agente2");
    addRelation("comisionistas", "clientesx", "id_agente3");
    addRelation("comisionistas", "comisionistasx", "id_comisionista");

//Conocimientos
    addRelation("conocimientos", "conocimientos", "id_duplicado");
    addRelation("conocimientos", "conocimientosx", "id_conocimientos");

//ContactosExternos
    addRelation("contactos_externos", "doc_cli", "id_contacto_externo");
    addRelation("contactos_externos", "doc_clix", "id_contacto_externo");
    addRelation("contactos_externos", "clientes", "id_contacto_externo");
    addRelation("contactos_externos", "aparatos", "id_contacto_externo");

//CtasAnuales
    addRelation("ctas_anuales", "ctas_anuales_celdas", "id_cta_anual");
    addRelation("ctas_anuales", "ctas_anuales_claves", "id_cta_anual");

//Cuentas
    addRelation("cuentas", "apuntes", "id_cuenta");
    addRelation("cuentas", "apuntes", "id_contrapartida");
    addRelation("cuentas", "conceptos_contables", "id_cuenta");
    addRelation("cuentas", "conceptos_contables", "id_contrapartida");
    addRelation("cuentas", "cuentas_bancarias", "id_cuenta");
    addRelation("cuentas", "clientes", "id_cuenta");
    addRelation("cuentas", "clientes", "id_cuenta_ingresos");
    addRelation("cuentas", "cuentas_especiales", "id_cta_gastos");
    addRelation("cuentas", "cuentas_especiales", "id_cta_ingresos");
    addRelation("cuentas", "cuentas_especiales", "id_cta_existencias");
    addRelation("cuentas", "presupuestos", "id_cuenta");
    addRelation("cuentas", "doc_cli_valores", "id_cuenta");
    addRelation("cuentas", "doc_pro_valores", "id_cuenta");
    addRelation("cuentas", "retenciones", "id_cta_hpdeudora");
    addRelation("cuentas", "retenciones", "id_cta_hpacreedora");
    addRelation("cuentas", "inmovilizado", "id_cta_inmovilizado");
    addRelation("cuentas", "inmovilizado", "id_cta_dotacion");
    addRelation("cuentas", "inmovilizado", "id_cta_acumulado");
    addRelation("cuentas", "metodos_pago", "id_cuenta");
    addRelation("cuentas", "metodos_pago", "id_alt_cuenta");
    addRelation("cuentas", "metodos_pago", "id_cta_gastos");
    addRelation("cuentas", "nominas", "id_cta_indemnizaciones");
    addRelation("cuentas", "nominas", "id_cta_prestaciones_ss");
    addRelation("cuentas", "nominas", "id_cta_retencion_ss");
    addRelation("cuentas", "nominas", "id_cta_retencion_ssempresa");
    addRelation("cuentas", "nominas", "id_cta_creditos_lp");
    addRelation("cuentas", "nominas", "id_cta_creditos_cp");
    addRelation("cuentas", "nominas", "id_cta_en_especie");
    addRelation("cuentas", "nominas", "id_cta_ssempresa");
    addRelation("cuentas", "personal", "id_cta_pendiente");
    addRelation("cuentas", "personal", "id_cta_anticipos");
    addRelation("cuentas", "personal", "id_cta_salarios");
    addRelation("cuentas", "proveedores", "id_cuenta");
    addRelation("cuentas", "proveedores", "id_cuenta_gastos");
    addRelation("cuentas", "prevision", "id_cuenta");
    addRelation("cuentas", "metodos_pago", "id_cta_dto_efectos");
    addRelation("cuentas", "cuentas_bancarias", "id_cuenta_dto_efectos");
    addRelation("cuentas", "nominas", "id_cta_otros_devengos");
    addRelation("cuentas", "nominas", "id_cta_otras_deducciones");
    addRelation("cuentas", "fianzas", "id_cta_fianzas");
    addRelation("cuentas", "fianzas", "id_cta_ingresos");
    addRelation("cuentas", "fianzasx", "id_cta_fianzas");
    addRelation("cuentas", "fianzasx", "id_cta_ingresos");
    addRelation("cuentas", "cuentas_especiales", "id_cta_socios_ingresos");
    addRelation("cuentas", "cuentas_especiales", "id_cta_socios_gastos");

//CuentasBancarias
    addRelation("cuentas_bancarias", "metodos_pago", "id_cta_bancaria");
    addRelation("cuentas_bancarias", "nombres", "id_ficha");
    addRelation("cuentas_bancarias", "nominas", "id_cuenta_bancaria");
    addRelation("cuentas_bancarias", "mandatos", "id_cta_cliente");
    addRelation("cuentas_bancarias", "efectos", "id_cuenta_bancaria");

//CuentasEmail
    addRelation("cuentas_email", "usuariosx", "id_cuenta_email");

//CuentasEspeciales
    addRelation("cuentas_especiales", "areas_venta", "id_cuenta_especial");
    addRelation("cuentas_especiales", "articulos", "id_cuenta_especial");
    addRelation("cuentas_especiales", "data_impx", "id_cuenta_especial");

//Cupos
    addRelation("cupos", "cuposx", "id_cupo");
    addRelation("cupos", "tarifa_hotel", "id_cupo");
    addRelation("cupos", "doc_hotelx", "id_cupo");
    addRelation("cupos", "hst_doc_hotelx", "id_cupo");

//Data_Imp
    addRelation("data_imp", "data_impx", "id_data_imp");

//Data_ImpX
    addRelation("data_impx", "data_imp_x_detalle", "id_data_impx");

//Delegaciones
    addRelation("delegaciones", "puestosx", "id_delegacion");
    addRelation("delegaciones", "delegaciones", "id_ficha_principal");
    addRelation("delegaciones", "aparatos", "id_delegacion");
    addRelation("delegaciones", "mantenimientos", "id_delegacion");
    addRelation("delegaciones", "art_lotes", "id_delegacion");
    addRelation("delegaciones", "carta_grupos", "id_delegacion");
    addRelation("delegaciones", "contactos_externos", "id_delegacion");
    addRelation("delegaciones", "grupos_comisiones", "id_delegacion");
    addRelation("delegaciones", "itpv_settings", "id_delegacion");
    addRelation("delegaciones", "tarifa_hotel", "id_delegacion");
    addRelation("delegaciones", "tecnicos", "id_delegacion");
    addRelation("delegaciones", "transportistas", "id_delegacion");
    addRelation("delegaciones", "vehiculos", "id_delegacion");
    addRelation("delegaciones", "veterinarios", "id_delegacion");
    addRelation("delegaciones", "zonas", "id_delegacion");
    addRelation("delegaciones", "areas_venta", "id_delegacion");
    addRelation("delegaciones", "areas_compra", "id_delegacion");
    addRelation("delegaciones", "art_delegaciones", "id_delegacion");
    addRelation("delegaciones", "tarifas_articulos", "id_delegacion");
    addRelation("delegaciones", "agenda", "id_delegacion");
    addRelation("delegaciones", "partes_reparaciones", "id_delegacion");
    addRelation("delegaciones", "salones", "id_delegacion");
    addRelation("delegaciones", "almacenes", "id_delegacion");
    addRelation("delegaciones", "fabricacion_grupo", "id_delegacion");
    addRelation("delegaciones", "centro_costes_proyectos", "id_delegacion");
    addRelation("delegaciones", "doc_pro", "id_delegacion");
    addRelation("delegaciones", "personal", "id_delegacion");
    addRelation("delegaciones", "operaciones_tpv", "id_delegacion");
    addRelation("delegaciones", "efectos", "id_delegacion");
    addRelation("delegaciones", "doc_cli", "id_delegacion");
    addRelation("delegaciones", "grupos_series", "id_delegacion");
    addRelation("delegaciones", "doc_hotel", "id_delegacion");
    addRelation("delegaciones", "hst_doc_hotel", "id_delegacion");
    addRelation("delegaciones", "inmovilizado", "id_delegacion");
    addRelation("delegaciones", "art_proveedor", "id_delegacion");
    addRelation("delegaciones", "cajones", "id_delegacion");
    addRelation("delegaciones", "fianzas", "id_delegacion");
    addRelation("delegaciones", "objetos_perdidos", "id_delegacion");
    addRelation("delegaciones", "tpvext_secciones", "id_delegacion");
    addRelation("delegaciones", "tarifas_doc", "id_delegacion");
    addRelation("delegaciones", "metodos_pago", "id_delegacion");
    addRelation("delegaciones", "fabricacion_etapas", "id_delegacion");
    addRelation("delegaciones", "art_visibles_xdelegacion", "id_delegacion");
    addRelation("delegaciones", "centro_informes", "id_delegacion");

//Dispositivos
    addRelation("dispositivos", AppTablas.cImpresoras, "id_dispositivo");
    addRelation("dispositivos", AppTablas.cPuestos, "id_impresora");
    addRelation("dispositivos", AppTablas.cPuestos, "id_ticadora");
    addRelation("dispositivos", AppTablas.cInformesCfgX, "id_dispositivo");
    addRelation("dispositivos", AppTablas.cPuestos, "id_visor");
    addRelation("dispositivos", AppTablas.cPuestos, "id_scanner_barras");
    addRelation("dispositivos", AppTablas.cPuestos, "id_scanner_mag");
    addRelation("dispositivos", AppTablas.cPuestos, "id_bascula");
    addRelation("dispositivos", AppTablas.cPuestos, "id_smart_card");
    addRelation("dispositivos", AppTablas.cDispositivos, "id_dispositivo");
    addRelation("dispositivos", AppTablas.cPuestos, "id_srv_in_hova1");
    addRelation("dispositivos", AppTablas.cPuestos, "id_srv_in_hova2");
    addRelation("dispositivos", AppTablas.cPuestos, "id_firma_manuscrita");
    addRelation("dispositivos", AppTablas.cPuestos, "id_impresora1_comandero");
    addRelation("dispositivos", AppTablas.cPuestos, "id_impresora2_comandero");
    addRelation("dispositivos", AppTablas.cPuestos, "id_impresora3_comandero");
    addRelation("dispositivos", AppTablas.cPuestos, "id_terminal_cobro");
    addRelation("dispositivos", AppTablas.cPuestos, "id_etiquetadora");
    addRelation("dispositivos", "areas_venta", "id_impresora_facturas");
    addRelation("dispositivos", "areas_venta", "id_impresora_albaranes");
    addRelation("dispositivos", "areas_venta", "id_impresora_tickets");
    addRelation("dispositivos", "areas_venta", "id_impresora_justificantes");
    addRelation("dispositivos", "carta_articulos", "id_impresora1");
    addRelation("dispositivos", "carta_articulos", "id_impresora2");
    addRelation("dispositivos", "carta_grupos", "id_impresora1");
    addRelation("dispositivos", "carta_grupos", "id_impresora2");
    addRelation("dispositivos", "menu_restx", "id_impresora1");
    addRelation("dispositivos", "menu_restx", "id_impresora2");
    addRelation("dispositivos", "areas_venta", "id_impresora_facturas_tic");
    addRelation("dispositivos", "areas_venta", "id_impresora_albaranes_tic");
    addRelation("dispositivos", "areas_venta", "id_impresora_tickets_tic");
    addRelation("dispositivos", "areas_venta", "id_impresora_pedidos");
    addRelation("dispositivos", "areas_venta", "id_impresora_pedidos_tic");
    addRelation("dispositivos", "areas_venta", "id_impresora_presupuestos");
    addRelation("dispositivos", "areas_venta", "id_impresora_presupuestos_tic");
    addRelation("dispositivos", "areas_venta", "id_impresora_justificantes_tic");
    addRelation("dispositivos", "cajones", "id_dispositivo");
    addRelation("dispositivos", "habitaciones", "id_srv_in_hova");
    addRelation("dispositivos", "areas_venta", "id_imp_facturas_plantilla");
    addRelation("dispositivos", "areas_venta", "id_imp_albaranes_plantilla");
    addRelation("dispositivos", "areas_venta", "id_imp_tickets_plantilla");
    addRelation("dispositivos", "areas_venta", "id_imp_pedidos_plantilla");
    addRelation("dispositivos", "areas_venta", "id_imp_presupuestos_plantilla");
    addRelation("dispositivos", "areas_venta", "id_imp_notas_plantilla");

//DocAlmacen
    addRelation("doc_almacen", "averias", "id_doc_almacen");
    addRelation("doc_almacen", "revisiones", "id_doc_almacen");
    addRelation("doc_almacen", "doc_almacen", "id_doc_traspaso");
    addRelation("doc_almacen", "doc_almacenx", "id_documento");
    addRelation("doc_almacen", "partes_reparaciones", "id_doc_almacen");
    addRelation("doc_almacen", "fabricacion", "id_doc_almacen_salida");
    addRelation("doc_almacen", "fabricacion", "id_doc_almacen_entrada");

//DocCli
    addRelation("doc_cli", "averias", "id_doc_cli");
    addRelation("doc_cli", "ordenes_trabajo", "id_doc_cli");
    addRelation("doc_cli", "revisiones", "id_doc_cli");
    addRelation("doc_cli", "asientos", "id_documento");
    addRelation("doc_cli", "comisionesx", "id_doc_cli");
    addRelation("doc_cli", "doc_cli", "id_facturado");
    addRelation("doc_cli", "doc_cli", "id_cierre_caja");
    addRelation("doc_cli", "doc_cli", "id_devolucion");
    addRelation("doc_cli", "doc_cli_valores", "id_documento");
    addRelation("doc_cli", "doc_clix", "id_documento");
    addRelation("doc_cli", "doc_clix", "id_procedencia");
    addRelation("doc_cli", "doc_clix", "id_doc_origen");
    addRelation("doc_cli", "puntos_clientes", "id_documento");
    addRelation("doc_cli", "doc_hotel", "id_doc_cli");
    addRelation("doc_cli", "doc_hotelx", "id_doc_cli");
    addRelation("doc_cli", "doc_pro", "id_inversion_sp");
    addRelation("doc_cli", "doc_almacen", "id_doc_cli");
    addRelation("doc_cli", "efectos", "id_cierre_caja");
    addRelation("doc_cli", "efectos", "id_pedido");
    addRelation("doc_cli", "campos_auxiliares", "id_origen");
    addRelation("doc_cli", "fabricacion_grupo", "id_doc_cli");
    addRelation("doc_cli", "fabricacion_grupo", "id_pedido");
    addRelation("doc_cli", "hst_doc_hotel", "id_doc_cli");
    addRelation("doc_cli", "doc_cli", "id_factura_rectificada");
    addRelation("doc_cli", "logi_envios", "id_doc_cli");
    addRelation("doc_cli", "doc_pro", "id_doc_cli_transfer");
    addRelation("doc_cli", "doc_almacenx", "id_doc_cli_depositario");
    addRelation("doc_cli", "doc_pro", "id_doc_cli_pedido");
    addRelation("doc_cli", "doc_cli", "id_factura_ticket");
    addRelation("doc_cli", "aparatos", "id_doc_cli_copias");
    addRelation("doc_cli", "doc_cli", "id_pedido");
    addRelation("doc_cli", "doc_cli", "id_pedido_reserva");
    addRelation("doc_cli", "doc_cli", "id_anterior");

//DocCliX
    addRelation("doc_clix", "numeros_serie", "id_contenido");
    addRelation("doc_clix", "doc_clix", "id_doc_clix");
    addRelation("doc_clix", "doc_clix", "id_grupo_impresion");
    addRelation("doc_clix", "doc_clix", "id_docx_menu");
    addRelation("doc_clix", "ocupantesx", "id_doc_clix");
    addRelation("doc_clix", "doc_clix", "id_sub_compuesto");
    addRelation("doc_clix", "doc_clix", "id_grupo_acto_evento");
    addRelation("doc_clix", "recursos_actos", "id_doc_clix");

//DocHotel
    addRelation("doc_hotel", "doc_hotelx", "id_documento");
    addRelation("doc_hotel", "efectos", "id_doc_hotel");
    addRelation("doc_hotel", "comanda_visual", "id_doc_hotel");

//DocHotelX
    addRelation("doc_hotelx", "doc_hotelx", "id_doc_hotelx");
    addRelation("doc_hotelx", "doc_hotelx", "id_grupo_impresion");
    addRelation("doc_hotelx", "doc_hotel_xprevision", "id_doc_hotelx");
    addRelation("doc_hotelx", "doc_hotelx", "id_docx_menu");
    addRelation("doc_hotelx", "ocupantesx", "id_doc_hotelx");
    addRelation("doc_hotelx", "doc_hotelx", "id_sub_compuesto");
    addRelation("doc_hotelx", "doc_hotelx", "id_grupo_acto_evento");
    addRelation("doc_hotelx", "recursos_actos", "id_doc_hotelx");

//DocPro
    addRelation("doc_pro", "asientos", "id_documento");
    addRelation("doc_pro", "doc_cli", "id_inversion_sp");
    addRelation("doc_pro", "doc_clix", "id_partida");
    addRelation("doc_pro", "doc_pro", "id_facturado");
    addRelation("doc_pro", "doc_pro", "id_devolucion");
    addRelation("doc_pro", "doc_pro_valores", "id_documento");
    addRelation("doc_pro", "doc_prox", "id_documento");
    addRelation("doc_pro", "doc_prox", "id_procedencia");
    addRelation("doc_pro", "doc_prox", "id_partida");
    addRelation("doc_pro", "doc_prox", "id_doc_origen");
    addRelation("doc_pro", "inmovilizado", "id_factura");
    addRelation("doc_pro", "doc_almacenx", "id_partida");
    addRelation("doc_pro", "doc_pro_valores", "id_ref_doc_pro");
    addRelation("doc_pro", "centro_costes_valores", "id_doc_pro");
    addRelation("doc_pro", "campos_auxiliares", "id_origen");
    addRelation("doc_pro", "doc_pro", "id_factura_rectificada");
    addRelation("doc_pro", "doc_pro", "id_d_ua");
    addRelation("doc_pro", "logi_envios", "id_factura");
    addRelation("doc_pro", "doc_cli", "id_doc_pro_transfer");
    addRelation("doc_pro", "doc_almacen", "id_doc_pro");
    addRelation("doc_pro", "art_revisiones_averias", "id_partida");
    addRelation("doc_pro", "art_revisiones_averias", "id_partida");
    addRelation("doc_pro", AppTablas.cStock, "id_partida");

//DocProX
    addRelation("doc_prox", "numeros_serie", "id_contenido");
    addRelation("doc_prox", "centro_costes_valores", "id_doc_prox");

//DocSINLI
    addRelation("doc_sinli", "doc_sinlix", "id_doc_sinli");

//Efectos
    addRelation("efectos", "asientos", "id_documento");
    addRelation("efectos", "efectos", "id_padre");
    addRelation("efectos", "efectos", "id_rechazado");
    addRelation("efectos", "efectos", "id_consolidado");

//Empresas
    addRelation("empresas", "cuentas_bancarias", "id_ficha");
    addRelation("empresas", "grupos_series", "id_empresa");
    addRelation("empresas", "delegaciones", "id_empresa");
    addRelation("empresas", "aeat", "id_empresa");
    addRelation("empresas", "metodos_pago", "id_empresa");
    addRelation("empresas", "plazos_pago", "id_empresa");
    addRelation("empresas", "articulos", "id_empresa");
    addRelation("empresas", "personal", "id_empresa");
    addRelation("empresas", "agenda", "id_empresa");
    addRelation("empresas", "tarifa_hotel", "id_empresa");
    addRelation("empresas", "tarifas_articulos", "id_empresa");
    addRelation("empresas", "centro_costes_proyectos", "id_empresa");
    addRelation("empresas", "centro_costes_arboles", "id_empresa");
    addRelation("empresas", "cuentas_email", "id_empresa");
    addRelation("empresas", "clientesx", "id_empresa");
    addRelation("empresas", "proveedoresx", "id_empresa");
    addRelation("empresas", "tarifas_doc", "id_empresa");
    addRelation("empresas", "cuentas_bancarias", "id_empresa_cta_defecto");
    addRelation("empresas", "comisionistasx", "id_empresa");
    addRelation("empresas", "doc_cli", "id_s_ii_empresa_sucedida");
    addRelation("empresas", "doc_pro", "id_s_ii_empresa_sucedida");
    addRelation("empresas", "hoja", "id_empresa");
    addRelation("empresas", "almacenes", "id_empresa");
    addRelation("empresas", "centro_informes", "id_empresa");

//Especies
    addRelation("especies", "articulos", "id_especie_defecto");
    addRelation("especies", "clientes", "id_especie_defecto");
    addRelation("especies", "recetas", "id_especie");

//Estantes
    addRelation("estantes", "estantesx", "id_estante");

//Fabricacion
    addRelation("fabricacion", "fabricacionx", "id_fabricacion");

//FabricacionCfg
    addRelation("fabricacion_cfg", "fabricacion", "id_fabricacion_cfg");

//FabricacionEtapas
    addRelation("fabricacion_etapas", "fabricacion_etapas", "id_plantilla");
    addRelation("fabricacion_etapas", "fabricacion_etapasx", "id_fabricacion_etapas");
    addRelation("fabricacion_etapas", "fabricacion_grupo", "id_fabricacion_etapas");

//FabricacionGrupo
    addRelation("fabricacion_grupo", "fabricacion_grupo", "id_plantilla");
    addRelation("fabricacion_grupo", "fabricacion", "id_fabricacion_grupo");
    addRelation("fabricacion_grupo", "fabricacion_etapasx", "id_fabricacion_grupo");

//FabricacionTareas
    addRelation("fabricacion_tareas", "fabricacionx", "id_tarea");

//Fabricantes
    addRelation("fabricantes", "aparatos", "id_fabricante");
    addRelation("fabricantes", "articulos", "id_fabricante");
    addRelation("fabricantes", "mensajes", "id_ficha");
    addRelation("fabricantes", "data_imp", "id_emisor");
    addRelation("fabricantes", "data_impx", "id_fabricante");
    addRelation("fabricantes", "fabricantesx", "id_fabricante");
    addRelation("fabricantes", "rangos_barras", "id_fabricante");
    addRelation("fabricantes", "tarifas", "id_fabricante");
    addRelation("fabricantes", "tarifas_docx", "id_fabricante");

//Fianzas
    addRelation("fianzas", "fianzasx", "id_fianza");

//Grupos
    addRelation("grupos", "mantenimientos", "id_grupo");
    addRelation("grupos", "areas_venta", "id_carta");
    addRelation("grupos", "areas_venta", "id_grupo_destino");
    addRelation("grupos", "articulos", "id_criterio_tarifa");
    addRelation("grupos", "articulos", "id_criterio_comision");
    addRelation("grupos", "articulos", "id_grupo_articulos_doc");
    addRelation("grupos", "articulos", "id_coleccion");
    addRelation("grupos", "articulos", "id_curso");
    addRelation("grupos", "articulos", "id_asignatura");
    addRelation("grupos", "grupos_comisionesx", "id_criterio_comision");
    addRelation("grupos", "grupos_comisionesx", "id_criterio_tarifa");
    addRelation("grupos", "data_impx", "id_curso");
    addRelation("grupos", "data_impx", "id_asignatura");
    addRelation("grupos", "doc_hotelx", "id_grupo_regimen");
    addRelation("grupos", "carta_grupos", "id_carta");
    addRelation("grupos", "carta_grupos", "id_grupofactura");
    addRelation("grupos", "tarifas", "id_criterio_tarifa");
    addRelation("grupos", "doc_almacen", "id_grupo_destino");
    addRelation("grupos", "art_delegaciones", "id_estado");
    addRelation("grupos", "articulos", "id_estado");
    addRelation("grupos", "clientes", "id_grupo_ine");
    addRelation("grupos", "articulos", "id_grupo_calendario");
    addRelation("grupos", "articulos", "id_grupo_cubiculo");
    addRelation("grupos", "agenda", "id_grupo");
    addRelation("grupos", "agenda", "id_marca_hora");
    addRelation("grupos", "menu_eventos", "id_tipo");
    addRelation("grupos", "doc_hotelx", "id_tipo_acto");
    addRelation("grupos", "doc_clix", "id_tipo_acto");
    addRelation("grupos", "recursos_actos", "id_posicion_persona");
    addRelation("grupos", "doc_hotelx", "id_montaje_salon");
    addRelation("grupos", "doc_clix", "id_montaje_salon");
    addRelation("grupos", "reservas_rest", "id_tipo");
    addRelation("grupos", "articulos", "id_tipo_tratamiento");
    addRelation("grupos", "articulos", "id_tipo_paquete_circuito");
    addRelation("grupos", "partes_reparaciones", "id_tipo");
    addRelation("grupos", "cfg_campos_auxiliares", "id_grupo");
    addRelation("grupos", "articulos", "id_grupo_spa");
    addRelation("grupos", "menu_eventosx", "id_grupo");
    addRelation("grupos", "fabricacionx", "id_centro_trabajo");
    addRelation("grupos", "fabricacion_tareas", "id_centro_trabajo");
    addRelation("grupos", "fabricacion_grupo", "id_prioridad");
    addRelation("grupos", "fabricacion_grupo", "id_incidencia");
    addRelation("grupos", "centro_informes", "id_grupo");
    addRelation("grupos", "hst_doc_hotelx", "id_grupo_regimen");
    addRelation("grupos", "hst_doc_hotelx", "id_tipo_acto");
    addRelation("grupos", "hst_doc_hotelx", "id_montaje_salon");
    addRelation("grupos", "hst_recursos_actos", "id_posicion_persona");
    addRelation("grupos", "ordenes_trabajo", "id_tipo");
    addRelation("grupos", "ordenes_trabajo", "id_etapa");
    addRelation("grupos", "objetos_perdidos", "id_ubicacion_encontrado");
    addRelation("grupos", "objetos_perdidos", "id_ubicacion_guardado");
    addRelation("grupos", "bonos_acceso", "id_descripcion");
    addRelation("grupos", "tarifas_docx", "id_criterio_tarifa");
    addRelation("grupos", "cfg_central_reservas_cargos_xpersona", "id_grupo_regimen");
    addRelation("grupos", "telepedido_ofertas", "id_carta");
    addRelation("grupos", "cfg_central_reservas_cargos", "id_grupo_regimen");
    addRelation("grupos", "conocimientos", "id_sector");
    addRelation("grupos", "doc_clix", "id_grupo_regimen");

//Grupos
    addRelation("grupos_g", AppTablas.cProvincias, "id_grupo");
    addRelation("grupos_g", AppTablas.cProvincias, "id_region");
    addRelation("grupos_g", AppTablas.cPaises, "id_estadistica_pais");

//GruposComisiones
    addRelation("grupos_comisiones", "comisionistas", "id_grupo");
    addRelation("grupos_comisiones", "grupos_comisionesx", "id_grupo");
    addRelation("grupos_comisiones", "comisionistasx", "id_grupo");

//GruposSeries
    addRelation("grupos_series", "series", "id_grupo_series");
    addRelation("grupos_series", "nominas", "id_grupo_series");
    addRelation("grupos_series", "comisiones", "id_grupo_series");
    addRelation("grupos_series", "comisionesx", "id_grupo_series");
    addRelation("grupos_series", "inmovilizado", "id_grupo_series");
    addRelation("grupos_series", "asientos", "id_grupo_series");
    addRelation("grupos_series", "remesas", "id_grupo_series");
    addRelation("grupos_series", "doc_cli", "id_grupo_series");
    addRelation("grupos_series", "doc_pro", "id_grupo_series");
    addRelation("grupos_series", "delegaciones", "id_cli_grupo_series_entregas_acta");
    addRelation("grupos_series", "efectos", "id_grupo_series");
    addRelation("grupos_series", "empresas", "id_grupo_series_defecto");
    addRelation("grupos_series", "presupuestos", "id_grupo_series");
    addRelation("grupos_series", "centro_costes_valores", "id_grupo_series");
    addRelation("grupos_series", "fianzas", "id_grupo_series");

//Habitaciones
    addRelation("habitaciones", "doc_clix", "id_origen");
    addRelation("habitaciones", "doc_clix", "id_habitacion_cargo");
    addRelation("habitaciones", "doc_hotelx", "id_habitacion_cargo");
    addRelation("habitaciones", "habitacionesx", "id_habitacion");
    addRelation("habitaciones", "doc_hotelx", "id_habitacion");
    addRelation("habitaciones", "partes_reparaciones", "id_habitacion");
    addRelation("habitaciones", "hst_doc_hotelx", "id_habitacion");
    addRelation("habitaciones", "hst_doc_hotelx", "id_habitacion_cargo");

//HabitacionesProps
    addRelation("habitaciones_props", "habitacionesx", "id_propiedad");

//Hoja
    addRelation("hoja", "hojax", "id_hoja");

//HotelDtos
    addRelation("hotel_dtos", "hotel_dtosx", "id_hotel_dtos");
    addRelation("hotel_dtos", "tarifa_hotel", "id_hotel_dtos");

//HstDocHotel
    addRelation("hst_doc_hotel", "hst_doc_hotelx", "id_documento");

//HstDocHotelX
    addRelation("hst_doc_hotelx", "hst_doc_hotelx", "id_hst_doc_hotelx");
    addRelation("hst_doc_hotelx", "hst_doc_hotelx", "id_sub_compuesto");
    addRelation("hst_doc_hotelx", "hst_doc_hotelx", "id_grupo_impresion");
    addRelation("hst_doc_hotelx", "hst_doc_hotelx", "id_grupo_acto_evento");
    addRelation("hst_doc_hotelx", "hst_doc_hotelx", "id_doc_xmenu");
    addRelation("hst_doc_hotelx", "hst_ocupantesx", "id_hst_doc_hotelx");
    addRelation("hst_doc_hotelx", "hst_recursos_actos", "id_hst_doc_hotelx");

//HstRecursosActos
    addRelation("hst_recursos_actos", "hst_recursos_actos", "id_padre");

//Impuestos
    addRelation("impuestos", "areas_venta", "id_impuesto");
    addRelation("impuestos", "articulos", "id_impuesto");
    addRelation("impuestos", "data_impx", "id_impuesto");
    addRelation("impuestos", "impuestosx", "id_impuesto");
    addRelation("impuestos", "tarifas_articulos", "id_impuesto");

//Incidencias_L
    addRelation("incidencias_l", AppTablas.cIncidenciasX, "id_incidencia");

//InformesCfg
    addRelation("informes_cfg", AppTablas.cInformesCfgX, "id_origen");
    addRelation("informes_cfg", AppTablas.cInformesCfgX, "id_presets");
    addRelation("informes_cfg", AppTablas.cInformesCfg, "id_cabecera_informe");
    addRelation("informes_cfg", AppTablas.cInformesCfg, "id_pie_informe");
    addRelation("informes_cfg", AppTablas.cInformesCfg, "id_modelo_design");
    addRelation("informes_cfg", "delegaciones", "id_cabecera_informes");
    addRelation("informes_cfg", "delegaciones", "id_pie_informes");
    addRelation("informes_cfg", "delegaciones", "id_cabecera_doc_a4");
    addRelation("informes_cfg", "delegaciones", "id_pie_doc_a4");
    addRelation("informes_cfg", "delegaciones", "id_cabecera_doc_a5");
    addRelation("informes_cfg", "delegaciones", "id_pie_doc_a5");
    addRelation("informes_cfg", "areas_venta", "id_modelo_facturas");
    addRelation("informes_cfg", "areas_venta", "id_modelo_albaranes");
    addRelation("informes_cfg", "areas_venta", "id_modelo_tickets");
    addRelation("informes_cfg", "areas_venta", "id_modelo_presupuestos");
    addRelation("informes_cfg", "areas_venta", "id_modelo_pedidos");
    addRelation("informes_cfg", "areas_compra", "id_modelo_facturas");
    addRelation("informes_cfg", "areas_compra", "id_modelo_albaranes");
    addRelation("informes_cfg", "areas_compra", "id_modelo_pedidos");
    addRelation("informes_cfg", "areas_compra", "id_modelo_presupuestos");
    addRelation("informes_cfg", "areas_compra", "id_modelo_devoluciones");
    addRelation("informes_cfg", "fabricacion_cfg", "id_modelo_etiqueta_cajas");
    addRelation("informes_cfg", "fabricacion_cfg", "id_modelo_etiqueta_articulo");
    addRelation("informes_cfg", "fabricacion", "id_modelo_etiqueta_cajas");
    addRelation("informes_cfg", "fabricacion", "id_modelo_etiqueta_articulo");
    addRelation("informes_cfg", "centro_informesx", "id_presets");
    addRelation("informes_cfg", "areas_venta", "id_modelo_welcome");
    addRelation("informes_cfg", "areas_venta", "id_modelo_facturas_plantilla");
    addRelation("informes_cfg", "areas_venta", "id_modelo_albaranes_plantilla");
    addRelation("informes_cfg", "areas_venta", "id_modelo_tickets_plantilla");
    addRelation("informes_cfg", "areas_venta", "id_modelo_pedidos_plantilla");
    addRelation("informes_cfg", "areas_venta", "id_modelo_presupuestos_plantilla");
    addRelation("informes_cfg", "areas_venta", "id_modelo_notas_plantilla");

//InformesUsuarios
    addRelation("informes_usuarios", "informes_usuariosx", "id_informes_usuarios");

//Inmovilizado
    addRelation("inmovilizado", "inmovilizado_valores", "id_documento");
    addRelation("inmovilizado", "inmovilizadox", "id_documento");

//Instalaciones
    addRelation("instalaciones", "instalacionesx", "id_instalacion");
    addRelation("instalaciones", "instalaciones_props", "id_instalacion");
    addRelation("instalaciones", "aparatos", "id_instalacion");
    addRelation("instalaciones", "conocimientos", "id_instalacion");

//Inventario
    addRelation("inventario", "inventariox", "id_inventario");

//Logi_Destinos
    addRelation("logi_destinos", "logi_envios", "id_destino");
    addRelation("logi_destinos", "doc_cli", "id_destino");

//Logi_Envios
    addRelation("logi_envios", "logi_unidades", "id_envio");

//Logi_Formas
    addRelation("logi_formas", "logi_destinos", "id_forma_envio");
    addRelation("logi_formas", "clientes", "id_forma_envio");
    addRelation("logi_formas", "doc_cli", "id_forma_envio");
    addRelation("logi_formas", "logi_envios", "id_forma_envio");

//Logi_Formatos
    addRelation("logi_formatos", "logi_unidades", "id_formato");

//Logi_Unidades
    addRelation("logi_unidades", "logi_unidadesx", "id_unidad");

//Mandatos
    addRelation("mandatos", "efectos", "id_mandato");

//Mantenimientos
    addRelation("mantenimientos", "aparatos", "id_contrato");
    addRelation("mantenimientos", "aparatos", "id_contrato2");
    addRelation("mantenimientos", "doc_clix", "id_mantenimiento");
    addRelation("mantenimientos", "instalaciones", "id_mantenimiento");

//MenuEventos
    addRelation("menu_eventos", "doc_clix", "id_origen");
    addRelation("menu_eventos", "menu_eventosx", "id_menu_eventos");

//MenuRest
    addRelation("menu_rest", "menu_restx", "id_menu_rest");

//Mesas
    addRelation("mesas", "doc_clix", "id_mesa");
    addRelation("mesas", "doc_hotel", "id_mesa");
    addRelation("mesas", "doc_hotelx", "id_mesa");
    addRelation("mesas", "hst_doc_hotel", "id_mesa");
    addRelation("mesas", "hst_doc_hotelx", "id_mesa");

//Messenger
    addRelation("messenger", AppTablas.cMessengerX, "id_messenger");

//MetodosPago
    addRelation("metodos_pago", "mantenimientos", "id_como_pago");
    addRelation("metodos_pago", "areas_venta", "id_metodo_cobro1");
    addRelation("metodos_pago", "areas_venta", "id_metodo_cobro2");
    addRelation("metodos_pago", "areas_venta", "id_metodo_cobro3");
    addRelation("metodos_pago", "areas_venta", "id_metodo_cobro4");
    addRelation("metodos_pago", "areas_venta", "id_metodo_cobro5");
    addRelation("metodos_pago", "areas_venta", "id_metodo_cobro6");
    addRelation("metodos_pago", "areas_venta", "id_metodo_cobro7");
    addRelation("metodos_pago", "areas_venta", "id_metodo_cobro8");
    addRelation("metodos_pago", "areas_venta", "id_metodo_efectivo");
    addRelation("metodos_pago", "arqueosx", "id_como_pago");
    addRelation("metodos_pago", "operaciones_tpv", "id_como_pago");
    addRelation("metodos_pago", "comisiones", "id_como_pago");
    addRelation("metodos_pago", "data_imp", "id_como_pago");
    addRelation("metodos_pago", "data_impx", "id_como_pago");
    addRelation("metodos_pago", "doc_cli", "id_como_pago");
    addRelation("metodos_pago", "doc_pro", "id_como_pago");
    addRelation("metodos_pago", "nominas", "id_metodo_pago");
    addRelation("metodos_pago", "remesas", "id_como_pago");
    addRelation("metodos_pago", "cfg_central_reservas", "id_metodo_pago1");
    addRelation("metodos_pago", "cfg_central_reservas", "id_metodo_pago2");
    addRelation("metodos_pago", "cfg_central_reservas", "id_metodo_pago3");
    addRelation("metodos_pago", "delegaciones", "id_metodo_efectivo");
    addRelation("metodos_pago", "delegaciones", "id_cli_metodo_cobro_defecto");
    addRelation("metodos_pago", "delegaciones", "id_pro_metodo_pago_defecto");
    addRelation("metodos_pago", "efectos", "id_como_pago");
    addRelation("metodos_pago", "personal", "id_como_pago");
    addRelation("metodos_pago", "fianzas", "id_metodo_constitucion");
    addRelation("metodos_pago", "fianzas", "id_metodo_cancelacion");
    addRelation("metodos_pago", "clientesx", "id_como_pago");
    addRelation("metodos_pago", "proveedoresx", "id_como_pago");
    addRelation("metodos_pago", "cajones", "id_metodo_apertura");
    addRelation("metodos_pago", "areas_venta", "id_metodo_telepedido");
    addRelation("metodos_pago", "doc_hotel", "id_como_pago");
    addRelation("metodos_pago", "areas_venta", "id_metodo_efectivo_kiosko_hotel");
    addRelation("metodos_pago", "areas_venta", "id_metodo_tarjeta_kiosko_hotel");
    addRelation("metodos_pago", "cfg_central_reservas_clientes_agencias", "id_como_pago");

//Monedas
    addRelation("monedas", AppTablas.cPaises, "id_moneda");
    addRelation("monedas", "clientes", "id_moneda");
    addRelation("monedas", "doc_cli", "id_moneda2");
    addRelation("monedas", "vias_pago", "id_moneda");

//Nombres
    addRelation("nombres", "data_imp", "id_destinatario");
    addRelation("nombres", "doc_pro", "id_visita");
    addRelation("nombres", "doc_pro", "id_atencion");
    addRelation("nombres", "doc_cli", "id_remitente_contacto");
    addRelation("nombres", "doc_cli", "id_envio_contacto");

//Nominas
    addRelation("nominas", "asientos", "id_documento");
    addRelation("nominas", "centro_costes_valores", "id_nomina");
    addRelation("nominas", "efectos", "id_nomina_atrasos");

//Obras
    addRelation("obras", "doc_cli", "id_obra");
    addRelation("obras", "doc_pro", "id_obra");

//Ocupantes
    addRelation("ocupantes", "ocupantesx", "id_ocupante");
    addRelation("ocupantes", "hst_ocupantesx", "id_ocupante");

//OrdenesTrabajo
    addRelation("ordenes_trabajo", "campos_auxiliares", "id_origen");

//Paises
    addRelation("paises", AppTablas.cProvincias, "id_pais");
    addRelation("paises", AppTablas.cBancos, "id_pais");
    addRelation("paises", AppTablas.cUbicaciones, "id_pais");
    addRelation("paises", "articulos", "id_pais");
    addRelation("paises", "clientes", "id_pais_nacionalidad");
    addRelation("paises", "data_impx", "id_pais_publicacion");
    addRelation("paises", "ocupantes", "id_pais");
    addRelation("paises", "ocupantes", "id_pais_nacionalidad");
    addRelation("paises", "nombres", "id_pais");
    addRelation("paises", "clientes", "id_pais");
    addRelation("paises", "proveedores", "id_pais");
    addRelation("paises", "fabricantes", "id_pais");
    addRelation("paises", "personal", "id_pais");
    addRelation("paises", "almacenes", "id_pais");
    addRelation("paises", "transportistas", "id_pais");
    addRelation("paises", "contactos_externos", "id_pais");
    addRelation("paises", "veterinarios", "id_pais");
    addRelation("paises", "tecnicos", "id_pais");
    addRelation("paises", "empresas", "id_pais");
    addRelation("paises", "delegaciones", "id_pais");
    addRelation("paises", "ocupantesx", "id_pais");
    addRelation("paises", "hst_ocupantesx", "id_pais");
    addRelation("paises", "vias_pago", "id_pais");
    addRelation("paises", "clientes", "id_pais_nif");
    addRelation("paises", "obras", "id_pais");

//PartesMedicos
    addRelation("partes_medicos", "campos_auxiliares", "id_origen");

//PartesReparaciones
    addRelation("partes_reparaciones", "partes_reparacionesx", "id_parte_reparacion");

//PDAs
    addRelation("pdas", "data_imp", "id_origen");
    addRelation("pdas", "pdas_sincronizaciones", "id_p_da");

//Perfiles
    addRelation("perfiles", "articulos", "id_perfil");
    addRelation("perfiles", "data_impx", "id_perfil");

//PerfilesCamposAux
    addRelation("perfiles_campos_aux", "cfg_campos_auxiliares", "id_perfil_campos_aux");
    addRelation("perfiles_campos_aux", "arboles", "id_perfil_campos_aux");
    addRelation("perfiles_campos_aux", "articulos", "id_perfil_campos_aux");
    addRelation("perfiles_campos_aux", "campos_auxiliares", "id_perfil_campos_aux");
    addRelation("perfiles_campos_aux", "arboles_auxiliares", "id_perfil_campos_aux");
    addRelation("perfiles_campos_aux", "aparatos", "id_perfil_campos_aux");

//Personal
    addRelation("personal", "cuentas_bancarias", "id_ficha");
    addRelation("personal", "mensajes", "id_ficha");
    addRelation("personal", "doc_cli", "id_autorizacion");
    addRelation("personal", "doc_clix", "id_origen");
    addRelation("personal", "doc_hotelx", "id_origen");
    addRelation("personal", "doc_pro", "id_autorizacion");
    addRelation("personal", "doc_pro", "id_recepcion");
    addRelation("personal", "habitaciones", "id_camarera");
    addRelation("personal", "nominas", "id_personal");
    addRelation("personal", "remesas", "id_presentador");
    addRelation("personal", "remesas", "id_ordenante");
    addRelation("personal", "comisionistas", "id_personal");
    addRelation("personal", "doc_almacen", "id_autorizacion");
    addRelation("personal", "doc_almacen", "id_recepcion");
    addRelation("personal", "usuariosx", "id_personal");
    addRelation("personal", "agenda", "id_personal");
    addRelation("personal", "partes_reparacionesx", "id_personal");
    addRelation("personal", "salonesx", "id_personal");
    addRelation("personal", "campos_auxiliares", "id_origen");
    addRelation("personal", "rutas_ficheros", "id_ficha");
    addRelation("personal", "centro_costes_defecto", "id_personal");
    addRelation("personal", "hst_doc_hotelx", "id_origen");
    addRelation("personal", "objetos_perdidos", "id_personal_encontrado");
    addRelation("personal", "objetos_perdidos", "id_personal_envio");
    addRelation("personal", "presencia", "id_personal");

//PlazosPago
    addRelation("plazos_pago", "mantenimientos", "id_cuando_pago");
    addRelation("plazos_pago", "data_imp", "id_cuando_pago");
    addRelation("plazos_pago", "doc_cli", "id_cuando_pago");
    addRelation("plazos_pago", "doc_pro", "id_cuando_pago");
    addRelation("plazos_pago", "dias_pago", "id_plazos");
    addRelation("plazos_pago", "delegaciones", "id_cli_periodicidad_defecto");
    addRelation("plazos_pago", "delegaciones", "id_pro_periodicidad_defecto");
    addRelation("plazos_pago", "clientesx", "id_cuando_pago");
    addRelation("plazos_pago", "proveedoresx", "id_cuando_pago");

//Prevision
    addRelation("prevision", "prevision", "id_ficha_prevision");

//Programas
    addRelation("programas", "instalaciones", "id_programa");

//Proveedores
    addRelation("proveedores", "art_codigos", "id_proveedor");
    addRelation("proveedores", "articulos", "id_proveedor");
    addRelation("proveedores", "art_proveedor", "id_proveedor");
    addRelation("proveedores", "cuentas_bancarias", "id_ficha");
    addRelation("proveedores", "mensajes", "id_ficha");
    addRelation("proveedores", "data_imp", "id_emisor");
    addRelation("proveedores", "data_imp", "id_titular_doc");
    addRelation("proveedores", "doc_pro", "id_proveedor");
    addRelation("proveedores", "doc_pro", "id_distribuidor");
    addRelation("proveedores", "fabricantes", "id_proveedor");
    addRelation("proveedores", "fabricantesx", "id_proveedor");
    addRelation("proveedores", "perfiles", "id_proveedor");
    addRelation("proveedores", "nombres", "id_ficha");
    addRelation("proveedores", "nominas", "id_sindicato");
    addRelation("proveedores", "proveedores", "id_ficha_fiscal");
    addRelation("proveedores", "proveedores", "id_ficha_varios");
    addRelation("proveedores", "aparatos", "id_proveedor");
    addRelation("proveedores", "comisionistas", "id_proveedor");
    addRelation("proveedores", "art_delegaciones", "id_proveedor");
    addRelation("proveedores", "agenda", "id_proveedor");
    addRelation("proveedores", "centro_costes_defecto", "id_proveedor");
    addRelation("proveedores", "campos_auxiliares", "id_origen");
    addRelation("proveedores", "rutas_ficheros", "id_ficha");
    addRelation("proveedores", "proveedoresx", "id_proveedor");
    addRelation("proveedores", "doc_almacen", "id_proveedor");
    addRelation("proveedores", "categorias_de", "id_quien");

//Provincias
    addRelation("provincias", AppTablas.cUbicaciones, "id_provincia");
    addRelation("provincias", "ocupantes", "id_provincia");
    addRelation("provincias", "nombres", "id_provincia");
    addRelation("provincias", "clientes", "id_provincia");
    addRelation("provincias", "proveedores", "id_provincia");
    addRelation("provincias", "fabricantes", "id_provincia");
    addRelation("provincias", "personal", "id_provincia");
    addRelation("provincias", "almacenes", "id_provincia");
    addRelation("provincias", "transportistas", "id_provincia");
    addRelation("provincias", "contactos_externos", "id_provincia");
    addRelation("provincias", "veterinarios", "id_provincia");
    addRelation("provincias", "tecnicos", "id_provincia");
    addRelation("provincias", "empresas", "id_provincia");
    addRelation("provincias", "delegaciones", "id_provincia");
    addRelation("provincias", "ocupantesx", "id_provincia");
    addRelation("provincias", "hst_ocupantesx", "id_provincia");
    addRelation("provincias", "obras", "id_provincia");

//Puestos
    addRelation("puestos", AppTablas.cImpresoras, "id_puesto");
    addRelation("puestos", AppTablas.cXSettings, "id_puesto");
    addRelation("puestos", AppTablas.cInformesCfg, "id_puesto");
    addRelation("puestos", AppTablas.cPID, "id_puesto");
    addRelation("puestos", AppTablas.cInformesCfgX, "id_puesto");
    addRelation("puestos", AppTablas.cMessenger, "id_de_puesto");
    addRelation("puestos", AppTablas.cMessengerX, "id_puesto");
    addRelation("puestos", "ordenes_trabajo", "id_puesto");
    addRelation("puestos", "arqueos", "id_puesto");
    addRelation("puestos", "operaciones_tpv", "id_puesto");
    addRelation("puestos", "xsettings", "id_puesto");
    addRelation("puestos", "data_imp", "id_puesto");
    addRelation("puestos", "doc_cli", "id_puesto");
    addRelation("puestos", "doc_clix", "id_puesto");
    addRelation("puestos", "puntos_clientes", "id_puesto");
    addRelation("puestos", "doc_hotel", "id_puesto");
    addRelation("puestos", "doc_hotelx", "id_puesto");
    addRelation("puestos", "doc_pro", "id_puesto");
    addRelation("puestos", "mandatos", "id_puesto");
    addRelation("puestos", "reservas_rest", "id_puesto");
    addRelation("puestos", "pdas", "id_puesto");
    addRelation("puestos", "pdas", "id_puesto_alternativo");
    addRelation("puestos", "tpvext_cajas", "id_puesto");
    addRelation("puestos", "doc_almacen", "id_puesto");
    addRelation("puestos", "puestosx", "id_puesto");
    addRelation("puestos", "efectos", "id_puesto");
    addRelation("puestos", "agenda", "id_puesto");
    addRelation("puestos", "inventario", "id_puesto");
    addRelation("puestos", "inventariox", "id_puesto");
    addRelation("puestos", "hst_doc_hotel", "id_puesto_proceso");
    addRelation("puestos", "hst_doc_hotel", "id_puesto");
    addRelation("puestos", "hst_doc_hotelx", "id_puesto");
    addRelation("puestos", "instalaciones_props", "id_puesto");
    addRelation("puestos", "fianzas", "id_puesto");
    addRelation("puestos", "webs", "id_puesto");
    addRelation("puestos", AppTablas.cIncidencias, "id_puesto");
    addRelation("puestos", AppTablas.cStock, "id_puesto");
    addRelation("puestos", AppTablas.cChequeos, "id_puesto");
    addRelation("puestos", AppTablas.cExTrans, "id_puesto");

//Recetas
    addRelation("recetas", "doc_clix", "id_receta");

//RecursosActos
    addRelation("recursos_actos", "recursos_actos", "id_padre");

//Remesas
    addRelation("remesas", "asientos", "id_documento");
    addRelation("remesas", "efectos", "id_remesa");
    addRelation("remesas", "remesas_asientos", "id_remesa");

//Retenciones
    addRelation("retenciones", "clientes", "id_retencion");
    addRelation("retenciones", "doc_cli", "id_retencion");
    addRelation("retenciones", "doc_pro", "id_retencion");
    addRelation("retenciones", "retencionesx", "id_retencion");
    addRelation("retenciones", "nominas", "id_retencion_irpf");
    addRelation("retenciones", "proveedores", "id_retencion");
    addRelation("retenciones", "doc_cli_valores", "id_retencion");
    addRelation("retenciones", "doc_pro_valores", "id_retencion");

//Revisiones
    addRelation("revisiones", "ordenes_trabajo", "id_revision");
    addRelation("revisiones", "art_revisiones_averias", "id_averia_revision");
    addRelation("revisiones", "tecnicos_revisiones_averias", "id_averia_revision");

//Salones
    addRelation("salones", "doc_clix", "id_origen");
    addRelation("salones", "recursos_actos", "id_salon");
    addRelation("salones", "reservas_rest", "id_salon");
    addRelation("salones", "partes_reparaciones", "id_salon");
    addRelation("salones", "salonesx", "id_salon");
    addRelation("salones", "hst_recursos_actos", "id_salon");

//Secciones
    addRelation("secciones", "seccionesx", "id_seccion");
    addRelation("secciones", "carta_articulos", "id_seccion");
    addRelation("secciones", "menu_restx", "id_seccion");

//Series
    addRelation("series", "areas_venta", "id_serie_defecto");
    addRelation("series", "areas_venta", "id_serie_alternativa");
    addRelation("series", "data_imp", "id_serie");
    addRelation("series", "doc_cli", "id_serie");
    addRelation("series", "doc_pro", "id_serie");
    addRelation("series", "numeraciones", "id_serie");
    addRelation("series", "pdas", "id_serie");
    addRelation("series", "tpvext_cajas", "id_serie");
    addRelation("series", "areas_compra", "id_serie_defecto");
    addRelation("series", "areas_compra", "id_serie_alternativa");
    addRelation("series", "delegaciones", "id_serie_defecto");
    addRelation("series", "tiendas_virtuales", "id_serie");
    addRelation("series", "mantenimientos", "id_serie");
    addRelation("series", "webs", "id_serie");
    addRelation("series", "clientesx", "id_serie");
    addRelation("series", "proveedoresx", "id_serie");
    addRelation("series", "areas_venta", "id_serie_defecto_tickets");
    addRelation("series", "areas_venta", "id_serie_alternativa_tickets");
    addRelation("series", "clientesx", "id_serie_tickets");
    addRelation("series", "delegaciones", "id_pro_serie_defecto");
    addRelation("series", "delegaciones", "id_pro_serie_alternativa");
    addRelation("series", "puestosx", "id_serie_web");
    addRelation("series", "puestosx", "id_serie_tickets_web");
    addRelation("series", "basculas_tpv", "id_serie");
    addRelation("series", "basculas_tpv", "id_serie_tickets");

//Stock_L
    addRelation("stock_l", AppTablas.cStockNumSerie, "id_stock");

//TareasTecnicos
    addRelation("tareas_tecnicos", "tecnicos_revisiones_averias", "id_tarea_tecnicos");
    addRelation("tareas_tecnicos", "tecnicos_revisiones_averias", "id_tarea_tecnicos");

//TarifaHotel
    addRelation("tarifa_hotel", "doc_hotel", "id_tarifa_cliente");
    addRelation("tarifa_hotel", "doc_hotel", "id_tarifa_empresa");
    addRelation("tarifa_hotel", "doc_hotelx", "id_tarifa_hotel");
    addRelation("tarifa_hotel", "tarifa_hotel_clientes", "id_tarifa_hotel");
    addRelation("tarifa_hotel", "tarifa_hotelx", "id_tarifa_hotel");
    addRelation("tarifa_hotel", "tarifa_hotelx", "id_tarifa_fija");
    addRelation("tarifa_hotel", "tarifas", "id_tarifa_hotel");
    addRelation("tarifa_hotel", "cfg_central_reservas", "id_tarifa_hotel");
    addRelation("tarifa_hotel", "delegaciones", "id_cli_tarifa_hotel_defecto");
    addRelation("tarifa_hotel", "hst_doc_hotel", "id_tarifa_cliente");
    addRelation("tarifa_hotel", "hst_doc_hotel", "id_tarifa_empresa");
    addRelation("tarifa_hotel", "hst_doc_hotelx", "id_tarifa_hotel");
    addRelation("tarifa_hotel", "clientesx", "id_tarifa_hotel");
    addRelation("tarifa_hotel", "areas_venta", "id_tarifa_kiosko_hotel");

//TarifasArticulos
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa1");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa2");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa3");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_precios_tpvext");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_ofertas_tpvext");
    addRelation("tarifas_articulos", "data_imp", "id_tarifa_articulos");
    addRelation("tarifas_articulos", "doc_cli", "id_tarifa");
    addRelation("tarifas_articulos", "doc_cli", "id_tarifa_excepciones");
    addRelation("tarifas_articulos", "doc_hotel", "id_tarifa");
    addRelation("tarifas_articulos", "mesas", "id_tarifa");
    addRelation("tarifas_articulos", "tarifas", "id_tarifa_articulos");
    addRelation("tarifas_articulos", "pdas", "id_tarifa");
    addRelation("tarifas_articulos", "pdas", "id_tarifa2");
    addRelation("tarifas_articulos", "pdas", "id_tarifa3");
    addRelation("tarifas_articulos", "delegaciones", "id_cli_tarifa_articulos_defecto");
    addRelation("tarifas_articulos", "delegaciones", "id_cli_tarifa_excepciones_defecto");
    addRelation("tarifas_articulos", "delegaciones", "id_tarifa_aux1");
    addRelation("tarifas_articulos", "delegaciones", "id_tarifa_aux2");
    addRelation("tarifas_articulos", "delegaciones", "id_tarifa_aux3");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_componentes");
    addRelation("tarifas_articulos", "delegaciones", "id_tarifa_aux4");
    addRelation("tarifas_articulos", "delegaciones", "id_tarifa_aux5");
    addRelation("tarifas_articulos", "tiendas_virtuales", "id_tarifa_articulos");
    addRelation("tarifas_articulos", "hst_doc_hotel", "id_tarifa");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_alquiler_no_devuelto");
    addRelation("tarifas_articulos", "tarifas_articulos", "id_tarifa_precio_base");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_gestion");
    addRelation("tarifas_articulos", "clientesx", "id_tarifa");
    addRelation("tarifas_articulos", "clientesx", "id_tarifa_excepciones");
    addRelation("tarifas_articulos", "tarifas_articulosx", "id_tarifa_articulos");
    addRelation("tarifas_articulos", "webs", "id_tarifa");
    addRelation("tarifas_articulos", "webs", "id_tarifa_excepciones");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_visor_precios");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_excepciones_visor_precios");
    addRelation("tarifas_articulos", "carta_clientes", "id_tarifa");
    addRelation("tarifas_articulos", "puestosx", "id_tarifa_web");
    addRelation("tarifas_articulos", "puestosx", "id_tarifa_excepciones_web");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_cli_varios");
    addRelation("tarifas_articulos", "areas_venta", "id_tarifa_excepciones_cli_varios");

//TarifasDoc
    addRelation("tarifas_doc", "tarifas_docx", "id_tarifa_doc");
    addRelation("tarifas_doc", "tarifas_articulosx", "id_tarifa_doc");
    addRelation("tarifas_doc", "doc_clix", "id_tarifa_doc");

//Tecnicos
    addRelation("tecnicos", "ordenes_trabajo", "id_tecnico_recepcion");
    addRelation("tecnicos", "tecnicos_revisiones_averias", "id_tecnico");
    addRelation("tecnicos", "tecnicos_revisiones_averias", "id_tecnico");
    addRelation("tecnicos", "doc_cli", "id_tecnico");
    addRelation("tecnicos", "doc_clix", "id_tecnico");
    addRelation("tecnicos", "fabricacionx", "id_tecnico");
    addRelation("tecnicos", "fabricacion_tareas", "id_tecnico");
    addRelation("tecnicos", "partes_medicos", "id_medico");
    addRelation("tecnicos", "ordenes_trabajo", "id_tecnico_trabajo");

//TelepedidoOfertas
    addRelation("telepedido_ofertas", "telepedido_ofertasx", "id_telepedido_ofertas");

//TiendasVirtuales
    addRelation("tiendas_virtuales", "destinos", "id_tienda_virtual");

//TipoHabitaciones
    addRelation("tipo_habitaciones", "doc_hotelx", "id_tipo_habitacion");
    addRelation("tipo_habitaciones", "habitaciones", "id_tipo");
    addRelation("tipo_habitaciones", "cfg_central_reservas_cargos", "id_tipo_habitacion");
    addRelation("tipo_habitaciones", "hst_doc_hotelx", "id_tipo_habitacion");

//TPVExt_Cajas
    addRelation("tpvext_cajas", "data_imp", "id_origen");

//TPVEXT_Cajas
    addRelation("tpvext_cajas", "tpvext_saldos", "id_caja");

//TPVExt_Saldos
    addRelation("tpvext_saldos", "tpvext_saldos", "id_operacion");

//Transportistas
    addRelation("transportistas", "clientes", "id_transportista");
    addRelation("transportistas", "proveedores", "id_transportista");
    addRelation("transportistas", "doc_cli", "id_transportista");
    addRelation("transportistas", "doc_pro", "id_transportista");
    addRelation("transportistas", "doc_almacen", "id_transportista");
    addRelation("transportistas", "pdas", "id_transportista");
    addRelation("transportistas", "delegaciones", "id_transportista_defecto");
    addRelation("transportistas", "doc_hotel", "id_transportista");
    addRelation("transportistas", "hst_doc_hotel", "id_transportista");
    addRelation("transportistas", "logi_formas", "id_transportista");
    addRelation("transportistas", "logi_envios", "id_transportista");

//Turnos
    addRelation("turnos", "reservas_rest", "id_turno");

//Ubicaciones
    addRelation("ubicaciones", "ocupantes", "id_ubicacion");
    addRelation("ubicaciones", "nombres", "id_ubicacion");
    addRelation("ubicaciones", "clientes", "id_ubicacion");
    addRelation("ubicaciones", "proveedores", "id_ubicacion");
    addRelation("ubicaciones", "fabricantes", "id_ubicacion");
    addRelation("ubicaciones", "personal", "id_ubicacion");
    addRelation("ubicaciones", "almacenes", "id_ubicacion");
    addRelation("ubicaciones", "transportistas", "id_ubicacion");
    addRelation("ubicaciones", "contactos_externos", "id_ubicacion");
    addRelation("ubicaciones", "veterinarios", "id_ubicacion");
    addRelation("ubicaciones", "tecnicos", "id_ubicacion");
    addRelation("ubicaciones", "empresas", "id_ubicacion");
    addRelation("ubicaciones", "delegaciones", "id_ubicacion");
    addRelation("ubicaciones", "ocupantesx", "id_ubicacion");
    addRelation("ubicaciones", "hst_ocupantesx", "id_ubicacion");
    addRelation("ubicaciones", "obras", "id_ubicacion");

//Usuarios
    addRelation("usuarios", AppTablas.cPuestos, "id_usuario");
    addRelation("usuarios", AppTablas.cUsuariosRespuestas, "id_usuario");
    addRelation("usuarios", AppTablas.cMessenger, "id_de_usuario");
    addRelation("usuarios", AppTablas.cMessengerX, "id_usuario");
    addRelation("usuarios", "ordenes_trabajo", "id_usuario");
    addRelation("usuarios", "arqueos", "id_usuario");
    addRelation("usuarios", "operaciones_tpv", "id_usuario");
    addRelation("usuarios", "data_imp", "id_usuario");
    addRelation("usuarios", "doc_cli", "id_usuario");
    addRelation("usuarios", "doc_clix", "id_usuario");
    addRelation("usuarios", "puntos_clientes", "id_usuario");
    addRelation("usuarios", "doc_hotel", "id_usuario");
    addRelation("usuarios", "doc_hotelx", "id_usuario");
    addRelation("usuarios", "doc_pro", "id_usuario");
    addRelation("usuarios", "instalacionesx", "id_usuario");
    addRelation("usuarios", "mandatos", "id_usuario");
    addRelation("usuarios", "reservas_rest", "id_usuario");
    addRelation("usuarios", "pdas", "id_usuario");
    addRelation("usuarios", "doc_almacen", "id_usuario");
    addRelation("usuarios", "usuariosx", "id_usuario");
    addRelation("usuarios", "efectos", "id_usuario");
    addRelation("usuarios", "agenda", "id_usuario");
    addRelation("usuarios", "inventario", "id_usuario");
    addRelation("usuarios", "inventariox", "id_usuario");
    addRelation("usuarios", "hst_doc_hotel", "id_usuario_proceso");
    addRelation("usuarios", "hst_doc_hotel", "id_usuario");
    addRelation("usuarios", "hst_doc_hotelx", "id_usuario");
    addRelation("usuarios", "crm_cfg", "id_usuario");
    addRelation("usuarios", "fianzas", "id_usuario");
    addRelation("usuarios", "conocimientos", "id_usuario");
    addRelation("usuarios", "conocimientos", "id_usuario2");
    addRelation("usuarios", AppTablas.cIncidencias, "id_usuario");
    addRelation("usuarios", AppTablas.cIncidencias, "id_usuario_autorizado");
    addRelation("usuarios", AppTablas.cStock, "id_usuario");
    addRelation("usuarios", AppTablas.cChequeos, "id_usuario");
    addRelation("usuarios", AppTablas.cExTrans, "id_usuario");

//UsuariosPerfiles
    addRelation("usuarios_perfiles", AppTablas.cUsuarios, "id_perfil");
    addRelation("usuarios_perfiles", AppTablas.cUsuariosPerfilesX, "id_perfil");

//Vehiculos
    addRelation("vehiculos", "transportistas", "id_vehiculo");
    addRelation("vehiculos", "logi_envios", "id_vehiculo");
    addRelation("vehiculos", "doc_cli", "id_vehiculo");

//Veterinarios
    addRelation("veterinarios", "doc_cli", "id_veterinario");
    addRelation("veterinarios", "clientes", "id_veterinario");
    addRelation("veterinarios", "delegaciones", "id_cli_veterinario_defecto");
    addRelation("veterinarios", "recetas", "id_veterinario");
    addRelation("veterinarios", "clientes", "id_veterinario_responsable");

//Zonas
    addRelation("zonas", "clientes", "id_zona");
    Utils.printInfo(lstTmp.toString().replaceAll(",", "\n"));
    return lstRelaciones;
  }


  void addRelation(String tablaDestino, String tablaOrigen, String campoID,
      {String selectCanBeDel = "verialid", String filtro = "", String joinStr = "", String alias = "", bool lCanBeDeleteManual = false}) {

    // bool lEmpGrupo = false;
    // if (tablaDestino.endsWith("") && !tablaOrigen.contains(".")) {
    //   lEmpGrupo = true;
    // }

    DRowRelacionesCamposEtc row = DRowRelacionesCamposEtc();
    row.tablaJoin = tablaDestino;
    row.tablaOrigen = tablaOrigen;
    // row.tablaJoinDBEx = tablaJoin;
    row.campoID = campoID;
    // row.camposSelectCanBeDelete = selectCanBeDel;
    // row.joins = joinStr.toLowerCase();
    // row.filtroWhere = filtro.toLowerCase();
    // row.lCanBeDeleteManual = lCanBeDeleteManual;
    //row.isEmpresasGrupo = lEmpGrupo;
    String cAlias = alias;
    if (cAlias == "") {
      if (mapAlias[tablaDestino] != null) {
        cAlias = mapAlias[tablaDestino]!;
      } else {
        if (!lstTmp.contains(tablaDestino)) lstTmp.add(tablaDestino);
        cAlias = tablaDestino.replaceAll("_", "").substring(0, 3);
      }
    }
    row.alias = cAlias;
    lstRelaciones.add(row);
  }

  void getAliasTablas() {
    mapAlias["aeat"] = "aeat";
    mapAlias["aeatx"] = "aeatX";
    mapAlias["agenda"] = "age";
    mapAlias["almacenes"] = "alm";
    mapAlias["aparatos"] = "apar";
    mapAlias["app_blobs"] = "appBlobsImg";
    mapAlias["arboles"] = "arb";
    mapAlias["arboles_auxiliares"] = "arbAux";
    mapAlias["areas_compra"] = "ac";
    mapAlias["areas_venta"] = "av";
    mapAlias["arqueos"] = "arq";
    mapAlias["art_delegaciones"] = "artDel";
    mapAlias["art_lotes"] = "artLot";
    mapAlias["art_revisiones_averias"] = "artRevAv";
    mapAlias["art_stocks"] = "artStk";
    mapAlias["articulos"] = "art";
    mapAlias["asientos"] = "asi";
    mapAlias["averias"] = "ave";
    mapAlias["balances"] = "bal";
    mapAlias["balancesx"] = "balX";
    mapAlias["bancos"] = "bang";
    mapAlias["bonos_acceso"] = "bonAcc";
    mapAlias["cajones"] = "caj";
    mapAlias["carta_clientes"] = "carCli";
    mapAlias["carta_clientes_grupos"] = "carCliGrp";
    mapAlias["carta_grupos"] = "carGrp";
    mapAlias["centro_costes_arboles"] = "ccArb";
    mapAlias["centro_costes_arbolesx"] = "ccArbX";
    mapAlias["centro_costes_defecto"] = "ccDef";
    mapAlias["centro_costes_proyectos"] = "ccProy";
    mapAlias["centro_costes_valores"] = "ccVal";
    mapAlias["centro_informes"] = "cenInf";
    mapAlias["cfg_central_reservas"] = "cfgCenRes";
    mapAlias["cfg_fichero_policia"] = "cfgFicPol";
    mapAlias["cfg_fondo"] = "cfgFondo";
    mapAlias["cfg_menu"] = "cfgMenu";
    mapAlias["clientes"] = "cli";
    mapAlias["clientesx"] = "cliX";
    mapAlias["coleccionables"] = "colec";
    mapAlias["comisiones"] = "comis";
    mapAlias["comisionistas"] = "comistas";
    mapAlias["conocimientos"] = "conoc";
    mapAlias["contactos_externos"] = "contExt";
    mapAlias["ctas_anuales"] = "ctasAn";
    mapAlias["cuentas"] = "ctas";
    mapAlias["cuentas_bancarias"] = "ctasBan";
    mapAlias["cuentas_email"] = "ctasEmail";
    mapAlias["cuentas_especiales"] = "ctasEsp";
    mapAlias["cupos"] = "cupos";
    mapAlias["data_imp"] = "dataImp";
    mapAlias["data_impx"] = "dataImpX";
    mapAlias["delegaciones"] = "deleg";
    mapAlias["dispositivos"] = "dispos";
    mapAlias["doc_almacen"] = "docAlm";
    mapAlias["doc_cli"] = "dc";
    mapAlias["doc_cli_valores"] = "dcVal";
    mapAlias["doc_clix"] = "dcX";
    mapAlias["doc_hotel"] = "dh";
    mapAlias["doc_hotelx"] = "dhX";
    mapAlias["doc_pro"] = "dp";
    mapAlias["doc_pro_valores"] = "dpVal";
    mapAlias["doc_prox"] = "dpX";
    mapAlias["doc_sinli"] = "docSinli";
    mapAlias["doc_sinlix"] = "docSinliX";
    mapAlias["efectos"] = "efec";
    mapAlias["empresas"] = "emp";
    mapAlias["especies"] = "especies";
    mapAlias["estantes"] = "estantes";
    mapAlias["fabricacion"] = "fabCn";
    mapAlias["fabricacion_cfg"] = "fabCnCfg";
    mapAlias["fabricacion_etapas"] = "fabCnEt";
    mapAlias["fabricacion_grupo"] = "fabCnGrp";
    mapAlias["fabricacion_tareas"] = "fabCnTar";
    mapAlias["fabricacionx"] = "fabCnX";
    mapAlias["fabricantes"] = "fab";
    mapAlias["fabricantesx"] = "fabx";
    mapAlias["fianzas"] = "fianzas";
    mapAlias["grupos"] = "grp";
    mapAlias["grupos_comisiones"] = "grpComis";
    mapAlias["grupos_g"] = "grpG";
    mapAlias["grupos_series"] = "grpSeries";
    mapAlias["habitaciones"] = "habit";
    mapAlias["habitaciones_props"] = "habProps";
    mapAlias["hoja"] = "hoja";
    mapAlias["hotel_dtos"] = "hotDtos";
    mapAlias["hst_doc_hotel"] = "hstDh";
    mapAlias["hst_doc_hotelx"] = "hstDhX";
    mapAlias["hst_recursos_actos"] = "hstRecAct";
    mapAlias["impuestos"] = "imp";
    mapAlias["impuestosx"] = "impX";
    mapAlias["incidencias_l"] = "incidL";
    mapAlias["informes_cfg"] = "infCfg";
    mapAlias["informes_usuarios"] = "infUsr";
    mapAlias["inmovilizado"] = "inmov";
    mapAlias["instalaciones"] = "instal";
    mapAlias["inventario"] = "invent";
    mapAlias["logi_destinos"] = "logiDes";
    mapAlias["logi_envios"] = "logiEnv";
    mapAlias["logi_formas"] = "logiFormas";
    mapAlias["logi_formatos"] = "logiFormat";
    mapAlias["logi_uds"] = "logiFormat";
    mapAlias["logi_unidades"] = "logiUds";
    mapAlias["mandatos"] = "mandatos";
    mapAlias["mantenimientos"] = "manten";
    mapAlias["menu_eventos"] = "menuEven";
    mapAlias["menu_rest"] = "menuRest";
    mapAlias["mesas"] = "mesas";
    mapAlias["messenger"] = "messenger";
    mapAlias["metodos_pago"] = "metPag";
    mapAlias["monedas"] = "monedas";
    mapAlias["nombres"] = "nombres";
    mapAlias["nominas"] = "nominas";
    mapAlias["obras"] = "obras";
    mapAlias["ocupantes"] = "ocupantes";
    mapAlias["ordenes_trabajo"] = "ordTrab";
    mapAlias["paises"] = "paises";
    mapAlias["partes_medicos"] = "parMed";
    mapAlias["partes_reparaciones"] = "parRep";
    mapAlias["pdas"] = "pdas";
    mapAlias["perfiles"] = "perf";
    mapAlias["perfiles_campos_aux"] = "perfAux";
    mapAlias["personal"] = "pers";
    mapAlias["plazos_pago"] = "plazos";
    mapAlias["prevision"] = "prevision";
    mapAlias["programas"] = "prg";
    mapAlias["proveedores"] = "prvd";
    mapAlias["proveedoresx"] = "prvdX";
    mapAlias["provincias"] = "provin";
    mapAlias["puestos"] = "puestos";
    mapAlias["puestos"] = "puestos";
    mapAlias["recetas"] = "recetas";
    mapAlias["recursos_actos"] = "recAct";
    mapAlias["remesas"] = "remesas";
    mapAlias["retenciones"] = "retenc";
    mapAlias["revisiones"] = "revis";
    mapAlias["salones"] = "salones";
    mapAlias["secciones"] = "secciones";
    mapAlias["series"] = "series";
    mapAlias["stock_l"] = "stkL";
    mapAlias["tareas_tecnicos"] = "tarTec";
    mapAlias["tarifa_hotel"] = "tarHot";
    mapAlias["tarifas_articulos"] = "tarArt";
    mapAlias["tarifas_doc"] = "tarDoc";
    mapAlias["tecnicos"] = "tecnicos";
    mapAlias["telepedido_ofertas"] = "teleOfer";
    mapAlias["tiendas_virtuales"] = "tiendaVir";
    mapAlias["tipo_habitaciones"] = "tipoHab";
    mapAlias["tpvext_cajas"] = "tpvExCaj";
    mapAlias["tpvext_saldos"] = "tpvExSal";
    mapAlias["transportistas"] = "transp";
    mapAlias["turnos"] = "turnos";
    mapAlias["ubicaciones"] = "ubic";
    mapAlias["usuarios"] = "usr";
    mapAlias["usuarios_perfiles"] = "usrPerf";
    mapAlias["vehiculos"] = "vehiculos";
    mapAlias["veterinarios"] = "veter";
    mapAlias["zonas"] = "zonas";

  }
}

class DRowRelacionesCamposEtc {
  DRowRelacionesCamposEtc();
  late String tablaJoin, tablaOrigen, tablaJoinDBEx, campoID, camposSelectCanBeDelete, joins, filtroWhere, alias;
  late bool lCanBeDeleteManual, isEmpresasGrupo;
}
