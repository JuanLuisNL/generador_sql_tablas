import 'package:generador_sql_tablas/global/relaciones_tablas.dart';

class MapExcepciones {

  static Map<String, String> initMapAliasManuales() {
    Map<String, String> map = {};
    // map["almacenes_1"] = "EstantesSQL? _est;\n";
    // map["arqueos_1"] = "ArqueosxSQL? _arqx;\n";
    // map["art_lotes_1"] = "ArtLotesxSQL? _artLotx;\n";

    // map["art_stocks_1"] = "CampoSQL? _stockTodosAlmacenes, _stockAuxTodosAlmacenes;\n";
    // map["art_stocks_2"] = "EstantesSQL? _est;\n";
    // map["art_stocks_3"] = "ArtAlmacenesSQL? _artAlm;\n";
    // map["art_stocks_4"] = "DocProSQL? _docPro;\n";

    // map["articulos_1"] = "ArtDelegacionesSQL? _artDel;\n";
    // map["articulos_2"] = "ArtStocksSQL? _artStkTotal;\n";
    // map["articulos_3"] = "DocClixSQL? _dcxUdsDep;\n";
    // map["articulos_4"] = "DocProxSQL? _dpxUdsDep;\n";
    // map["articulos_5"] = "CampoSQL? _prvdNomApeReal, _prvdIdReal, _costeReal, _costeUltReal, _costePondReal, _costeMedioReal, _precioReal, _precioRealImp;\n";

    // map["carta_grupos_1"] = "AreasVentaSQL? _av;\n";
    // map["carta_grupos_2"] = "CartaArticulosSQL? _carArt;\n";

    // map["clientes_1"] = "ClientesxSQL? _cliX;\n";
    // map["clientes_2"] = "CampoSQL? _tipoCliNombre;\n";

    // map["cuentas_1"] = "CuentasSQL? _ctasGrupo;\n";

    //map["doc_clix_1"] = "CampoSQL? _udsDepositosCli, _udsAuxDepositosCli;\n";

    //map["doc_prox_1"] = "CampoSQL? _udsDepositosPro, _udsAuxDepositosPro;\n";

    // map["efectos_1"] = "ClientesSQL? _cliQuien;\n";
    // map["efectos_2"] = "ProveedoresSQL? _proQuien;\n";
    // map["efectos_3"] = "PersonalSQL? _persQuien;\n";
    // map["efectos_4"] = "CampoSQL? _fechaReal, _fechaPagadoReal, _fechaAgrupacionReal, _fechaFormalizacionReal, _fechaAlBancoReal, _fechaRechazoReal;\n";
    // map["efectos_5"] = "CampoSQL? _fechaDudosoCobroReal, _fechaIncobrableReal, _estadoReal, _opcionesReal, _tipoOperacionReal, _idComoPagoReal, _tipoEfectoReal, _numeroTarjetaReal;\n";
    // map["efectos_6"] = "CampoSQL? _idDelegacionReal, _idCuentaBancariaReal, _idAsientoPagadoReal, _idRemesaReal;\n";

    //map["empresas_1"] = "DelegacionesSQL? _deleg;\n";
    // map["impuestos_1"] = "ImpuestosxSQL? _impX;\n";
    // map["personal_1"] = "ComisionistasSQL? _comistas;\n";

    // map["proveedores_1"] = "ProveedoresxSQL? _prvdX;\n";
    // map["proveedores_2"] = "CuentasBancariasSQL? _ctasBanc;\n";
    // map["proveedores_3"] = "NombresSQL? _contactos;\n";
    // map["proveedores_4"] = "CampoSQL? _nombreFiscalReal;\n";
    //
    // map["puestos_1"] = "PuestosxSQL? _ptosX;\n";
    // map["usuarios_1"] = "UsuariosxSQL? _usrX;\n";
    return map;
  }

  static Map<String, String> initMapImportsManuales() {
    Map<String, String> map = {};
    map["almacenes_1"] = getImport("estantes");
    map["almacenes_2"] = "import '../../comun/joins_manuales.dart';\n";

    map["areas_compra_1"] = "import 'package:sql_verial/data/base/extension_metodos.dart';\n";

    map["areas_venta_1"] = "import 'package:sql_verial/data/base/extension_metodos.dart';\n";

    map["arqueos_1"] = getImport("arqueosx");
    map["arqueos_2"] = "import '../../comun/joins_manuales.dart';\n";

    map["art_lotes_1"] = getImport("art_lotesx");
    map["art_lotes_2"] = "import '../../comun/joins_manuales.dart';\n";

    map["art_stocks_1"] = getImport("doc_pro");
    map["art_stocks_2"] = getImport("estantes");
    map["art_stocks_3"] = getImport("art_almacenes");
    map["art_stocks_4"] = "import '../../enums/enums_campos.dart';\n";
    map["art_stocks_5"] = "import '../../comun/joins_manuales.dart';\n";

    map["articulos_1"] = getImport("art_delegaciones");
    map["articulos_2"] = "import 'package:sql_verial/data/base/utils_data.dart';\n";
    map["articulos_3"] = "import 'package:sql_verial/data/sql/where.dart';\n";
    map["articulos_4"] = getImport("art_stocks");
    map["articulos_5"] = getImport("doc_clix");
    map["articulos_6"] = getImport("doc_prox");
    map["articulos_7"] = "import '../../enums/enums_campos.dart';\n";
    map["articulos_8"] = "import '../../enums/enums_settings.dart';\n";
    map["articulos_9"] = "import '../../comun/joins_manuales.dart';\n";
    map["articulos_10"] = getImport("art_proveedor");

    map["carta_grupos_1"] = getImport("areas_venta");
    map["carta_grupos_2"] = getImport("carta_articulos");
    map["carta_grupos_3"] = "import '../../comun/joins_manuales.dart';\n";

    map["clientes_1"] = getImport("clientesx");
    map["clientes_2"] = "import 'package:sql_verial/data/base/utils_data.dart';\n";
    map["clientes_3"] = "import '../../../screens/clientes/clases/clientes_helper.dart';\n";
    map["clientes_4"] = "import '../../comun/joins_manuales.dart';\n";

    map["cuentas_1"] ="import 'package:sql_verial/data/base/utils_data.dart';\n";
    map["cuentas_2"] = "import '../../comun/joins_manuales.dart';\n";

    map["efectos_1"] = getImport("clientes");
    map["efectos_2"] = getImport("proveedores");
    map["efectos_3"] = "import '../../enums/enums_campos.dart';\n";
    map["efectos_4"] = getImport("personal");
    map["efectos_5"] = "import 'package:sql_verial/data/sql/where.dart';\n";
    map["efectos_6"] = "import '../../comun/joins_manuales.dart';\n";


    map["empresas_1"] = getImport("delegaciones");
    map["empresas_2"] = "import '../../comun/joins_manuales.dart';\n";

    map["estantes_1"] = "import '../../comun/joins_manuales.dart';\n";

    map["impuestos_1"] = getImport("impuestosx");
    map["impuestos_2"] = "import '../../comun/joins_manuales.dart';\n";


    map["perfiles_1"] = "import 'package:sql_verial/data/base/extension_metodos.dart';\n";

    map["personal_1"] = getImport("comisionistas");
    map["personal_2"] = "import '../../comun/joins_manuales.dart';\n";

    map["proveedores_1"] = getImport("proveedoresx");
    map["proveedores_2"] = getImport("cuentas_bancarias");
    map["proveedores_3"] = getImport("nombres");
    map["proveedores_4"] = "import '../../enums/enums_campos.dart';\n";
    map["proveedores_5"] = "import 'package:sql_verial/data/sql/where.dart';\n";
    map["proveedores_6"] = "import '../../comun/joins_manuales.dart';\n";

    map["puestos_1"] = getImport("puestosx");
    map["puestos_2"] = "import '../../comun/joins_manuales.dart';\n";

    map["usuarios_1"] = getImport("usuariosx");
    map["usuarios_2"] = "import '../../comun/joins_manuales.dart';\n";

    return map;
  }

  static getImport(String tabla) {
    return "import 'package:gestion_verial/data/tablas/$tabla/${tabla}_emp.dart';\n";
  }


