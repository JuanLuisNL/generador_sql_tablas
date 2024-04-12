import 'package:generador_sql_tablas/global/relaciones_tablas.dart';

class MapExcepciones {

  static Map<String, String> initMapCamposExcepciones() {
    RelacionesTablas oRelTab = RelacionesTablas();
    Map<String, String> mapAlias = oRelTab.getAliasTablas();
    Map<String, String> mapCamposExc = {};
    mapCamposExc["id_agente1"] = "comisAge1";
    mapCamposExc["id_agente2"] = "comisAge2";
    mapCamposExc["id_agente3"] = "comisAge3";
    mapCamposExc["id_almacen_urdi"] = "almUrdi";
    mapCamposExc["id_arbol01"] = "arbAux01"; // CamposAuxiliaresSQL
    mapCamposExc["id_arbol02"] = "arbAux02";
    mapCamposExc["id_arbol03"] = "arbAux03";
    mapCamposExc["id_arbol04"] = "arbAux04";
    mapCamposExc["id_arbol05"] = "arbAux05";
    mapCamposExc["id_arbol_xgeneral"] = "ccArbXGen"; // CentroCostesArbolesxSQL
    mapCamposExc["id_art_bolsa_telepedido"] = "artBolsaTele";
    mapCamposExc["id_art_gastos_envio_telepedido"] = "artGasTele";
    mapCamposExc["id_articulo_eco_tasas"] = "artEcoTas";
    mapCamposExc["id_articulo_envase"] = "artEnv";
    mapCamposExc["id_articulo_stock"] = "artStk";
    mapCamposExc["id_articulo_portes_web"] = "artPortWeb";
    mapCamposExc["id_asignatura"] = "grpAsig";
    mapCamposExc["id_cargo_cama_supletoria"] = "artCamSup"; //
    mapCamposExc["id_cargo_desayuno"] = "artDesay"; // CfgCentralReservasSQL
    mapCamposExc["id_cargo_media_pension"] = "artMp"; //
    mapCamposExc["id_cargo_pension_completa"] = "artPc"; //
    mapCamposExc["id_cargo_sup_estancia_corta"] = "artSuoEstCor";
    mapCamposExc["id_cargo_sup_extra1"] = "artSupEx1";
    mapCamposExc["id_cargo_sup_extra2"] = "artSupEx2";
    mapCamposExc["id_cargo_sup_extra3"] = "artSupEx3";
    mapCamposExc["id_cargo_sup_individual"] = "artSupInd";
    mapCamposExc["id_cargo_todo_incluido"] = "artTInc"; //
    mapCamposExc["id_cargo_uso_individual"] = "artUsoInd"; //
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
    mapCamposExc["id_contable_efactura"] = "cliConFac";
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
    mapCamposExc["id_delegacion"] = "deleg";
    mapCamposExc["id_empresa"] = "emp";
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
    mapCamposExc["id_metodo_cobro1"] = "metPag1";
    mapCamposExc["id_metodo_cobro2"] = "metPag2";
    mapCamposExc["id_metodo_cobro3"] = "metPag3";
    mapCamposExc["id_metodo_cobro4"] = "metPag4";
    mapCamposExc["id_metodo_cobro5"] = "metPag5";
    mapCamposExc["id_metodo_cobro6"] = "metPag6";
    mapCamposExc["id_metodo_cobro7"] = "metPag7";
    mapCamposExc["id_metodo_cobro8"] = "metPag8";
    mapCamposExc["id_metodo_efectivo"] = "metPagEf";
    mapCamposExc["id_metodo_efectivo_kiosko_hotel"] = "metPagEfKiosko";
    mapCamposExc["id_metodo_pago1"] = "metPagCr1"; //
    mapCamposExc["id_metodo_pago2"] = "metPagCr2"; //
    mapCamposExc["id_metodo_pago3"] = "metPagCr3"; //
    mapCamposExc["id_metodo_tarjeta_kiosko_hotel"] = "metPagTarKiosko";
    mapCamposExc["id_metodo_telepedido"] = "metPagTele";
    mapCamposExc["id_moneda"] = "monedas"; //
    mapCamposExc["id_padre"] = "padre"; // padre de la misma tabla
    mapCamposExc["id_pagador_efactura"] = "cliPagFac";
    mapCamposExc["id_pais"] = "paises";
    mapCamposExc["id_pais_nacionalidad"] = "paisesNac";
    mapCamposExc["id_pais_nif"] = "paisesNIF";
    mapCamposExc["id_presentador"] = "presentador";
    mapCamposExc["id_ordenante"] = "ordenante";


    mapCamposExc["id_perfil_campos_aux"] = "perfCampAux";
    mapCamposExc["id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["id_provincia"] = "provin";
    mapCamposExc["id_receptor_efactura"] = "cliRecFac";
    mapCamposExc["id_retencion"] = "reten";
    mapCamposExc["id_sub_balance"] = "balSub"; // Balances

    mapCamposExc["id_serie_alternativa"] = "${mapAlias["series"]}_alt";
    mapCamposExc["id_serie_alternativa_tickets"] = "${mapAlias["series"]}_altTic";
    mapCamposExc["id_serie_defecto"] = "${mapAlias["series"]}_def";
    mapCamposExc["id_serie_defecto_tickets"] = "${mapAlias["series"]}_defTic";
    mapCamposExc["id_serie_tickets"] = "${mapAlias["series"]}_tic";

    mapCamposExc["id_tarifa"] = mapAlias["tarifas"]!;
    mapCamposExc["id_tarifa1"] = "${mapAlias["tarifas"]}_1";
    mapCamposExc["id_tarifa2"] = "${mapAlias["tarifas"]}_2";
    mapCamposExc["id_tarifa3"] = "${mapAlias["tarifas"]}_3";

    mapCamposExc["id_tarifa_alquiler_no_devuelto"] = "${mapAlias["tarifas"]}_Alq";
    mapCamposExc["id_tarifa_cli_varios"] = "${mapAlias["tarifas"]}_CliVar";
    mapCamposExc["id_tarifa_componentes"] = "${mapAlias["tarifas"]}_comp";
    mapCamposExc["id_tarifa_excepciones"] = "${mapAlias["tarifas"]}_Excep";
    mapCamposExc["id_tarifa_excepciones_cli_varios"] = "${mapAlias["tarifas"]}_ExcCliVar";
    mapCamposExc["id_tarifa_excepciones_visor_precios"] = "${mapAlias["tarifas"]}_ExcVisor";
    mapCamposExc["id_tarifa_gestion"] = "${mapAlias["tarifas"]}_Gest";
    mapCamposExc["id_tarifa_ofertas_tpvext"] = "${mapAlias["tarifas"]}_Ofer";
    mapCamposExc["id_tarifa_precio_base"] = "${mapAlias["tarifas"]}_PrBase";
    mapCamposExc["id_tarifa_precios_tpvext"] = "${mapAlias["tarifas"]}_PrTpvE";
    mapCamposExc["id_tarifa_visor_precios"] = "${mapAlias["tarifas"]}_Visor";

    mapCamposExc["id_tarifa_aux1"] = "${mapAlias["tarifas_articulos"]}_1";  // los alias no pueden tener guiones bajos
    mapCamposExc["id_tarifa_aux2"] = "${mapAlias["tarifas_articulos"]}_2";
    mapCamposExc["id_tarifa_aux3"] = "${mapAlias["tarifas_articulos"]}_3";
    mapCamposExc["id_tarifa_aux4"] = "${mapAlias["tarifas_articulos"]}_4";
    mapCamposExc["id_tarifa_aux5"] = "${mapAlias["tarifas_articulos"]}_5";

    mapCamposExc["id_tipo_contingente"] = "arbTipoCon";
    mapCamposExc["id_tipo_paquete_circuito"] = "grpTipoPaq";
    mapCamposExc["id_tipo_tratamiento"] = "grpTipoTrat";
    mapCamposExc["id_transportista"] = "transp";
    mapCamposExc["id_ubicacion"] = "ubica";
    mapCamposExc["id_estante"] = "est";
    mapCamposExc["id_articulo"] = "art";
    mapCamposExc["id_cliente"] = "cli";
    mapCamposExc["id_almacen"] = "alm";
    mapCamposExc["id_cta_hpdeudora"] = "ctaHpDeud";
    mapCamposExc["id_cta_hpacreedora"] = "ctaHpAcre";
    mapCamposExc["id_art_lotes"] = "artLot";
    mapCamposExc["id_usuario"] = "usr";
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
    mapCamposExc["id_area_venta1"] = "av1";
    mapCamposExc["id_area_venta2"] = "av2";
    mapCamposExc["id_area_venta3"] = "av3";
    mapCamposExc["id_area_venta4"] = "av4";
    mapCamposExc["id_area_venta5"] = "av5";
    mapCamposExc["id_area_venta6"] = "av6";
    mapCamposExc["id_area_venta"] = "av";
    mapCamposExc["id_area_compra"] = "ac";


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
    mapCamposExc["id_articulo_centralita"] = "artCentr";
    mapCamposExc["id_cli_veterinario_defecto"] = "veterCliDef";
    mapCamposExc["id_pro_serie_defecto"] = "serPrvdDef";
    mapCamposExc["id_pro_serie_alternativa"] = "serPrvdAlt";
    mapCamposExc["id_certificado_pdf"] = "blobsCertPdf";
    mapCamposExc["id_cfg_fichero_policia"] = "cfgFichPol";
    mapCamposExc["id_cliente_varios"] = "cliVarios";
    mapCamposExc["id_remitente_cliente"] = "cliRemit";
    mapCamposExc["id_envio_cliente"] = "cliEnvio";
    mapCamposExc["id_web_client"] = "cliWeb";
    mapCamposExc["id_cliente_agencia"] = "cliAg";
    mapCamposExc["id_remitente_contacto"] = "contacRemit"; // nombres
    mapCamposExc["id_envio_contacto"] = "contacEnvio";
    mapCamposExc["id_asiento"] = "asiento";
    mapCamposExc["id_personal"] = "pers";
    mapCamposExc["id_grupo_series"] = "grpSer";
    mapCamposExc["id_dispositivo"] = "dispos";
    mapCamposExc["id_puesto"] = "puesto";
    mapCamposExc["id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["id_veterinario"] = "veter";
    mapCamposExc["id_veterinario_responsable"] = "veterResp";


    // NO ORDENAR CON LO DE ARRIBA
    mapCamposExc["articulos.id_especie_defecto"] = "artEspDef";
    mapCamposExc["clientes.id_especie_defecto"] = "cliEspDef";
    mapCamposExc["clientes.id_ficha_fiscal"] = "cliFiscal";
    mapCamposExc["fabricacion.id_almacen_destino"] = "almDest";
    mapCamposExc["fabricacion.id_almacen_origen"] = "almOrig";
    mapCamposExc["fabricacion.id_fabricacion_cfg"] = "fabCnCfg";
    mapCamposExc["fabricacion.id_fabricacion_grupo"] = "fabCnGrp";
    mapCamposExc["fabricacionx.id_fabricacion"] = "fabCn";
    mapCamposExc["proveedores.id_ficha_fiscal"] = "${mapAlias["proveedores"]!}_Fiscal";
    mapCamposExc["provincias.id_region"] = "${mapAlias["grupos_g"]}_Reg" ;
    mapCamposExc["provincias.id_grupo"] = mapAlias["grupos_g"]! ;
    mapCamposExc["doc_cli.id_devolucion"] = "${mapAlias["doc_cli"]}_Dev";
    mapCamposExc["usuarios.id_perfil"] = mapAlias["usuarios_perfiles"]!;
    mapCamposExc["clientes.id_ficha_varios"] = "${mapAlias["clientes"]!}_Varios";
    mapCamposExc["proveedores.id_ficha_varios"] = "${mapAlias["proveedores"]!}_Varios";


    return mapCamposExc;
  }

  static Map<String, List<String>> initMapDRowsExcepciones() {
    Map<String, List<String>> map = {};
    map["articulos"] = ["late DRowArtDelegacionesMapping? rowArtDel;"];
    return map;
  }






}