  static Map<String, String> initMapCamposExcepciones() {
    RelacionesTablas oRelTab = RelacionesTablas();
    Map<String, String> mapAlias = oRelTab.getAliasTablas();
    Map<String, String> mapCamposExc = {};
    mapCamposExc["id_aparato"] = mapAlias["aparatos"]!;
    mapCamposExc["id_agente"] = mapAlias["comisionistas"]!;
    mapCamposExc["id_agente1"] = "${mapAlias["comisionistas"]!}_1";
    mapCamposExc["id_agente2"] = "${mapAlias["comisionistas"]!}_2";
    mapCamposExc["id_agente3"] = "${mapAlias["comisionistas"]!}_3";
    mapCamposExc["id_agente_defecto"] = "${mapAlias["comisionistas"]!}_Def";
    mapCamposExc["id_agente_atencion"] = "${mapAlias["comisionistas"]!}_Aten";

    mapCamposExc["campos_auxiliares.id_arbol01"] = "${mapAlias["arboles_auxiliares"]!}_1";
    mapCamposExc["campos_auxiliares.id_arbol02"] = "${mapAlias["arboles_auxiliares"]!}_2";
    mapCamposExc["campos_auxiliares.id_arbol03"] = "${mapAlias["arboles_auxiliares"]!}_3";
    mapCamposExc["campos_auxiliares.id_arbol04"] = "${mapAlias["arboles_auxiliares"]!}_4";
    mapCamposExc["campos_auxiliares.id_arbol05"] = "${mapAlias["arboles_auxiliares"]!}_5";
    mapCamposExc["centro_costes_arbolesx.id_arbol"] = mapAlias["centro_costes_arboles"]!;
    mapCamposExc["centro_costes_arbolesx.id_arbol_xgeneral"] = mapAlias["centro_costes_arbolesx"]!;
    mapCamposExc["centro_costes_defecto.id_arbolx"] = mapAlias["centro_costes_arbolesx"]!;
    mapCamposExc["centro_costes_proyectos.id_arbol"] = mapAlias["centro_costes_arboles"]!;
    mapCamposExc["centro_costes_valores.id_arbolx"] = mapAlias["centro_costes_arbolesx"]!;

    mapCamposExc["id_metodo_cobro1"] = "${mapAlias["metodos_pago"]!}_1";
    mapCamposExc["id_metodo_cobro2"] = "${mapAlias["metodos_pago"]!}_2";
    mapCamposExc["id_metodo_cobro3"] = "${mapAlias["metodos_pago"]!}_3";
    mapCamposExc["id_metodo_cobro4"] = "${mapAlias["metodos_pago"]!}_4";
    mapCamposExc["id_metodo_cobro5"] = "${mapAlias["metodos_pago"]!}_5";
    mapCamposExc["id_metodo_cobro6"] = "${mapAlias["metodos_pago"]!}_6";
    mapCamposExc["id_metodo_cobro7"] = "${mapAlias["metodos_pago"]!}_7";
    mapCamposExc["id_metodo_cobro8"] = "${mapAlias["metodos_pago"]!}_8";
    mapCamposExc["id_metodo_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["id_metodo_pago1"] = "${mapAlias["metodos_pago"]!}_1";
    mapCamposExc["id_metodo_pago2"] = "${mapAlias["metodos_pago"]!}_2";
    mapCamposExc["id_metodo_pago3"] = "${mapAlias["metodos_pago"]!}_3";
    mapCamposExc["id_metodo_efectivo"] = "${mapAlias["metodos_pago"]!}_Ef";
    mapCamposExc["id_metodo_telepedido"] = "${mapAlias["metodos_pago"]!}_Tele";
    mapCamposExc["id_metodo_efectivo_kiosko_hotel"] = "${mapAlias["metodos_pago"]!}_EfKios";
    mapCamposExc["id_metodo_tarjeta_kiosko_hotel"] = "${mapAlias["metodos_pago"]!}_TarKios";
    mapCamposExc["id_metodo_apertura"] = "${mapAlias["metodos_pago"]!}_Aper";
    mapCamposExc["id_metodo_constitucion"] = "${mapAlias["metodos_pago"]!}_Cons";
    mapCamposExc["id_metodo_cancelacion"] = "${mapAlias["metodos_pago"]!}_Canc";

    mapCamposExc["id_tarifa"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["id_tarifa1"] = "${mapAlias["tarifas_articulos"]}_1";
    mapCamposExc["id_tarifa2"] = "${mapAlias["tarifas_articulos"]}_2";
    mapCamposExc["id_tarifa3"] = "${mapAlias["tarifas_articulos"]}_3";
    mapCamposExc["id_tarifa_aux1"] = "${mapAlias["tarifas_articulos"]}_1";  // los alias no pueden tener guiones bajos
    mapCamposExc["id_tarifa_aux2"] = "${mapAlias["tarifas_articulos"]}_2";
    mapCamposExc["id_tarifa_aux3"] = "${mapAlias["tarifas_articulos"]}_3";
    mapCamposExc["id_tarifa_aux4"] = "${mapAlias["tarifas_articulos"]}_4";
    mapCamposExc["id_tarifa_aux5"] = "${mapAlias["tarifas_articulos"]}_5";
    mapCamposExc["id_tarifa_alquiler_no_devuelto"] = "${mapAlias["tarifas_articulos"]}_Alq";
    mapCamposExc["id_tarifa_cli_varios"] = "${mapAlias["tarifas_articulos"]}_CliVar";
    mapCamposExc["id_tarifa_excepciones_cli_varios"] = "${mapAlias["tarifas_articulos"]}_ExcCliVar";
    mapCamposExc["id_tarifa_componentes"] = "${mapAlias["tarifas_articulos"]}_Comp";
    mapCamposExc["id_tarifa_excepciones"] = "${mapAlias["tarifas_articulos"]}_Excep";
    mapCamposExc["id_tarifa_excepciones_visor_precios"] = "${mapAlias["tarifas_articulos"]}_ExcVisor";
    mapCamposExc["id_tarifa_gestion"] = "${mapAlias["tarifas_articulos"]}_Gest";
    mapCamposExc["id_tarifa_ofertas_tpvext"] = "${mapAlias["tarifas_articulos"]}_Ofer";
    mapCamposExc["id_tarifa_precio_base"] = "${mapAlias["tarifas_articulos"]}_PrBase";
    mapCamposExc["id_tarifa_precios_tpvext"] = "${mapAlias["tarifas_articulos"]}_PrTpvE";
    mapCamposExc["id_tarifa_visor_precios"] = "${mapAlias["tarifas_articulos"]}_Visor";
    mapCamposExc["puestosx.id_tarifa_web"] = "${mapAlias["tarifas_articulos"]}_Web";
    mapCamposExc["puestosx.id_tarifa_excepciones_web"] = "${mapAlias["tarifas_articulos"]}_ExcWeb";

    mapCamposExc["id_serie"] = mapAlias["series"]!;
    mapCamposExc["id_serie_defecto"] = "${mapAlias["series"]}_Def";
    mapCamposExc["id_serie_alternativa"] = "${mapAlias["series"]}_Alt";
    mapCamposExc["id_serie_defecto_tickets"] = "${mapAlias["series"]}_DefTic";
    mapCamposExc["id_serie_alternativa_tickets"] = "${mapAlias["series"]}_AltTic";
    mapCamposExc["id_serie_tickets"] = "${mapAlias["series"]}_Tic";
    mapCamposExc["id_serie_web"] = "${mapAlias["series"]}_Web";
    mapCamposExc["id_serie_tickets_web"] = "${mapAlias["series"]}_TicWeb";

    mapCamposExc["id_area_venta1"] = "${mapAlias["areas_venta"]!}_1";
    mapCamposExc["id_area_venta2"] = "${mapAlias["areas_venta"]!}_2";
    mapCamposExc["id_area_venta3"] = "${mapAlias["areas_venta"]!}_3";
    mapCamposExc["id_area_venta4"] = "${mapAlias["areas_venta"]!}_4";
    mapCamposExc["id_area_venta5"] = "${mapAlias["areas_venta"]!}_5";
    mapCamposExc["id_area_venta"] = mapAlias["areas_venta"]!;
    mapCamposExc["id_area_compra"] = mapAlias["areas_compra"]!;;

    mapCamposExc["id_moneda"] = mapAlias["monedas"]!;
    mapCamposExc["id_moneda2"] = "${mapAlias["monedas"]!}_2";
    mapCamposExc["id_pais"] = mapAlias["paises"]!;
    mapCamposExc["id_pais_nacionalidad"] = "${mapAlias["paises"]!}_Nac";
    mapCamposExc["id_pais_nif"] = "${mapAlias["paises"]!}_Nif";
    mapCamposExc["id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["id_ubicacion"] = mapAlias["ubicaciones"]!;

    mapCamposExc["id_cliente"] = mapAlias["clientes"]!;

    mapCamposExc["id_cliente_defecto"] = "${mapAlias["clientes"]!}_Def";
    mapCamposExc["id_cliente_varios"] = "${mapAlias["clientes"]!}_Varios";
    mapCamposExc["id_cliente_agencia"] = "${mapAlias["clientes"]!}_Agencia";
    mapCamposExc["id_cliente_atendido"] = "${mapAlias["clientes"]!}_Atend";
    mapCamposExc["id_cliente_facturacion"] = "${mapAlias["clientes"]!}_Fact";
    mapCamposExc["id_cliente_encontrado"] = "${mapAlias["clientes"]!}_Encon";
    mapCamposExc["id_cliente_reclamado"] = "${mapAlias["clientes"]!}_Reclam";

    mapCamposExc["id_comprador_efactura"] = "${mapAlias["clientes"]!}_CompEF";
    mapCamposExc["id_receptor_efactura"] = "${mapAlias["clientes"]!}_RecEF";
    mapCamposExc["id_pagador_efactura"] = "${mapAlias["clientes"]!}_PagEF";
    mapCamposExc["id_contable_efactura"] = "${mapAlias["clientes"]!}_ContEF";



    mapCamposExc["id_proveedor"] = mapAlias["proveedores"]!;

    mapCamposExc["id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["id_cargo_sup_individual"] = "${mapAlias["articulos"]!}_SupInd";
    mapCamposExc["id_cargo_sup_estancia_corta"] = "${mapAlias["articulos"]!}_SupEstCor";
    mapCamposExc["id_cargo_sup_extra1"] = "${mapAlias["articulos"]!}_Ext1";
    mapCamposExc["id_cargo_sup_extra2"] = "${mapAlias["articulos"]!}_Ext2";
    mapCamposExc["id_cargo_sup_extra3"] = "${mapAlias["articulos"]!}_Ext3";
    mapCamposExc["areas_venta.id_art_gastos_envio_telepedido"] = "${mapAlias["articulos"]!}_GastosTele";
    mapCamposExc["areas_venta.id_art_bolsa_telepedido"] = "${mapAlias["articulos"]!}_BolsaTele";
    mapCamposExc["art_compuestos.id_compuesto"] = "${mapAlias["articulos"]!}_Comp";
    mapCamposExc["art_ingredientes.id_ingrediente"] = "${mapAlias["articulos"]!}_Ingr";
    mapCamposExc["articulos.id_agrupado"] = "${mapAlias["articulos"]!}_Agrup";
    mapCamposExc["articulos.id_articulo_stock"] = "${mapAlias["articulos"]!}_Stock";
    mapCamposExc["articulos.id_articulo_eco_tasas"] = "${mapAlias["articulos"]!}_EcoTas";
    mapCamposExc["articulos.id_articulo_envase"] = "${mapAlias["articulos"]!}_Envase";
    mapCamposExc["cfg_central_reservas.id_cargo_desayuno"] = "${mapAlias["articulos"]!}_desayuno";
    mapCamposExc["cfg_central_reservas.id_cargo_media_pension"] = "${mapAlias["articulos"]!}_mp";
    mapCamposExc["cfg_central_reservas.id_cargo_pension_completa"] = "${mapAlias["articulos"]!}_pc";
    mapCamposExc["cfg_central_reservas.id_cargo_todo_incluido"] = "${mapAlias["articulos"]!}_TodoInc";
    mapCamposExc["cfg_central_reservas.id_cargo_uso_individual"] = "${mapAlias["articulos"]!}_UsoInd";
    mapCamposExc["cfg_central_reservas.id_cargo_cama_supletoria"] = "${mapAlias["articulos"]!}_CamaSup";
    mapCamposExc["id_cargo"] = "${mapAlias["articulos"]!}_Cargo"; // a veces hay tambien id_articulo
    mapCamposExc["id_libro"] = "${mapAlias["articulos"]!}_Libro"; // a veces hay tambien id_articulo
    mapCamposExc["delegaciones.id_articulo_centralita"] = "${mapAlias["articulos"]!}_Centr";
    mapCamposExc["doc_almacenx.id_origen"] = mapAlias["articulos"]!; // depende de tipo_origen, pero el otro origen es "comentario"
    mapCamposExc["doc_clix.id_origen"] = mapAlias["articulos"]!;
    mapCamposExc["doc_hotelx.id_origen"] = mapAlias["articulos"]!;
    mapCamposExc["id_cargo_sup1"] = "${mapAlias["articulos"]!}_Sup1";
    mapCamposExc["id_cargo_sup2"] = "${mapAlias["articulos"]!}_Sup2";
    mapCamposExc["id_cargo_sup3"] = "${mapAlias["articulos"]!}_Sup3";
    mapCamposExc["doc_prox.id_origen"] = mapAlias["articulos"]!;
    mapCamposExc["hst_doc_hotelx.id_origen"] = mapAlias["articulos"]!;
    mapCamposExc["id_articulo_portes_web"] = "${mapAlias["articulos"]!}_PortesWeb";
    mapCamposExc["id_cubierto"] = "${mapAlias["articulos"]!}_Cub";
    mapCamposExc["suscripciones.id_primer_numero"] = "${mapAlias["articulos"]!}_PrimNum";
    mapCamposExc["id_cargo_defecto"] = "${mapAlias["articulos"]!}_Def";
    mapCamposExc["id_articulo_trab"] = "${mapAlias["articulos"]!}_Trab";
    mapCamposExc["id_articulo_desp"] = "${mapAlias["articulos"]!}_Desp";

    mapCamposExc["id_delegacion"] = mapAlias["delegaciones"]!;
    mapCamposExc["delegaciones.id_ficha_principal"] = mapAlias["delegaciones"]!;

    mapCamposExc["id_empresa"] = mapAlias["empresas"]!;

    mapCamposExc["id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["id_almacen_urdi"] = "${mapAlias["almacenes"]!}_Urdi";
    mapCamposExc["id_almacen_destino"] = "${mapAlias["almacenes"]!}_Des";
    mapCamposExc["id_almacen_origen"] = "${mapAlias["almacenes"]!}_Ori";
    mapCamposExc["id_almacen_pedidos"] = "${mapAlias["almacenes"]!}_Ped";
    mapCamposExc["id_almacen_unico"] = "${mapAlias["almacenes"]!}_Unico";

    mapCamposExc["id_personal"] = mapAlias["personal"]!;
    mapCamposExc["id_personal_encontrado"] = "${mapAlias["personal"]!}_Enc";
    mapCamposExc["id_personal_envio"] = "${mapAlias["personal"]!}_Env";
    mapCamposExc["id_autorizacion"] = "${mapAlias["personal"]!}_Aut";
    mapCamposExc["doc_almacen.id_recepcion"] = "${mapAlias["personal"]!}_Rec";
    mapCamposExc["doc_pro.id_recepcion"] = "${mapAlias["personal"]!}_Rec";
    mapCamposExc["habitaciones.id_camarera"] = "${mapAlias["personal"]!}_Cam";
    mapCamposExc["remesas.id_ordenante"] = "${mapAlias["personal"]!}_Ord";
    mapCamposExc["remesas.id_presentador"] = "${mapAlias["personal"]!}_Pres";


    mapCamposExc["articulos.id_especie_defecto"] = "${mapAlias["especies"]!}_Def";

    mapCamposExc["clientes.id_especie_defecto"] = "${mapAlias["especies"]!}_Def";
    mapCamposExc["clientes.id_ficha_fiscal"] = "${mapAlias["clientes"]!}_Fiscal";
    mapCamposExc["clientes.id_ficha_varios"] = "${mapAlias["clientes"]!}_Varios";

    mapCamposExc["proveedores.id_ficha_fiscal"] = "${mapAlias["proveedores"]!}_Fiscal";
    mapCamposExc["proveedores.id_ficha_varios"] = "${mapAlias["proveedores"]!}_Varios";

    mapCamposExc["doc_cli.id_devolucion"] = "${mapAlias["doc_cli"]}_Dev";

    mapCamposExc["doc_cli_valores.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["doc_cli_valores.id_documento"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli_valores.id_retencion"] = mapAlias["retenciones"]!;

    mapCamposExc["doc_clix.id_documento"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_clix.id_procedencia"] = "${mapAlias["doc_cli"]}_Proc";
    mapCamposExc["doc_clix.id_doc_clix"] = mapAlias["doc_clix"]!;
    mapCamposExc["doc_clix.id_doc_origen"] = "${mapAlias["doc_cli"]}_Orig";
    mapCamposExc["doc_clix.id_docx_menu"] = "${mapAlias["doc_clix"]}_Menu";
    mapCamposExc["doc_clix.id_grupo_acto_evento"] = "${mapAlias["doc_clix"]}_Acto";
    mapCamposExc["doc_clix.id_grupo_impresion"] = "${mapAlias["doc_clix"]}_GrpImp";


    mapCamposExc["fabricacion.id_fabricacion_cfg"] = mapAlias["fabricacion_cfg"]!;
    mapCamposExc["fabricacion.id_fabricacion_grupo"] = mapAlias["fabricacion_grupo"]!;
    mapCamposExc["fabricacionx.id_fabricacion"] = mapAlias["fabricacion"]!;
    mapCamposExc["provincias.id_grupo"] = mapAlias["grupos_g"]! ;
    mapCamposExc["provincias.id_region"] = "${mapAlias["grupos_g"]}_Reg" ;
    mapCamposExc["usuarios.id_perfil"] = mapAlias["usuarios_perfiles"]!;

    mapCamposExc["carta_articulos.id_grupo"] = mapAlias["carta_grupos"]!;
    mapCamposExc["carta_grupos.id_carta"] = "${mapAlias["grupos"]!}_Carta";
    mapCamposExc["carta_grupos.id_grupofactura"] = "${mapAlias["grupos"]!}_Fac";
    mapCamposExc["carta_grupos.id_impresora1"] = "${mapAlias["dispositivos"]!}_Imp1";
    mapCamposExc["carta_grupos.id_impresora2"] = "${mapAlias["dispositivos"]!}_Imp2";

    mapCamposExc["id_banco"] = mapAlias["bancos"]!;

    mapCamposExc["id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["conocimientos.id_usuario2"] = "${mapAlias["usuarios"]!}_Con";
    mapCamposExc["incidencias.id_usuario_autorizado"] = "${mapAlias["usuarios"]!}_Aut";
    mapCamposExc["hst_doc_hotel.id_usuario_proceso"] =  "${mapAlias["usuarios"]!}_DH";




    /// *********************************

    mapCamposExc["id_remitente_contacto"] = "contacRemit"; // nombres
    mapCamposExc["id_asignatura"] = "grpAsig";
    mapCamposExc["id_carta"] = "grpCarta";
    mapCamposExc["id_categoria"] = "arbCat"; //Articulos
    mapCamposExc["id_categoria_web"] = "arbWeb1";
    mapCamposExc["id_categoria_web2"] = "arbWeb2";
    mapCamposExc["id_categoria_web3"] = "arbWeb3";
    mapCamposExc["id_categoria_web4"] = "arbWeb4";
    mapCamposExc["id_certificado_recetas"] = "blobCertRec";
    mapCamposExc["id_coleccion"] = "grpColec";
    mapCamposExc["id_coleccionable"] = "colec";
    mapCamposExc["id_como_pago"] = "metPag"; //
    mapCamposExc["id_compuesto"] = "artComp"; //ArtCompuestosSQL

    mapCamposExc["id_contacto_externo"] = "contacExt";
    mapCamposExc["id_contrapartida"] = "ctasCP"; //Cuentas
    mapCamposExc["id_contrato"] = "manCon"; // mantenimientos
    mapCamposExc["id_contrato2"] = "manCon2";
    mapCamposExc["id_criterio_comision"] = "grpCriComis";
    mapCamposExc["id_criterio_tarifa"] = "grpCriTar";
    mapCamposExc["id_cuando_pago"] = "plazos"; //
    mapCamposExc["id_cta_anticipos"] = "ctasAntic";
    mapCamposExc["id_cta_pendiente"] = "ctasPend";
    mapCamposExc["id_cta_salarios"] = "ctasSalar";
    mapCamposExc["id_cuenta_especial"] = "ctasEsp";
    mapCamposExc["id_cuenta_ingresos"] = "ctasIngr";
    mapCamposExc["id_cuenta"] = "ctas";
    mapCamposExc["id_curso"] = "grpCurso";


    mapCamposExc["id_estadistica_pais"] = "grpEstPais"; //
    mapCamposExc["id_estado"] = "grpEstado";
    mapCamposExc["id_fabricante"] = "fab";
    mapCamposExc["id_forma_envio"] = "logiFormEnv";
    mapCamposExc["id_grupo_articulos_doc"] = "grpArtDoc";
    mapCamposExc["id_grupo_calendario"] = "grpCalen";
    mapCamposExc["id_grupo_cubiculo"] = "grpCubic";
    mapCamposExc["id_grupo_destino"] = "grpDest";
    mapCamposExc["id_grupo_personal"] = "arbGrpPers";
    mapCamposExc["id_grupo_proveedores"] = "arbGrpProv"; // CentroCostesDefectoSQL
    mapCamposExc["id_grupo_series_defecto"] = "grpSerDef";
    mapCamposExc["id_grupo_spa"] = "grpSpa";
    mapCamposExc["id_grupo_ine"] = "grpINE";
    mapCamposExc["id_grupofactura"] = "grpFac"; // CartaGruposSQL
    mapCamposExc["id_impuesto"] = "imp";
    mapCamposExc["id_ingrediente"] = "artIngr"; //ArtIngredientesSQL
    mapCamposExc["id_marca_hora"] = "grpMH"; // grupos
    mapCamposExc["id_padre"] = "padre"; // padre de la misma tabla

    mapCamposExc["id_presentador"] = "presentador";
    mapCamposExc["id_ordenante"] = "ordenante";
    mapCamposExc["id_perfil_campos_aux"] = "perfCampAux";

    mapCamposExc["id_retencion"] = "reten";
    mapCamposExc["id_sub_balance"] = "balSub"; // Balances
    mapCamposExc["id_tipo_contingente"] = "arbTipoCon";
    mapCamposExc["id_tipo_paquete_circuito"] = "grpTipoPaq";
    mapCamposExc["id_tipo_tratamiento"] = "grpTipoTrat";
    mapCamposExc["id_transportista"] = "transp";
    mapCamposExc["id_estante"] = "est";

    mapCamposExc["id_cta_hpdeudora"] = "ctaHpDeud";
    mapCamposExc["id_cta_hpacreedora"] = "ctaHpAcre";
    mapCamposExc["id_art_lotes"] = "artLot";

    mapCamposExc["id_impresora"] = "disposImp";
    mapCamposExc["id_ticadora"] = "disposTic";
    mapCamposExc["id_visor"] = "disposVisor";
    mapCamposExc["id_scanner_barras"] = "disposScanBarras";
    mapCamposExc["id_scanner_mag"] = "disposScanMag";
    mapCamposExc["id_bascula"] = "disposBasc";
    mapCamposExc["id_smart_card"] = "disposSmartCard";
    mapCamposExc["id_srv_in_hova1"] = "disposSrvInHova1";
    mapCamposExc["id_srv_in_hova2"] = "disposSrvInHova2";
    mapCamposExc["id_firma_manuscrita"] = "disposFirmaMan";
    mapCamposExc["id_impresora1_comandero"] = "disposImp1Com";
    mapCamposExc["id_impresora2_comandero"] = "disposImp2Com";
    mapCamposExc["id_impresora3_comandero"] = "disposImp3Com";
    mapCamposExc["id_terminal_cobro"] = "disposTermCob";
    mapCamposExc["id_etiquetadora"] = "disposEtiq";
    mapCamposExc["id_verificador_precios"] = "disposVerPrec";
    mapCamposExc["id_scanner_verificador"] = "disposScanVer";
    mapCamposExc["id_cajon"] = "cajon";
    mapCamposExc["id_cfg_fondo"] = "cfgFondo";
    mapCamposExc["id_cfg_menu"] = "cfgMenu";
    mapCamposExc["id_cuenta_email"] = "ctasEmail";


    /// Ultimos: una vez comprobados se ordenan
    mapCamposExc["id_cabecera_informes"] = "infCfgCab";
    mapCamposExc["id_pie_informes"] = "infCfgPie";
    mapCamposExc["id_cabecera_doc_a4"] = "infCfgCabA4";
    mapCamposExc["id_pie_doc_a4"] = "infCfgPieA4";
    mapCamposExc["id_cabecera_doc_a5"] = "infCfgCabA5";
    mapCamposExc["id_pie_doc_a5"] = "infCfgPieA5";

    mapCamposExc["id_cli_tarifa_articulos_defecto"] = "tarCliDef";
    mapCamposExc["id_cli_tarifa_excepciones_defecto"] = "tarCliExcDef";
    mapCamposExc["id_cli_tarifa_hotel_defecto"] = "tarCliHotDef";
    mapCamposExc["id_cli_grupo_series_entregas_acta"] = "grpSerEntActa";
    mapCamposExc["id_cli_metodo_cobro_defecto"] = "metPagCliDef";
    mapCamposExc["id_cli_periodicidad_defecto"] = "plazosCliDef";
    mapCamposExc["id_pro_metodo_pago_defecto"] = "metPagPrvdDef";
    mapCamposExc["id_pro_periodicidad_defecto"] = "plazosPrvdDef";

    mapCamposExc["id_cli_veterinario_defecto"] = "veterCliDef";
    mapCamposExc["id_pro_serie_defecto"] = "serPrvdDef";
    mapCamposExc["id_pro_serie_alternativa"] = "serPrvdAlt";
    mapCamposExc["id_certificado_pdf"] = "blobsCertPdf";
    mapCamposExc["id_cfg_fichero_policia"] = "cfgFichPol";
    mapCamposExc["id_remitente_cliente"] = "cliRemit";
    mapCamposExc["id_envio_cliente"] = "cliEnvio";
    mapCamposExc["id_web_client"] = "cliWeb";
    mapCamposExc["id_remitente_contacto"] = "contacRemit"; // nombres
    mapCamposExc["id_envio_contacto"] = "contacEnvio";
    mapCamposExc["id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["id_grupo_series"] = "grpSer";
    mapCamposExc["id_dispositivo"] = "dispos";
    mapCamposExc["id_puesto"] = "puesto";
    mapCamposExc["id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["id_veterinario"] = "veter";
    mapCamposExc["id_veterinario_responsable"] = "veterResp";



/*

    mapCamposExc["aeatx.id_aeat"] = mapAlias["aeat"]!;
    mapCamposExc["agenda.id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["agenda.id_marca_hora"] = mapAlias["grupos"]!;
    mapCamposExc["agenda.id_padre"] = mapAlias["agenda"]!;

    mapCamposExc["agenda.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["aparatos.id_contacto_externo"] = mapAlias["contactos_externos"]!;
    mapCamposExc["aparatos.id_contrato"] = mapAlias["mantenimientos"]!;
    mapCamposExc["aparatos.id_contrato2"] = mapAlias["mantenimientos"]!;
    mapCamposExc["aparatos.id_doc_cli_copias"] = mapAlias["doc_cli"]!;
    mapCamposExc["aparatos.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["aparatos.id_instalacion"] = mapAlias["instalaciones"]!;
    mapCamposExc["aparatos.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["apuntes.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["apuntes.id_contrapartida"] = mapAlias["cuentas"]!;
    mapCamposExc["apuntes.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["arboles.id_padre"] = mapAlias["arboles"]!;
    mapCamposExc["arboles.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["arboles_auxiliares.id_padre"] = mapAlias["arboles_auxiliares"]!;
    mapCamposExc["arboles_auxiliares.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;

    mapCamposExc["areas_compra.id_modelo_albaranes"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_compra.id_modelo_devoluciones"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_compra.id_modelo_facturas"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_compra.id_modelo_pedidos"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_compra.id_modelo_presupuestos"] = mapAlias["informes_cfg"]!;

    mapCamposExc["areas_venta.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["areas_venta.id_carta"] = mapAlias["grupos"]!;
    mapCamposExc["areas_venta.id_cfg_fichero_policia"] = mapAlias["cfg_fichero_policia"]!;
    mapCamposExc["areas_venta.id_cuenta_especial"] = mapAlias["cuentas_especiales"]!;
    mapCamposExc["areas_venta.id_grupo_destino"] = mapAlias["grupos"]!;
    mapCamposExc["areas_venta.id_imp_albaranes_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_facturas_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_notas_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_pedidos_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_presupuestos_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_tickets_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_albaranes"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_albaranes_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_facturas"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_facturas_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_justificantes"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_justificantes_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_pedidos"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_pedidos_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_presupuestos"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_presupuestos_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_tickets"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_tickets_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impuesto"] = mapAlias["impuestos"]!;
    mapCamposExc["areas_venta.id_modelo_albaranes"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_albaranes_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_facturas"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_facturas_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_notas_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_pedidos"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_pedidos_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_presupuestos"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_presupuestos_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_tickets"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_tickets_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_welcome"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_tarifa1"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["areas_venta.id_tarifa2"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["areas_venta.id_tarifa3"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["areas_venta.id_tarifa_kiosko_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["arqueos.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["arqueos.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["arqueosx.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["arqueosx.id_como_pago"] = mapAlias["metodos_pago"]!;

    mapCamposExc["art_compuestos.id_categoria"] = mapAlias["arboles"]!;

    mapCamposExc["art_lotesx.id_art_lotes"] = mapAlias["art_lotes"]!;
    mapCamposExc["art_revisiones_averias.id_art_revisiones_averias"] = mapAlias["art_revisiones_averias"]!;
    mapCamposExc["art_revisiones_averias.id_averia_revision"] = mapAlias["averias"]!;
    mapCamposExc["art_revisiones_averias.id_partida"] = mapAlias["doc_pro"]!;
    mapCamposExc["art_serie.id_stocks"] = mapAlias["art_stocks"]!;
    mapCamposExc["art_serie_uds_aux.id_stocks"] = mapAlias["art_stocks"]!;

    mapCamposExc["articulos.id_asignatura"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_categoria_web"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_categoria_web2"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_categoria_web3"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_categoria_web4"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_coleccion"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_coleccionable"] = mapAlias["coleccionables"]!;
    mapCamposExc["articulos.id_criterio_comision"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_criterio_tarifa"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_cuenta_especial"] = mapAlias["cuentas_especiales"]!;
    mapCamposExc["articulos.id_curso"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_especie_defecto"] = mapAlias["especies"]!;
    mapCamposExc["articulos.id_estado"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["articulos.id_grupo_articulos_doc"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_grupo_calendario"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_grupo_cubiculo"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_grupo_spa"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_impuesto"] = mapAlias["impuestos"]!;
    mapCamposExc["articulos.id_perfil"] = mapAlias["perfiles"]!;
    mapCamposExc["articulos.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["articulos.id_tipo_paquete_circuito"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_tipo_tratamiento"] = mapAlias["grupos"]!;
    mapCamposExc["asientos.id_documento"] = mapAlias["comisiones"]!;
    mapCamposExc["asientos.id_grupo_series"] = mapAlias["grupos_series"]!;


    mapCamposExc["averias.id_doc_almacen"] = mapAlias["doc_almacen"]!;
    mapCamposExc["averias.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["balances.id_padre"] = mapAlias["balances"]!;
    mapCamposExc["balancesx.id_balance"] = mapAlias["balances"]!;
    mapCamposExc["balancesx.id_sub_balance"] = mapAlias["balances"]!;
    mapCamposExc["bonos_acceso.id_descripcion"] = mapAlias["grupos"]!;
    mapCamposExc["bonos_accesox.id_bono_acceso"] = mapAlias["bonos_acceso"]!;
    mapCamposExc["cajones.id_dispositivo"] = mapAlias["dispositivos"]!;
    mapCamposExc["campos_auxiliares.id_origen"] = mapAlias["aparatos"]!;
    mapCamposExc["campos_auxiliares.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;

    mapCamposExc["carta_articulos.id_impresora1"] = mapAlias["dispositivos"]!;
    mapCamposExc["carta_articulos.id_impresora2"] = mapAlias["dispositivos"]!;
    mapCamposExc["carta_articulos.id_seccion"] = mapAlias["secciones"]!;
    mapCamposExc["carta_clientes_articulos.id_carta_clientes_grupo"] = mapAlias["carta_clientes_grupos"]!;
    mapCamposExc["carta_clientes_grupos.id_carta_clientes"] = mapAlias["carta_clientes"]!;
    mapCamposExc["categorias_de.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["categorias_de.id_quien"] = mapAlias["clientes"]!;
    mapCamposExc["centro_costes_arbolesx.id_padre"] = mapAlias["centro_costes_arbolesx"]!;
    mapCamposExc["centro_costes_defecto.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["centro_costes_defecto.id_grupo_personal"] = mapAlias["arboles"]!;
    mapCamposExc["centro_costes_defecto.id_grupo_proveedores"] = mapAlias["arboles"]!;
    mapCamposExc["centro_costes_defecto.id_proyecto"] = mapAlias["centro_costes_proyectos"]!;
    mapCamposExc["centro_costes_valores.id_doc_pro"] = mapAlias["doc_pro"]!;
    mapCamposExc["centro_costes_valores.id_doc_prox"] = mapAlias["doc_prox"]!;
    mapCamposExc["centro_costes_valores.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["centro_costes_valores.id_nomina"] = mapAlias["nominas"]!;
    mapCamposExc["centro_costes_valores.id_proyecto"] = mapAlias["centro_costes_proyectos"]!;
    mapCamposExc["centro_informes.id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["centro_informesx.id_centro_informes"] = mapAlias["centro_informes"]!;
    mapCamposExc["centro_informesx.id_presets"] = mapAlias["informes_cfg"]!;
    mapCamposExc["cfg_campos_auxiliares.id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["cfg_campos_auxiliares.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["cfg_central_reservas.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["cfg_central_reservas.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["cfg_central_reservas_cargos.id_cfg_central_reservas"] = mapAlias["cfg_central_reservas"]!;
    mapCamposExc["cfg_central_reservas_cargos.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["cfg_central_reservas_cargos.id_tipo_habitacion"] = mapAlias["tipo_habitaciones"]!;
    mapCamposExc["cfg_central_reservas_cargos_xpersona.id_cfg_central_reservas"] = mapAlias["cfg_central_reservas"]!;
    mapCamposExc["cfg_central_reservas_cargos_xpersona.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["cfg_central_reservas_clientes_agencias.id_cfg_central_reservas"] = mapAlias["cfg_central_reservas"]!;
    mapCamposExc["cfg_central_reservas_clientes_agencias.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["cfg_central_reservas_clientes_agencias.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["cfg_central_reservas_sincronizacion_auto.id_cfg_central_reservas"] = mapAlias["cfg_central_reservas"]!;
    mapCamposExc["cfg_fondox.id_cfg_fondo"] = mapAlias["cfg_fondo"]!;
    mapCamposExc["cfg_menux.id_cfg_menu"] = mapAlias["cfg_menu"]!;
    mapCamposExc["clientes.id_agencia"] = mapAlias["clientes"]!;

    mapCamposExc["clientes.id_contable_efactura"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_contacto_externo"] = mapAlias["contactos_externos"]!;
    mapCamposExc["clientes.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["clientes.id_cuenta_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["clientes.id_especie_defecto"] = mapAlias["especies"]!;
    mapCamposExc["clientes.id_ficha_fiscal"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_ficha_varios"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_forma_envio"] = mapAlias["logi_formas"]!;
    mapCamposExc["clientes.id_grupo"] = mapAlias["arboles"]!;
    mapCamposExc["clientes.id_grupo_ine"] = mapAlias["grupos"]!;
    mapCamposExc["clientes.id_pagador_efactura"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_receptor_efactura"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["clientes.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["clientes.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["clientes.id_veterinario"] = mapAlias["veterinarios"]!;
    mapCamposExc["clientes.id_veterinario_responsable"] = mapAlias["veterinarios"]!;
    mapCamposExc["clientes.id_web_client"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_zona"] = mapAlias["zonas"]!;
    mapCamposExc["clientesx.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["clientesx.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["clientesx.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["comanda_visual.id_doc_hotel"] = mapAlias["doc_hotel"]!;
    mapCamposExc["comisiones.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["comisiones.id_comisionista"] = mapAlias["comisionistas"]!;
    mapCamposExc["comisiones.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["comisiones.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["comisionesx.id_comis_confirm"] = mapAlias["comisiones"]!;
    mapCamposExc["comisionesx.id_comis_retro"] = mapAlias["comisiones"]!;
    mapCamposExc["comisionesx.id_comisiones"] = mapAlias["comisiones"]!;
    mapCamposExc["comisionesx.id_comisionista"] = mapAlias["comisionistas"]!;
    mapCamposExc["comisionesx.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["comisionesx.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["comisionistas.id_grupo"] = mapAlias["grupos_comisiones"]!;
    mapCamposExc["comisionistasx.id_comisionista"] = mapAlias["comisionistas"]!;
    mapCamposExc["comisionistasx.id_grupo"] = mapAlias["grupos_comisiones"]!;
    mapCamposExc["conceptos_contables.id_contrapartida"] = mapAlias["cuentas"]!;
    mapCamposExc["conceptos_contables.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["conocimientos.id_duplicado"] = mapAlias["conocimientos"]!;
    mapCamposExc["conocimientos.id_instalacion"] = mapAlias["instalaciones"]!;
    mapCamposExc["conocimientos.id_sector"] = mapAlias["grupos"]!;
    mapCamposExc["conocimientosx.id_conocimientos"] = mapAlias["conocimientos"]!;
    mapCamposExc["ctas_anuales_celdas.id_cta_anual"] = mapAlias["ctas_anuales"]!;
    mapCamposExc["ctas_anuales_claves.id_cta_anual"] = mapAlias["ctas_anuales"]!;

    mapCamposExc["cuentas_bancarias.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_bancarias.id_cuenta_dto_efectos"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_bancarias.id_ficha"] = mapAlias["clientes"]!;
    mapCamposExc["cuentas_especiales.id_cta_existencias"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_especiales.id_cta_gastos"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_especiales.id_cta_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_especiales.id_cta_socios_gastos"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_especiales.id_cta_socios_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["cupos.id_central_reservas"] = mapAlias["comisionistas"]!;
    mapCamposExc["cuposx.id_cupo"] = mapAlias["cupos"]!;
    mapCamposExc["delegaciones.id_cabecera_doc_a4"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_cabecera_doc_a5"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_cabecera_informes"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_certificado_pdf"] = mapAlias["app_blobs"]!;
    mapCamposExc["delegaciones.id_cfg_fichero_policia"] = mapAlias["cfg_fichero_policia"]!;
    mapCamposExc["delegaciones.id_cli_grupo_series_entregas_acta"] = mapAlias["grupos_series"]!;
    mapCamposExc["delegaciones.id_cli_metodo_cobro_defecto"] = mapAlias["metodos_pago"]!;
    mapCamposExc["delegaciones.id_cli_periodicidad_defecto"] = mapAlias["plazos_pago"]!;
    mapCamposExc["delegaciones.id_cli_tarifa_articulos_defecto"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["delegaciones.id_cli_tarifa_excepciones_defecto"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["delegaciones.id_cli_tarifa_hotel_defecto"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["delegaciones.id_cli_veterinario_defecto"] = mapAlias["veterinarios"]!;

    mapCamposExc["delegaciones.id_pie_doc_a4"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_pie_doc_a5"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_pie_informes"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_pro_metodo_pago_defecto"] = mapAlias["metodos_pago"]!;
    mapCamposExc["delegaciones.id_pro_periodicidad_defecto"] = mapAlias["plazos_pago"]!;
    mapCamposExc["delegaciones.id_pro_serie_alternativa"] = mapAlias["series"]!;
    mapCamposExc["delegaciones.id_pro_serie_defecto"] = mapAlias["series"]!;
    mapCamposExc["delegaciones.id_transportista_defecto"] = mapAlias["transportistas"]!;
    mapCamposExc["destinos.id_tienda_virtual"] = mapAlias["tiendas_virtuales"]!;
    mapCamposExc["dias_pago.id_plazos"] = mapAlias["plazos_pago"]!;
    mapCamposExc["dispositivos.id_dispositivo"] = mapAlias["dispositivos"]!;

    mapCamposExc["doc_almacen.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_almacen.id_doc_pro"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_almacen.id_doc_traspaso"] = mapAlias["doc_almacen"]!;
    mapCamposExc["doc_almacen.id_grupo_destino"] = mapAlias["grupos"]!;
    mapCamposExc["doc_almacen.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["doc_almacen.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["doc_almacenx.id_doc_cli_depositario"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_almacenx.id_documento"] = mapAlias["doc_almacen"]!;
    mapCamposExc["doc_almacenx.id_partida"] = mapAlias["doc_pro"]!;

    mapCamposExc["doc_cli.id_anterior"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_asiento"] = mapAlias["asientos"]!;

    mapCamposExc["doc_cli.id_cierre_caja"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["doc_cli.id_contacto_externo"] = mapAlias["contactos_externos"]!;
    mapCamposExc["doc_cli.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["doc_cli.id_destino"] = mapAlias["logi_destinos"]!;
    mapCamposExc["doc_cli.id_devolucion"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_doc_pro_transfer"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_cli.id_envio_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["doc_cli.id_envio_contacto"] = mapAlias["nombres"]!;
    mapCamposExc["doc_cli.id_factura_rectificada"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_factura_ticket"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_facturado"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_forma_envio"] = mapAlias["logi_formas"]!;
    mapCamposExc["doc_cli.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["doc_cli.id_inversion_sp"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_cli.id_obra"] = mapAlias["obras"]!;
    mapCamposExc["doc_cli.id_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_pedido_reserva"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["doc_cli.id_remitente_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["doc_cli.id_remitente_contacto"] = mapAlias["nombres"]!;
    mapCamposExc["doc_cli.id_reservador"] = mapAlias["clientes"]!;
    mapCamposExc["doc_cli.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["doc_cli.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["doc_cli.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["doc_cli.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["doc_cli.id_vehiculo"] = mapAlias["vehiculos"]!;
    mapCamposExc["doc_cli.id_veterinario"] = mapAlias["veterinarios"]!;
    mapCamposExc["doc_cli.id_web_client"] = mapAlias["clientes"]!;


    mapCamposExc["doc_clix.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["doc_clix.id_contacto_externo"] = mapAlias["contactos_externos"]!;
    mapCamposExc["doc_clix.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["doc_clix.id_habitacion_cargo"] = mapAlias["habitaciones"]!;
    mapCamposExc["doc_clix.id_mantenimiento"] = mapAlias["mantenimientos"]!;
    mapCamposExc["doc_clix.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["doc_clix.id_montaje_salon"] = mapAlias["grupos"]!;
    mapCamposExc["doc_clix.id_partida"] = mapAlias["doc_pro"]!;

    mapCamposExc["doc_clix.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["doc_clix.id_receta"] = mapAlias["recetas"]!;
    mapCamposExc["doc_clix.id_reservador"] = mapAlias["clientes"]!;
    mapCamposExc["doc_clix.id_sub_compuesto"] = mapAlias["doc_clix"]!;
    mapCamposExc["doc_clix.id_tarifa_doc"] = mapAlias["tarifas_doc"]!;
    mapCamposExc["doc_clix.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["doc_clix.id_tipo_acto"] = mapAlias["grupos"]!;

    mapCamposExc["doc_hotel.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["doc_hotel.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_hotel.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["doc_hotel.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["doc_hotel.id_reservador"] = mapAlias["clientes"]!;
    mapCamposExc["doc_hotel.id_tarifa_cliente"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["doc_hotel.id_tarifa_empresa"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["doc_hotel.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["doc_hotel.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["doc_hotel_xprevision.id_doc_hotelx"] = mapAlias["doc_hotelx"]!;

    mapCamposExc["doc_hotelx.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["doc_hotelx.id_cupo"] = mapAlias["cupos"]!;
    mapCamposExc["doc_hotelx.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_hotelx.id_doc_hotelx"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_documento"] = mapAlias["doc_hotel"]!;
    mapCamposExc["doc_hotelx.id_docx_menu"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_grupo_acto_evento"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_grupo_impresion"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["doc_hotelx.id_habitacion"] = mapAlias["habitaciones"]!;
    mapCamposExc["doc_hotelx.id_habitacion_cargo"] = mapAlias["habitaciones"]!;
    mapCamposExc["doc_hotelx.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["doc_hotelx.id_montaje_salon"] = mapAlias["grupos"]!;
    mapCamposExc["doc_hotelx.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["doc_hotelx.id_quien_paga"] = mapAlias["clientes"]!;
    mapCamposExc["doc_hotelx.id_sub_compuesto"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["doc_hotelx.id_tipo_acto"] = mapAlias["grupos"]!;
    mapCamposExc["doc_hotelx.id_tipo_habitacion"] = mapAlias["tipo_habitaciones"]!;


    mapCamposExc["doc_pro.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["doc_pro.id_atencion"] = mapAlias["nombres"]!;
    mapCamposExc["doc_pro.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["doc_pro.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["doc_pro.id_devolucion"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro.id_distribuidor"] = mapAlias["proveedores"]!;
    mapCamposExc["doc_pro.id_doc_cli_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_pro.id_doc_cli_transfer"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_pro.id_factura_rectificada"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro.id_facturado"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["doc_pro.id_inversion_sp"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_pro.id_obra"] = mapAlias["obras"]!;
    mapCamposExc["doc_pro.id_pedido"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["doc_pro.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["doc_pro.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["doc_pro.id_visita"] = mapAlias["nombres"]!;
    mapCamposExc["doc_pro_valores.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["doc_pro_valores.id_documento"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro_valores.id_ref_doc_pro"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro_valores.id_retencion"] = mapAlias["retenciones"]!;

    mapCamposExc["doc_prox.id_doc_cli_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_prox.id_doc_origen"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_prox.id_documento"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_prox.id_partida"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_prox.id_procedencia"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_sinlix.id_doc_sinli"] = mapAlias["doc_sinli"]!;
    mapCamposExc["efectos.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["efectos.id_arqueo_pendiente"] = mapAlias["arqueos"]!;
    mapCamposExc["efectos.id_asiento_agrupacion"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_al_banco"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_dudoso_cobro"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_formalizacion"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_incobrable"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_pagado"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_rechazo"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["efectos.id_cierre_caja"] = mapAlias["doc_cli"]!;
    mapCamposExc["efectos.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["efectos.id_consolidado"] = mapAlias["efectos"]!;
    mapCamposExc["efectos.id_cuenta_bancaria"] = mapAlias["cuentas_bancarias"]!;
    mapCamposExc["efectos.id_doc_hotel"] = mapAlias["doc_hotel"]!;
    mapCamposExc["efectos.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["efectos.id_mandato"] = mapAlias["mandatos"]!;
    mapCamposExc["efectos.id_nomina_atrasos"] = mapAlias["nominas"]!;
    mapCamposExc["efectos.id_padre"] = mapAlias["efectos"]!;
    mapCamposExc["efectos.id_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["efectos.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["efectos.id_rechazado"] = mapAlias["efectos"]!;
    mapCamposExc["efectos.id_remesa"] = mapAlias["remesas"]!;
    mapCamposExc["empresas.id_certificado_recetas"] = mapAlias["app_blobs"]!;
    mapCamposExc["empresas.id_grupo_series_defecto"] = mapAlias["grupos_series"]!;

    mapCamposExc["estantesx.id_estante"] = mapAlias["estantes"]!;
    mapCamposExc["fabricacion.id_doc_almacen_entrada"] = mapAlias["doc_almacen"]!;
    mapCamposExc["fabricacion.id_doc_almacen_salida"] = mapAlias["doc_almacen"]!;
    mapCamposExc["fabricacion.id_fabricacion_cfg"] = mapAlias["fabricacion_cfg"]!;
    mapCamposExc["fabricacion.id_fabricacion_grupo"] = mapAlias["fabricacion_grupo"]!;
    mapCamposExc["fabricacion.id_modelo_etiqueta_articulo"] = mapAlias["informes_cfg"]!;
    mapCamposExc["fabricacion.id_modelo_etiqueta_cajas"] = mapAlias["informes_cfg"]!;
    mapCamposExc["fabricacion_cfg.id_modelo_etiqueta_articulo"] = mapAlias["informes_cfg"]!;
    mapCamposExc["fabricacion_cfg.id_modelo_etiqueta_cajas"] = mapAlias["informes_cfg"]!;
    mapCamposExc["fabricacion_etapas.id_plantilla"] = mapAlias["fabricacion_etapas"]!;
    mapCamposExc["fabricacion_etapasx.id_fabricacion_etapas"] = mapAlias["fabricacion_etapas"]!;
    mapCamposExc["fabricacion_etapasx.id_fabricacion_grupo"] = mapAlias["fabricacion_grupo"]!;
    mapCamposExc["fabricacion_grupo.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["fabricacion_grupo.id_fabricacion_etapas"] = mapAlias["fabricacion_etapas"]!;
    mapCamposExc["fabricacion_grupo.id_incidencia"] = mapAlias["grupos"]!;
    mapCamposExc["fabricacion_grupo.id_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["fabricacion_grupo.id_plantilla"] = mapAlias["fabricacion_grupo"]!;
    mapCamposExc["fabricacion_grupo.id_prioridad"] = mapAlias["grupos"]!;
    mapCamposExc["fabricacion_tareas.id_centro_trabajo"] = mapAlias["grupos"]!;
    mapCamposExc["fabricacion_tareas.id_tecnico"] = mapAlias["tecnicos"]!;

    mapCamposExc["fabricacionx.id_centro_trabajo"] = mapAlias["grupos"]!;
    mapCamposExc["fabricacionx.id_fabricacion"] = mapAlias["fabricacion"]!;
    mapCamposExc["fabricacionx.id_tarea"] = mapAlias["fabricacion_tareas"]!;
    mapCamposExc["fabricacionx.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["fabricantesx.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["fianzas.id_arqueo_cancelacion"] = mapAlias["arqueos"]!;
    mapCamposExc["fianzas.id_arqueo_constitucion"] = mapAlias["arqueos"]!;
    mapCamposExc["fianzas.id_asiento_cancelacion"] = mapAlias["asientos"]!;
    mapCamposExc["fianzas.id_asiento_constitucion"] = mapAlias["asientos"]!;
    mapCamposExc["fianzas.id_cajon_cancelacion"] = mapAlias["cajones"]!;
    mapCamposExc["fianzas.id_cajon_constitucion"] = mapAlias["cajones"]!;
    mapCamposExc["fianzas.id_cta_fianzas"] = mapAlias["cuentas"]!;
    mapCamposExc["fianzas.id_cta_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["fianzas.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["fianzas.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["fianzasx.id_cta_fianzas"] = mapAlias["cuentas"]!;
    mapCamposExc["fianzasx.id_cta_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["fianzasx.id_fianza"] = mapAlias["fianzas"]!;
    mapCamposExc["grupos_comisionesx.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["grupos_comisionesx.id_criterio_comision"] = mapAlias["grupos"]!;
    mapCamposExc["grupos_comisionesx.id_criterio_tarifa"] = mapAlias["grupos"]!;
    mapCamposExc["grupos_comisionesx.id_grupo"] = mapAlias["grupos_comisiones"]!;

    mapCamposExc["habitaciones.id_cfg_fichero_policia"] = mapAlias["cfg_fichero_policia"]!;
    mapCamposExc["habitaciones.id_srv_in_hova"] = mapAlias["dispositivos"]!;
    mapCamposExc["habitaciones.id_tipo"] = mapAlias["tipo_habitaciones"]!;
    mapCamposExc["habitacionesx.id_habitacion"] = mapAlias["habitaciones"]!;
    mapCamposExc["habitacionesx.id_propiedad"] = mapAlias["habitaciones_props"]!;
    mapCamposExc["hojax.id_hoja"] = mapAlias["hoja"]!;
    mapCamposExc["hotel_dtosx.id_hotel_dtos"] = mapAlias["hotel_dtos"]!;

    mapCamposExc["hst_doc_hotel.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["hst_doc_hotel.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["hst_doc_hotel.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["hst_doc_hotel.id_puesto_proceso"] = mapAlias["puestos"]!;
    mapCamposExc["hst_doc_hotel.id_reservador"] = mapAlias["clientes"]!;
    mapCamposExc["hst_doc_hotel.id_tarifa_cliente"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["hst_doc_hotel.id_tarifa_empresa"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["hst_doc_hotel.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["hst_doc_hotel.id_transportista"] = mapAlias["transportistas"]!;

    mapCamposExc["hst_doc_hotelx.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["hst_doc_hotelx.id_cupo"] = mapAlias["cupos"]!;
    mapCamposExc["hst_doc_hotelx.id_doc_xmenu"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_documento"] = mapAlias["hst_doc_hotel"]!;
    mapCamposExc["hst_doc_hotelx.id_grupo_acto_evento"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_grupo_impresion"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["hst_doc_hotelx.id_habitacion"] = mapAlias["habitaciones"]!;
    mapCamposExc["hst_doc_hotelx.id_habitacion_cargo"] = mapAlias["habitaciones"]!;
    mapCamposExc["hst_doc_hotelx.id_hst_doc_hotelx"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["hst_doc_hotelx.id_montaje_salon"] = mapAlias["grupos"]!;
    mapCamposExc["hst_doc_hotelx.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["hst_doc_hotelx.id_quien_paga"] = mapAlias["clientes"]!;
    mapCamposExc["hst_doc_hotelx.id_sub_compuesto"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["hst_doc_hotelx.id_tipo_acto"] = mapAlias["grupos"]!;
    mapCamposExc["hst_doc_hotelx.id_tipo_habitacion"] = mapAlias["tipo_habitaciones"]!;
    mapCamposExc["hst_ocupantesx.id_hst_doc_hotelx"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_ocupantesx.id_ocupante"] = mapAlias["ocupantes"]!;
    mapCamposExc["hst_recursos_actos.id_hst_doc_hotelx"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_recursos_actos.id_padre"] = mapAlias["hst_recursos_actos"]!;
    mapCamposExc["hst_recursos_actos.id_posicion_persona"] = mapAlias["grupos"]!;
    mapCamposExc["hst_recursos_actos.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["impresoras.id_dispositivo"] = mapAlias["dispositivos"]!;
    mapCamposExc["impresoras.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["impuestosx.id_impuesto"] = mapAlias["impuestos"]!;
    mapCamposExc["informes_cfg.id_cabecera_informe"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfg.id_modelo_design"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfg.id_pie_informe"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfg.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["informes_cfgx.id_dispositivo"] = mapAlias["dispositivos"]!;
    mapCamposExc["informes_cfgx.id_origen"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfgx.id_presets"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfgx.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["informes_usuariosx.id_informes_usuarios"] = mapAlias["informes_usuarios"]!;
    mapCamposExc["inmovilizado.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["inmovilizado.id_cta_acumulado"] = mapAlias["cuentas"]!;
    mapCamposExc["inmovilizado.id_cta_dotacion"] = mapAlias["cuentas"]!;
    mapCamposExc["inmovilizado.id_cta_inmovilizado"] = mapAlias["cuentas"]!;
    mapCamposExc["inmovilizado.id_factura"] = mapAlias["doc_pro"]!;
    mapCamposExc["inmovilizado.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["inmovilizado_valores.id_documento"] = mapAlias["inmovilizado"]!;
    mapCamposExc["inmovilizadox.id_documento"] = mapAlias["inmovilizado"]!;
    mapCamposExc["instalaciones.id_mantenimiento"] = mapAlias["mantenimientos"]!;
    mapCamposExc["instalaciones.id_mayorista"] = mapAlias["clientes"]!;
    mapCamposExc["instalaciones.id_programa"] = mapAlias["programas"]!;
    mapCamposExc["instalaciones.id_vendedor"] = mapAlias["clientes"]!;
    mapCamposExc["instalaciones_props.id_instalacion"] = mapAlias["instalaciones"]!;
    mapCamposExc["instalaciones_props.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["instalacionesx.id_instalacion"] = mapAlias["instalaciones"]!;

    mapCamposExc["inventario.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["inventariox.id_inventario"] = mapAlias["inventario"]!;
    mapCamposExc["inventariox.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["logi_destinos.id_forma_envio"] = mapAlias["logi_formas"]!;
    mapCamposExc["logi_envios.id_destino"] = mapAlias["logi_destinos"]!;
    mapCamposExc["logi_envios.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["logi_envios.id_factura"] = mapAlias["doc_pro"]!;
    mapCamposExc["logi_envios.id_forma_envio"] = mapAlias["logi_formas"]!;
    mapCamposExc["logi_envios.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["logi_envios.id_vehiculo"] = mapAlias["vehiculos"]!;
    mapCamposExc["logi_formas.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["logi_unidades.id_envio"] = mapAlias["logi_envios"]!;
    mapCamposExc["logi_unidades.id_formato"] = mapAlias["logi_formatos"]!;
    mapCamposExc["logi_unidadesx.id_unidad"] = mapAlias["logi_unidades"]!;
    mapCamposExc["mandatos.id_cta_cliente"] = mapAlias["cuentas_bancarias"]!;
    mapCamposExc["mandatos.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["mantenimientos.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["mantenimientos.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["mantenimientos.id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["mensajes.id_ficha"] = mapAlias["almacenes"]!;
    mapCamposExc["menu_eventos.id_tipo"] = mapAlias["grupos"]!;
    mapCamposExc["menu_eventosx.id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["menu_eventosx.id_menu_eventos"] = mapAlias["menu_eventos"]!;
    mapCamposExc["menu_restx.id_impresora1"] = mapAlias["dispositivos"]!;
    mapCamposExc["menu_restx.id_impresora2"] = mapAlias["dispositivos"]!;
    mapCamposExc["menu_restx.id_menu_rest"] = mapAlias["menu_rest"]!;
    mapCamposExc["menu_restx.id_seccion"] = mapAlias["secciones"]!;
    mapCamposExc["messenger.id_de_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["messenger.id_de_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["messengerx.id_messenger"] = mapAlias["messenger"]!;
    mapCamposExc["messengerx.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["metodos_pago.id_alt_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["metodos_pago.id_cta_bancaria"] = mapAlias["cuentas_bancarias"]!;
    mapCamposExc["metodos_pago.id_cta_dto_efectos"] = mapAlias["cuentas"]!;
    mapCamposExc["metodos_pago.id_cta_gastos"] = mapAlias["cuentas"]!;
    mapCamposExc["metodos_pago.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["nombres.id_ficha"] = mapAlias["clientes"]!;
    mapCamposExc["nombres.id_web_client"] = mapAlias["clientes"]!;
    mapCamposExc["nominas.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["nominas.id_asiento_pago_remun_lp"] = mapAlias["asientos"]!;
    mapCamposExc["nominas.id_cta_creditos_cp"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_creditos_lp"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_en_especie"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_indemnizaciones"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_otras_deducciones"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_otros_devengos"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_prestaciones_ss"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_retencion_ss"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_retencion_ssempresa"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_ssempresa"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cuenta_bancaria"] = mapAlias["cuentas_bancarias"]!;
    mapCamposExc["nominas.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["nominas.id_retencion_irpf"] = mapAlias["retenciones"]!;
    mapCamposExc["nominas.id_sindicato"] = mapAlias["proveedores"]!;
    mapCamposExc["numeros_serie.id_contenido"] = mapAlias["art_revisiones_averias"]!;
    mapCamposExc["objetos_perdidos.id_ubicacion_encontrado"] = mapAlias["grupos"]!;
    mapCamposExc["objetos_perdidos.id_ubicacion_guardado"] = mapAlias["grupos"]!;
    mapCamposExc["ocupantesx.id_doc_clix"] = mapAlias["doc_clix"]!;
    mapCamposExc["ocupantesx.id_doc_hotelx"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["ocupantesx.id_ocupante"] = mapAlias["ocupantes"]!;
    mapCamposExc["operaciones_tpv.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["operaciones_tpv.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["operaciones_tpv.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["operaciones_tpv.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["ordenes_trabajo.id_averia"] = mapAlias["averias"]!;
    mapCamposExc["ordenes_trabajo.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["ordenes_trabajo.id_etapa"] = mapAlias["grupos"]!;
    mapCamposExc["ordenes_trabajo.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["ordenes_trabajo.id_revision"] = mapAlias["revisiones"]!;
    mapCamposExc["ordenes_trabajo.id_tecnico_recepcion"] = mapAlias["tecnicos"]!;
    mapCamposExc["ordenes_trabajo.id_tecnico_trabajo"] = mapAlias["tecnicos"]!;
    mapCamposExc["ordenes_trabajo.id_tipo"] = mapAlias["grupos"]!;
    mapCamposExc["paises.id_estadistica_pais"] = mapAlias["grupos_g"]!;
    mapCamposExc["partes_medicos.id_medico"] = mapAlias["tecnicos"]!;
    mapCamposExc["partes_reparaciones.id_doc_almacen"] = mapAlias["doc_almacen"]!;
    mapCamposExc["partes_reparaciones.id_habitacion"] = mapAlias["habitaciones"]!;
    mapCamposExc["partes_reparaciones.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["partes_reparaciones.id_tipo"] = mapAlias["grupos"]!;
    mapCamposExc["partes_reparacionesx.id_parte_reparacion"] = mapAlias["partes_reparaciones"]!;

    mapCamposExc["pdas.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["pdas.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["pdas.id_puesto_alternativo"] = mapAlias["puestos"]!;
    mapCamposExc["pdas.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["personal.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["personal.id_cta_anticipos"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_cta_pendiente"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_cta_remun_lp"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_cta_retrib_lp"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_cta_salarios"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_grupo"] = mapAlias["arboles"]!;
    mapCamposExc["pid.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["presupuestos.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["presupuestos.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["prevision.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["prevision.id_ficha_prevision"] = mapAlias["prevision"]!;
    mapCamposExc["proveedores.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["proveedores.id_cuenta_gastos"] = mapAlias["cuentas"]!;
    mapCamposExc["proveedores.id_ficha_fiscal"] = mapAlias["proveedores"]!;
    mapCamposExc["proveedores.id_ficha_varios"] = mapAlias["proveedores"]!;
    mapCamposExc["proveedores.id_grupo"] = mapAlias["arboles"]!;
    mapCamposExc["proveedores.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["proveedores.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["proveedoresx.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["proveedoresx.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["provincias.id_grupo"] = mapAlias["grupos_g"]!;
    mapCamposExc["provincias.id_region"] = mapAlias["grupos_g"]!;
    mapCamposExc["puestos.id_bascula"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_etiquetadora"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_firma_manuscrita"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_impresora"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_impresora1_comandero"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_impresora2_comandero"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_impresora3_comandero"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_scanner_barras"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_scanner_mag"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_scanner_verificador"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_smart_card"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_srv_in_hova1"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_srv_in_hova2"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_terminal_cobro"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_ticadora"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_verificador_precios"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_visor"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestosx.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["puestosx.id_carta_autopedido"] = mapAlias["carta_clientes"]!;
    mapCamposExc["puestosx.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["puntos_clientes.id_documento"] = mapAlias["doc_cli"]!;
    mapCamposExc["puntos_clientes.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["rangos_barras.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["recetas.id_especie"] = mapAlias["especies"]!;
    mapCamposExc["recetas.id_veterinario"] = mapAlias["veterinarios"]!;
    mapCamposExc["recursos_actos.id_doc_clix"] = mapAlias["doc_clix"]!;
    mapCamposExc["recursos_actos.id_doc_hotelx"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["recursos_actos.id_padre"] = mapAlias["recursos_actos"]!;
    mapCamposExc["recursos_actos.id_posicion_persona"] = mapAlias["grupos"]!;
    mapCamposExc["recursos_actos.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["remesas.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["remesas.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["remesas.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["remesas_asientos.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["remesas_asientos.id_remesa"] = mapAlias["remesas"]!;
    mapCamposExc["reservas_rest.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["reservas_rest.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["reservas_rest.id_tipo"] = mapAlias["grupos"]!;
    mapCamposExc["reservas_rest.id_turno"] = mapAlias["turnos"]!;
    mapCamposExc["retenciones.id_cta_hpacreedora"] = mapAlias["cuentas"]!;
    mapCamposExc["retenciones.id_cta_hpdeudora"] = mapAlias["cuentas"]!;
    mapCamposExc["retencionesx.id_retencion"] = mapAlias["retenciones"]!;


    mapCamposExc["revisiones.id_doc_almacen"] = mapAlias["doc_almacen"]!;
    mapCamposExc["revisiones.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["rutas_ficheros.id_ficha"] = mapAlias["aparatos"]!;

    mapCamposExc["salonesx.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["seccionesx.id_seccion"] = mapAlias["secciones"]!;
    mapCamposExc["series.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["tarifa_hotel.id_cupo"] = mapAlias["cupos"]!;
    mapCamposExc["tarifa_hotel.id_hotel_dtos"] = mapAlias["hotel_dtos"]!;
    mapCamposExc["tarifa_hotel_clientes.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["tarifa_hotelx.id_tarifa_fija"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["tarifa_hotelx.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["tarifas.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["tarifas.id_criterio_tarifa"] = mapAlias["grupos"]!;
    mapCamposExc["tarifas.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["tarifas.id_tarifa_articulos"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["tarifas.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["tarifas_articulos.id_impuesto"] = mapAlias["impuestos"]!;
    mapCamposExc["tarifas_articulosx.id_tarifa_articulos"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["tarifas_articulosx.id_tarifa_doc"] = mapAlias["tarifas_doc"]!;
    mapCamposExc["tarifas_docx.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["tarifas_docx.id_criterio_tarifa"] = mapAlias["grupos"]!;
    mapCamposExc["tarifas_docx.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["tarifas_docx.id_tarifa_doc"] = mapAlias["tarifas_doc"]!;
    mapCamposExc["tecnicos_revisiones_averias.id_averia_revision"] = mapAlias["averias"]!;
    mapCamposExc["tecnicos_revisiones_averias.id_tarea_tecnicos"] = mapAlias["tareas_tecnicos"]!;
    mapCamposExc["tecnicos_revisiones_averias.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["telepedido_ofertas.id_carta"] = mapAlias["grupos"]!;
    mapCamposExc["telepedido_ofertasx.id_telepedido_ofertas"] = mapAlias["telepedido_ofertas"]!;
    mapCamposExc["tiendas_virtuales.id_tarifa_articulos"] = mapAlias["tarifas_articulos"]!;

    mapCamposExc["tpvext_cajas.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["tpvext_saldos.id_caja"] = mapAlias["tpvext_cajas"]!;
    mapCamposExc["tpvext_saldos.id_operacion"] = mapAlias["tpvext_saldos"]!;
    mapCamposExc["transportistas.id_vehiculo"] = mapAlias["vehiculos"]!;
    mapCamposExc["ubicaciones.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["usuarios.id_cfg_fondo"] = mapAlias["cfg_fondo"]!;
    mapCamposExc["usuarios.id_cfg_menu"] = mapAlias["cfg_menu"]!;
    mapCamposExc["usuarios.id_perfil"] = mapAlias["usuarios_perfiles"]!;
    mapCamposExc["usuarios_perfilesx.id_perfil"] = mapAlias["usuarios_perfiles"]!;
    mapCamposExc["usuariosx.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["usuariosx.id_cuenta_email"] = mapAlias["cuentas_email"]!;

    mapCamposExc["veterinarios.id_certificado"] = mapAlias["app_blobs"]!;
    mapCamposExc["webs.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["webs.id_tarifa_excepciones"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["xsettings.id_puesto"] = mapAlias["puestos"]!;
*/

    return mapCamposExc;
  }


}