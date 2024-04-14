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

    mapCamposExc["id_delegacion"] = mapAlias["delegaciones"]!;
    mapCamposExc["id_empresa"] = mapAlias["empresas"]!;

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
    mapCamposExc["id_tarifa_componentes"] = "${mapAlias["tarifas_articulos"]}_comp";
    mapCamposExc["id_tarifa_excepciones"] = "${mapAlias["tarifas_articulos"]}_Excep";
    mapCamposExc["id_tarifa_excepciones_visor_precios"] = "${mapAlias["tarifas_articulos"]}_ExcVisor";
    mapCamposExc["id_tarifa_gestion"] = "${mapAlias["tarifas_articulos"]}_Gest";
    mapCamposExc["id_tarifa_ofertas_tpvext"] = "${mapAlias["tarifas_articulos"]}_Ofer";
    mapCamposExc["id_tarifa_precio_base"] = "${mapAlias["tarifas_articulos"]}_PrBase";
    mapCamposExc["id_tarifa_precios_tpvext"] = "${mapAlias["tarifas_articulos"]}_PrTpvE";
    mapCamposExc["id_tarifa_visor_precios"] = "${mapAlias["tarifas_articulos"]}_Visor";
    mapCamposExc["puestosx.id_tarifa_web"] = "${mapAlias["tarifas_articulos"]}_Web";
    mapCamposExc["puestosx.id_tarifa_excepciones_web"] = "${mapAlias["tarifas_articulos"]}_ExcWeb";




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
    mapCamposExc["id_area_venta1"] = "${mapAlias["areas_venta"]!}_1";
    mapCamposExc["id_area_venta2"] = "${mapAlias["areas_venta"]!}_2";
    mapCamposExc["id_area_venta3"] = "${mapAlias["areas_venta"]!}_3";
    mapCamposExc["id_area_venta4"] = "${mapAlias["areas_venta"]!}_4";
    mapCamposExc["id_area_venta5"] = "${mapAlias["areas_venta"]!}_5";
    mapCamposExc["id_area_venta"] = mapAlias["areas_venta"]!;
    mapCamposExc["id_area_compra"] = mapAlias["areas_compra"]!;;


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
    mapCamposExc["articulos.id_especie_defecto"] = "${mapAlias["especies"]!}_Def";
    mapCamposExc["clientes.id_especie_defecto"] = "${mapAlias["especies"]!}_Def";
    mapCamposExc["clientes.id_ficha_fiscal"] = "${mapAlias["clientes"]!}_Fiscal";
    mapCamposExc["clientes.id_ficha_varios"] = "${mapAlias["clientes"]!}_Varios";
    mapCamposExc["doc_cli.id_devolucion"] = "${mapAlias["doc_cli"]}_Dev";
    mapCamposExc["fabricacion.id_almacen_destino"] = "${mapAlias["almacenes"]!}_Des";
    mapCamposExc["fabricacion.id_almacen_origen"] = "${mapAlias["almacenes"]!}_Ori";
    mapCamposExc["fabricacion.id_fabricacion_cfg"] = mapAlias["fabricacion_cfg"]!;
    mapCamposExc["fabricacion.id_fabricacion_grupo"] = mapAlias["fabricacion_grupo"]!;
    mapCamposExc["fabricacionx.id_fabricacion"] = mapAlias["fabricacion"]!;
    mapCamposExc["proveedores.id_ficha_fiscal"] = "${mapAlias["proveedores"]!}_Fiscal";
    mapCamposExc["proveedores.id_ficha_varios"] = "${mapAlias["proveedores"]!}_Varios";
    mapCamposExc["provincias.id_grupo"] = mapAlias["grupos_g"]! ;
    mapCamposExc["provincias.id_region"] = "${mapAlias["grupos_g"]}_Reg" ;
    mapCamposExc["usuarios.id_perfil"] = mapAlias["usuarios_perfiles"]!;



/*
    mapCamposExc["aeatx.id_aeat"] = mapAlias["aeat"]!;
    mapCamposExc["agenda.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["agenda.id_puesto"] = mapAlias["puestos"]!;


    mapCamposExc["agenda.id_padre"] = mapAlias["agenda"]!;
    mapCamposExc["agenda.id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["agenda.id_marca_hora"] = mapAlias["grupos"]!;
    mapCamposExc["agenda.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["agenda.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["agenda.id_personal"] = mapAlias["personal"]!;
    mapCamposExc["almacenes.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["almacenes.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["almacenes.id_ubicacion"] = mapAlias["ubicaciones"]!;


    mapCamposExc["aparatos.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["aparatos.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["aparatos.id_contacto_externo"] = mapAlias["contactos_externos"]!;
    mapCamposExc["aparatos.id_contrato"] = mapAlias["mantenimientos"]!;
    mapCamposExc["aparatos.id_contrato2"] = mapAlias["mantenimientos"]!;
    mapCamposExc["aparatos.id_fabricante"] = mapAlias["fabricantes"]!;


    mapCamposExc["aparatos.id_instalacion"] = mapAlias["instalaciones"]!;
    mapCamposExc["aparatos.id_doc_cli_copias"] = mapAlias["doc_cli"]!;
    mapCamposExc["aparatos.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["apuntes.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["apuntes.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["apuntes.id_contrapartida"] = mapAlias["cuentas"]!;
    mapCamposExc["arboles.id_padre"] = mapAlias["arboles"]!;
    mapCamposExc["arboles.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["arboles_auxiliares.id_padre"] = mapAlias["arboles_auxiliares"]!;
    mapCamposExc["arboles_auxiliares.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["areas_compra.id_serie_defecto"] = mapAlias["series"]!;
    mapCamposExc["areas_compra.id_serie_alternativa"] = mapAlias["series"]!;
    mapCamposExc["areas_compra.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["areas_compra.id_modelo_facturas"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_compra.id_modelo_albaranes"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_compra.id_modelo_pedidos"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_compra.id_modelo_presupuestos"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_compra.id_modelo_devoluciones"] = mapAlias["informes_cfg"]!;

    mapCamposExc["areas_venta.id_cliente_defecto"] = mapAlias["clientes"]!;
    mapCamposExc["areas_venta.id_serie_defecto"] = mapAlias["series"]!;
    mapCamposExc["areas_venta.id_serie_alternativa"] = mapAlias["series"]!;
    mapCamposExc["areas_venta.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["areas_venta.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["areas_venta.id_cubierto"] = mapAlias["articulos"]!;
    mapCamposExc["areas_venta.id_carta"] = mapAlias["grupos"]!;
    mapCamposExc["areas_venta.id_tarifa1"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["areas_venta.id_tarifa2"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["areas_venta.id_tarifa3"] = mapAlias["tarifas_articulos"]!;

    mapCamposExc["areas_venta.id_cuenta_especial"] = mapAlias["cuentas_especiales"]!;
    mapCamposExc["areas_venta.id_impuesto"] = mapAlias["impuestos"]!;
    mapCamposExc["areas_venta.id_impresora_facturas"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_facturas_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_albaranes"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_albaranes_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_tickets"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_tickets_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_pedidos"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_pedidos_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_presupuestos"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_presupuestos_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_justificantes"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_impresora_justificantes_tic"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_modelo_facturas"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_albaranes"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_tickets"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_presupuestos"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_pedidos"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_metodo_cobro1"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_cobro2"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_cobro3"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_cobro4"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_cobro5"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_cobro6"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_cobro7"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_cobro8"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_efectivo"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_cargo_sup_individual"] = mapAlias["articulos"]!;
    mapCamposExc["areas_venta.id_cargo_sup_estancia_corta"] = mapAlias["articulos"]!;
    mapCamposExc["areas_venta.id_cargo_sup_extra1"] = mapAlias["articulos"]!;
    mapCamposExc["areas_venta.id_cargo_sup_extra2"] = mapAlias["articulos"]!;
    mapCamposExc["areas_venta.id_cargo_sup_extra3"] = mapAlias["articulos"]!;
    mapCamposExc["areas_venta.id_grupo_destino"] = mapAlias["grupos"]!;



    mapCamposExc["areas_venta.id_serie_defecto_tickets"] = mapAlias["series"]!;
    mapCamposExc["areas_venta.id_serie_alternativa_tickets"] = mapAlias["series"]!;


    mapCamposExc["areas_venta.id_cfg_fichero_policia"] = mapAlias["cfg_fichero_policia"]!;
    mapCamposExc["areas_venta.id_metodo_telepedido"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_efectivo_kiosko_hotel"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_metodo_tarjeta_kiosko_hotel"] = mapAlias["metodos_pago"]!;
    mapCamposExc["areas_venta.id_art_gastos_envio_telepedido"] = mapAlias["articulos"]!;
    mapCamposExc["areas_venta.id_art_bolsa_telepedido"] = mapAlias["articulos"]!;
    mapCamposExc["areas_venta.id_tarifa_kiosko_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["areas_venta.id_modelo_welcome"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_imp_facturas_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_albaranes_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_tickets_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_pedidos_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_presupuestos_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_imp_notas_plantilla"] = mapAlias["dispositivos"]!;
    mapCamposExc["areas_venta.id_modelo_facturas_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_albaranes_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_tickets_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_pedidos_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_presupuestos_plantilla"] = mapAlias["informes_cfg"]!;
    mapCamposExc["areas_venta.id_modelo_notas_plantilla"] = mapAlias["informes_cfg"]!;


    mapCamposExc["arqueos.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["arqueos.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["arqueos.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["arqueosx.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["arqueosx.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["art_almacenes.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_almacenes.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["art_codigos.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_codigos.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["art_compuestos.id_compuesto"] = mapAlias["articulos"]!;
    mapCamposExc["art_compuestos.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_compuestos.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["art_delegaciones.id_articulo"] = mapAlias["articulos"]!;

    mapCamposExc["art_delegaciones.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["art_delegaciones.id_estado"] = mapAlias["grupos"]!;
    mapCamposExc["art_ibic.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_ingredientes.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_ingredientes.id_ingrediente"] = mapAlias["articulos"]!;

    mapCamposExc["art_lotesx.id_art_lotes"] = mapAlias["art_lotes"]!;
    mapCamposExc["art_lotesx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_proveedor.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_proveedor.id_proveedor"] = mapAlias["proveedores"]!;

    mapCamposExc["art_revisiones_averias.id_averia_revision"] = mapAlias["averias"]!;
    mapCamposExc["art_revisiones_averias.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_revisiones_averias.id_art_revisiones_averias"] = mapAlias["art_revisiones_averias"]!;
    mapCamposExc["art_revisiones_averias.id_partida"] = mapAlias["doc_pro"]!;
    mapCamposExc["art_serie.id_stocks"] = mapAlias["art_stocks"]!;
    mapCamposExc["art_serie_uds_aux.id_stocks"] = mapAlias["art_stocks"]!;
    mapCamposExc["art_similares.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_stocks.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["art_stocks.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["art_visibles_xdelegacion.id_articulo"] = mapAlias["articulos"]!;

    mapCamposExc["articulos.id_agrupado"] = mapAlias["articulos"]!;
    mapCamposExc["articulos.id_perfil"] = mapAlias["perfiles"]!;
    mapCamposExc["articulos.id_cuenta_especial"] = mapAlias["cuentas_especiales"]!;
    mapCamposExc["articulos.id_impuesto"] = mapAlias["impuestos"]!;
    mapCamposExc["articulos.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["articulos.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["articulos.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_criterio_tarifa"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_criterio_comision"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_grupo_spa"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_grupo_articulos_doc"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_grupo_calendario"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_grupo_cubiculo"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_estado"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_articulo_stock"] = mapAlias["articulos"]!;

    mapCamposExc["articulos.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["articulos.id_coleccion"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_curso"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_asignatura"] = mapAlias["grupos"]!;

    mapCamposExc["articulos.id_tipo_tratamiento"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_tipo_paquete_circuito"] = mapAlias["grupos"]!;
    mapCamposExc["articulos.id_articulo_eco_tasas"] = mapAlias["articulos"]!;
    mapCamposExc["articulos.id_articulo_envase"] = mapAlias["articulos"]!;
    mapCamposExc["articulos.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["articulos.id_categoria_web"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_coleccionable"] = mapAlias["coleccionables"]!;
    mapCamposExc["articulos.id_especie_defecto"] = mapAlias["especies"]!;
    mapCamposExc["articulos.id_categoria_web2"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_categoria_web3"] = mapAlias["arboles"]!;
    mapCamposExc["articulos.id_categoria_web4"] = mapAlias["arboles"]!;
    mapCamposExc["asientos.id_documento"] = mapAlias["comisiones"]!;
    mapCamposExc["asientos.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["autores.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["averias.id_aparato"] = mapAlias["aparatos"]!;
    mapCamposExc["averias.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["averias.id_doc_almacen"] = mapAlias["doc_almacen"]!;
    mapCamposExc["averias.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["balances.id_padre"] = mapAlias["balances"]!;
    mapCamposExc["balancesx.id_balance"] = mapAlias["balances"]!;
    mapCamposExc["balancesx.id_sub_balance"] = mapAlias["balances"]!;

    mapCamposExc["basculas_tpv.id_serie"] = mapAlias["series"]!;
    mapCamposExc["basculas_tpv.id_serie_tickets"] = mapAlias["series"]!;
    mapCamposExc["bonos_acceso.id_descripcion"] = mapAlias["grupos"]!;
    mapCamposExc["bonos_acceso.id_cliente"] = mapAlias["clientes"]!;

    mapCamposExc["bonos_accesox.id_bono_acceso"] = mapAlias["bonos_acceso"]!;
    mapCamposExc["cajones.id_dispositivo"] = mapAlias["dispositivos"]!;

    mapCamposExc["cajones.id_metodo_apertura"] = mapAlias["metodos_pago"]!;
    mapCamposExc["campos_auxiliares.id_origen"] = mapAlias["aparatos"]!;
    mapCamposExc["campos_auxiliares.id_arbol01"] = mapAlias["arboles_auxiliares"]!;
    mapCamposExc["campos_auxiliares.id_arbol02"] = mapAlias["arboles_auxiliares"]!;
    mapCamposExc["campos_auxiliares.id_arbol03"] = mapAlias["arboles_auxiliares"]!;
    mapCamposExc["campos_auxiliares.id_arbol04"] = mapAlias["arboles_auxiliares"]!;
    mapCamposExc["campos_auxiliares.id_arbol05"] = mapAlias["arboles_auxiliares"]!;
    mapCamposExc["campos_auxiliares.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;
    mapCamposExc["carta_articulos.id_grupo"] = mapAlias["carta_grupos"]!;
    mapCamposExc["carta_articulos.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["carta_articulos.id_seccion"] = mapAlias["secciones"]!;
    mapCamposExc["carta_articulos.id_impresora1"] = mapAlias["dispositivos"]!;
    mapCamposExc["carta_articulos.id_impresora2"] = mapAlias["dispositivos"]!;

    mapCamposExc["carta_clientes.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["carta_clientes_articulos.id_carta_clientes_grupo"] = mapAlias["carta_clientes_grupos"]!;
    mapCamposExc["carta_clientes_articulos.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["carta_clientes_grupos.id_carta_clientes"] = mapAlias["carta_clientes"]!;
    mapCamposExc["carta_grupos.id_carta"] = mapAlias["grupos"]!;
    mapCamposExc["carta_grupos.id_grupofactura"] = mapAlias["grupos"]!;
    mapCamposExc["carta_grupos.id_impresora1"] = mapAlias["dispositivos"]!;
    mapCamposExc["carta_grupos.id_impresora2"] = mapAlias["dispositivos"]!;

    mapCamposExc["categorias_de.id_quien"] = mapAlias["clientes"]!;
    mapCamposExc["categorias_de.id_categoria"] = mapAlias["arboles"]!;

    mapCamposExc["centro_costes_arbolesx.id_arbol"] = mapAlias["centro_costes_arboles"]!;
    mapCamposExc["centro_costes_arbolesx.id_padre"] = mapAlias["centro_costes_arbolesx"]!;
    mapCamposExc["centro_costes_arbolesx.id_arbol_xgeneral"] = mapAlias["centro_costes_arbolesx"]!;
    mapCamposExc["centro_costes_defecto.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["centro_costes_defecto.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["centro_costes_defecto.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["centro_costes_defecto.id_grupo_proveedores"] = mapAlias["arboles"]!;
    mapCamposExc["centro_costes_defecto.id_personal"] = mapAlias["personal"]!;
    mapCamposExc["centro_costes_defecto.id_grupo_personal"] = mapAlias["arboles"]!;
    mapCamposExc["centro_costes_defecto.id_proyecto"] = mapAlias["centro_costes_proyectos"]!;
    mapCamposExc["centro_costes_defecto.id_arbolx"] = mapAlias["centro_costes_arbolesx"]!;
    mapCamposExc["centro_costes_proyectos.id_arbol"] = mapAlias["centro_costes_arboles"]!;


    mapCamposExc["centro_costes_valores.id_proyecto"] = mapAlias["centro_costes_proyectos"]!;
    mapCamposExc["centro_costes_valores.id_arbolx"] = mapAlias["centro_costes_arbolesx"]!;
    mapCamposExc["centro_costes_valores.id_doc_pro"] = mapAlias["doc_pro"]!;
    mapCamposExc["centro_costes_valores.id_doc_prox"] = mapAlias["doc_prox"]!;
    mapCamposExc["centro_costes_valores.id_nomina"] = mapAlias["nominas"]!;
    mapCamposExc["centro_costes_valores.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["centro_informes.id_grupo"] = mapAlias["grupos"]!;


    mapCamposExc["centro_informesx.id_centro_informes"] = mapAlias["centro_informes"]!;
    mapCamposExc["centro_informesx.id_presets"] = mapAlias["informes_cfg"]!;
    mapCamposExc["cfg_campos_auxiliares.id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["cfg_campos_auxiliares.id_perfil_campos_aux"] = mapAlias["perfiles_campos_aux"]!;

    mapCamposExc["cfg_central_reservas.id_cargo_desayuno"] = mapAlias["articulos"]!;
    mapCamposExc["cfg_central_reservas.id_cargo_media_pension"] = mapAlias["articulos"]!;
    mapCamposExc["cfg_central_reservas.id_cargo_pension_completa"] = mapAlias["articulos"]!;
    mapCamposExc["cfg_central_reservas.id_cargo_todo_incluido"] = mapAlias["articulos"]!;
    mapCamposExc["cfg_central_reservas.id_cargo_uso_individual"] = mapAlias["articulos"]!;
    mapCamposExc["cfg_central_reservas.id_cargo_cama_supletoria"] = mapAlias["articulos"]!;
    mapCamposExc["cfg_central_reservas.id_metodo_pago1"] = mapAlias["metodos_pago"]!;
    mapCamposExc["cfg_central_reservas.id_metodo_pago2"] = mapAlias["metodos_pago"]!;
    mapCamposExc["cfg_central_reservas.id_metodo_pago3"] = mapAlias["metodos_pago"]!;
    mapCamposExc["cfg_central_reservas.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["cfg_central_reservas.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["cfg_central_reservas_cargos.id_cfg_central_reservas"] = mapAlias["cfg_central_reservas"]!;
    mapCamposExc["cfg_central_reservas_cargos.id_cargo"] = mapAlias["articulos"]!;
    mapCamposExc["cfg_central_reservas_cargos.id_tipo_habitacion"] = mapAlias["tipo_habitaciones"]!;
    mapCamposExc["cfg_central_reservas_cargos.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["cfg_central_reservas_cargos_xpersona.id_cfg_central_reservas"] = mapAlias["cfg_central_reservas"]!;
    mapCamposExc["cfg_central_reservas_cargos_xpersona.id_cargo"] = mapAlias["articulos"]!;
    mapCamposExc["cfg_central_reservas_cargos_xpersona.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["cfg_central_reservas_clientes_agencias.id_cfg_central_reservas"] = mapAlias["cfg_central_reservas"]!;
    mapCamposExc["cfg_central_reservas_clientes_agencias.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["cfg_central_reservas_clientes_agencias.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["cfg_central_reservas_clientes_agencias.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["cfg_central_reservas_sincronizacion_auto.id_cfg_central_reservas"] = mapAlias["cfg_central_reservas"]!;
    mapCamposExc["clientes.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["clientes.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["clientes.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["clientes.id_ficha_fiscal"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_ficha_varios"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_grupo"] = mapAlias["arboles"]!;
    mapCamposExc["clientes.id_zona"] = mapAlias["zonas"]!;
    mapCamposExc["clientes.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["clientes.id_contacto_externo"] = mapAlias["contactos_externos"]!;
    mapCamposExc["clientes.id_agencia"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["clientes.id_pais_nacionalidad"] = mapAlias["paises"]!;
    mapCamposExc["clientes.id_grupo_ine"] = mapAlias["grupos"]!;
    mapCamposExc["clientes.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["clientes.id_cuenta_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["clientes.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["clientes.id_moneda"] = mapAlias["monedas"]!;
    mapCamposExc["clientes.id_receptor_efactura"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_pagador_efactura"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_contable_efactura"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_web_client"] = mapAlias["clientes"]!;
    mapCamposExc["clientes.id_forma_envio"] = mapAlias["logi_formas"]!;
    mapCamposExc["clientes.id_veterinario"] = mapAlias["veterinarios"]!;
    mapCamposExc["clientes.id_especie_defecto"] = mapAlias["especies"]!;
    mapCamposExc["clientes.id_veterinario_responsable"] = mapAlias["veterinarios"]!;
    mapCamposExc["clientes.id_pais_nif"] = mapAlias["paises"]!;
    mapCamposExc["clientes.id_almacen_urdi"] = mapAlias["almacenes"]!;
    mapCamposExc["clientesx.id_cliente"] = mapAlias["clientes"]!;

    mapCamposExc["clientesx.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["clientesx.id_cuando_pago"] = mapAlias["plazos_pago"]!;


    mapCamposExc["clientesx.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["clientesx.id_serie"] = mapAlias["series"]!;
    mapCamposExc["clientesx.id_serie_tickets"] = mapAlias["series"]!;
    mapCamposExc["clientesx.id_agente1"] = mapAlias["comisionistas"]!;
    mapCamposExc["clientesx.id_agente2"] = mapAlias["comisionistas"]!;
    mapCamposExc["clientesx.id_agente3"] = mapAlias["comisionistas"]!;
    mapCamposExc["coleccionables.id_libro"] = mapAlias["articulos"]!;
    mapCamposExc["coleccionables.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["comanda_visual.id_doc_hotel"] = mapAlias["doc_hotel"]!;
    mapCamposExc["comisiones.id_comisionista"] = mapAlias["comisionistas"]!;
    mapCamposExc["comisiones.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["comisiones.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["comisiones.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["comisionesx.id_comisionista"] = mapAlias["comisionistas"]!;
    mapCamposExc["comisionesx.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["comisionesx.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["comisionesx.id_comisiones"] = mapAlias["comisiones"]!;
    mapCamposExc["comisionesx.id_comis_retro"] = mapAlias["comisiones"]!;
    mapCamposExc["comisionesx.id_comis_confirm"] = mapAlias["comisiones"]!;
    mapCamposExc["comisionistas.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["comisionistas.id_personal"] = mapAlias["personal"]!;
    mapCamposExc["comisionistas.id_grupo"] = mapAlias["grupos_comisiones"]!;
    mapCamposExc["comisionistasx.id_comisionista"] = mapAlias["comisionistas"]!;

    mapCamposExc["comisionistasx.id_grupo"] = mapAlias["grupos_comisiones"]!;
    mapCamposExc["conceptos_contables.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["conceptos_contables.id_contrapartida"] = mapAlias["cuentas"]!;
    mapCamposExc["conocimientos.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["conocimientos.id_usuario2"] = mapAlias["usuarios"]!;
    mapCamposExc["conocimientos.id_instalacion"] = mapAlias["instalaciones"]!;
    mapCamposExc["conocimientos.id_duplicado"] = mapAlias["conocimientos"]!;
    mapCamposExc["conocimientos.id_sector"] = mapAlias["grupos"]!;
    mapCamposExc["conocimientosx.id_conocimientos"] = mapAlias["conocimientos"]!;
    mapCamposExc["contactos_externos.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["contactos_externos.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["contactos_externos.id_ubicacion"] = mapAlias["ubicaciones"]!;

    mapCamposExc["crm_cfg.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["ctas_anuales_celdas.id_cta_anual"] = mapAlias["ctas_anuales"]!;
    mapCamposExc["ctas_anuales_claves.id_cta_anual"] = mapAlias["ctas_anuales"]!;
    mapCamposExc["cuentas_bancarias.id_banco"] = mapAlias["bancos"]!;
    mapCamposExc["cuentas_bancarias.id_ficha"] = mapAlias["clientes"]!;
    mapCamposExc["cuentas_bancarias.id_cuenta_dto_efectos"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_bancarias.id_cuenta"] = mapAlias["cuentas"]!;


    mapCamposExc["cuentas_especiales.id_cta_gastos"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_especiales.id_cta_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_especiales.id_cta_existencias"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_especiales.id_cta_socios_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["cuentas_especiales.id_cta_socios_gastos"] = mapAlias["cuentas"]!;
    mapCamposExc["cupos.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["cupos.id_central_reservas"] = mapAlias["comisionistas"]!;

    mapCamposExc["cuposx.id_cupo"] = mapAlias["cupos"]!;
    mapCamposExc["delegaciones.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["delegaciones.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["delegaciones.id_ubicacion"] = mapAlias["ubicaciones"]!;

    mapCamposExc["delegaciones.id_ficha_principal"] = mapAlias["delegaciones"]!;
    mapCamposExc["delegaciones.id_serie_defecto"] = mapAlias["series"]!;
    mapCamposExc["delegaciones.id_metodo_efectivo"] = mapAlias["metodos_pago"]!;
    mapCamposExc["delegaciones.id_agente_defecto"] = mapAlias["comisionistas"]!;
    mapCamposExc["delegaciones.id_transportista_defecto"] = mapAlias["transportistas"]!;
    mapCamposExc["delegaciones.id_cabecera_informes"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_pie_informes"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_cabecera_doc_a4"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_pie_doc_a4"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_cabecera_doc_a5"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_pie_doc_a5"] = mapAlias["informes_cfg"]!;
    mapCamposExc["delegaciones.id_cliente_varios"] = mapAlias["clientes"]!;
    mapCamposExc["delegaciones.id_cli_metodo_cobro_defecto"] = mapAlias["metodos_pago"]!;
    mapCamposExc["delegaciones.id_cli_periodicidad_defecto"] = mapAlias["plazos_pago"]!;
    mapCamposExc["delegaciones.id_cli_tarifa_articulos_defecto"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["delegaciones.id_cli_tarifa_excepciones_defecto"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["delegaciones.id_cli_tarifa_hotel_defecto"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["delegaciones.id_cli_grupo_series_entregas_acta"] = mapAlias["grupos_series"]!;
    mapCamposExc["delegaciones.id_pro_metodo_pago_defecto"] = mapAlias["metodos_pago"]!;
    mapCamposExc["delegaciones.id_pro_periodicidad_defecto"] = mapAlias["plazos_pago"]!;
    mapCamposExc["delegaciones.id_articulo_centralita"] = mapAlias["articulos"]!;
    mapCamposExc["delegaciones.id_cli_veterinario_defecto"] = mapAlias["veterinarios"]!;
    mapCamposExc["delegaciones.id_pro_serie_defecto"] = mapAlias["series"]!;
    mapCamposExc["delegaciones.id_pro_serie_alternativa"] = mapAlias["series"]!;
    mapCamposExc["delegaciones.id_certificado_pdf"] = mapAlias["app_blobs"]!;
    mapCamposExc["delegaciones.id_cfg_fichero_policia"] = mapAlias["cfg_fichero_policia"]!;
    mapCamposExc["destinos.id_tienda_virtual"] = mapAlias["tiendas_virtuales"]!;
    mapCamposExc["dias_pago.id_plazos"] = mapAlias["plazos_pago"]!;
    mapCamposExc["doc_almacen.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["doc_almacen.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["doc_almacen.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["doc_almacen.id_autorizacion"] = mapAlias["personal"]!;
    mapCamposExc["doc_almacen.id_recepcion"] = mapAlias["personal"]!;
    mapCamposExc["doc_almacen.id_almacen_origen"] = mapAlias["almacenes"]!;
    mapCamposExc["doc_almacen.id_almacen_destino"] = mapAlias["almacenes"]!;
    mapCamposExc["doc_almacen.id_grupo_destino"] = mapAlias["grupos"]!;
    mapCamposExc["doc_almacen.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_almacen.id_doc_traspaso"] = mapAlias["doc_almacen"]!;
    mapCamposExc["doc_almacen.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["doc_almacen.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["doc_almacen.id_doc_pro"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_almacenx.id_documento"] = mapAlias["doc_almacen"]!;
    mapCamposExc["doc_almacenx.id_origen"] = mapAlias["articulos"]!;
    mapCamposExc["doc_almacenx.id_partida"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_almacenx.id_doc_cli_depositario"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["doc_cli.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["doc_cli.id_serie"] = mapAlias["series"]!;
    mapCamposExc["doc_cli.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["doc_cli.id_facturado"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["doc_cli.id_agente1"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_cli.id_agente2"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_cli.id_agente3"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_cli.id_autorizacion"] = mapAlias["personal"]!;
    mapCamposExc["doc_cli.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["doc_cli.id_remitente_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["doc_cli.id_remitente_contacto"] = mapAlias["nombres"]!;
    mapCamposExc["doc_cli.id_envio_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["doc_cli.id_envio_contacto"] = mapAlias["nombres"]!;
    mapCamposExc["doc_cli.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["doc_cli.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["doc_cli.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["doc_cli.id_cierre_caja"] = mapAlias["doc_cli"]!;



    mapCamposExc["doc_cli.id_reservador"] = mapAlias["clientes"]!;

    mapCamposExc["doc_cli.id_cliente_agencia"] = mapAlias["clientes"]!;
    mapCamposExc["doc_cli.id_devolucion"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["doc_cli.id_web_client"] = mapAlias["clientes"]!;
    mapCamposExc["doc_cli.id_forma_envio"] = mapAlias["logi_formas"]!;
    mapCamposExc["doc_cli.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["doc_cli.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["doc_cli.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["doc_cli.id_veterinario"] = mapAlias["veterinarios"]!;
    mapCamposExc["doc_cli.id_contacto_externo"] = mapAlias["contactos_externos"]!;
    mapCamposExc["doc_cli.id_inversion_sp"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_cli.id_factura_rectificada"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_moneda2"] = mapAlias["monedas"]!;
    mapCamposExc["doc_cli.id_doc_pro_transfer"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_cli.id_factura_ticket"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_destino"] = mapAlias["logi_destinos"]!;
    mapCamposExc["doc_cli.id_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_vehiculo"] = mapAlias["vehiculos"]!;
    mapCamposExc["doc_cli.id_pedido_reserva"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_anterior"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli.id_obra"] = mapAlias["obras"]!;
    mapCamposExc["doc_cli_valores.id_documento"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_cli_valores.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["doc_cli_valores.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["doc_clix.id_documento"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_clix.id_procedencia"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_clix.id_origen"] = mapAlias["articulos"]!;
    mapCamposExc["doc_clix.id_doc_clix"] = mapAlias["doc_clix"]!;
    mapCamposExc["doc_clix.id_sub_compuesto"] = mapAlias["doc_clix"]!;
    mapCamposExc["doc_clix.id_mantenimiento"] = mapAlias["mantenimientos"]!;
    mapCamposExc["doc_clix.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["doc_clix.id_partida"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_clix.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["doc_clix.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["doc_clix.id_agente1"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_clix.id_agente2"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_clix.id_agente3"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_clix.id_reservador"] = mapAlias["clientes"]!;
    mapCamposExc["doc_clix.id_cliente_agencia"] = mapAlias["clientes"]!;
    mapCamposExc["doc_clix.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["doc_clix.id_grupo_impresion"] = mapAlias["doc_clix"]!;
    mapCamposExc["doc_clix.id_grupo_acto_evento"] = mapAlias["doc_clix"]!;
    mapCamposExc["doc_clix.id_docx_menu"] = mapAlias["doc_clix"]!;
    mapCamposExc["doc_clix.id_doc_origen"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_clix.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["doc_clix.id_contacto_externo"] = mapAlias["contactos_externos"]!;
    mapCamposExc["doc_clix.id_habitacion_cargo"] = mapAlias["habitaciones"]!;
    mapCamposExc["doc_clix.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["doc_clix.id_tipo_acto"] = mapAlias["grupos"]!;
    mapCamposExc["doc_clix.id_montaje_salon"] = mapAlias["grupos"]!;
    mapCamposExc["doc_clix.id_tarifa_doc"] = mapAlias["tarifas_doc"]!;
    mapCamposExc["doc_clix.id_aparato"] = mapAlias["aparatos"]!;
    mapCamposExc["doc_clix.id_receta"] = mapAlias["recetas"]!;
    mapCamposExc["doc_clix.id_grupo_regimen"] = mapAlias["grupos"]!;


    mapCamposExc["doc_hotel.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_hotel.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["doc_hotel.id_reservador"] = mapAlias["clientes"]!;
    mapCamposExc["doc_hotel.id_agente1"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_hotel.id_agente2"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_hotel.id_agente3"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_hotel.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["doc_hotel.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["doc_hotel.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["doc_hotel.id_almacen"] = mapAlias["almacenes"]!;

    mapCamposExc["doc_hotel.id_tarifa_cliente"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["doc_hotel.id_tarifa_empresa"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["doc_hotel.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["doc_hotel.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["doc_hotel.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["doc_hotel_xprevision.id_doc_hotelx"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotel_xprevision.id_cargo"] = mapAlias["articulos"]!;
    mapCamposExc["doc_hotelx.id_documento"] = mapAlias["doc_hotel"]!;
    mapCamposExc["doc_hotelx.id_origen"] = mapAlias["articulos"]!;
    mapCamposExc["doc_hotelx.id_habitacion"] = mapAlias["habitaciones"]!;
    mapCamposExc["doc_hotelx.id_doc_hotelx"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_sub_compuesto"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_grupo_impresion"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_grupo_acto_evento"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["doc_hotelx.id_docx_menu"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["doc_hotelx.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["doc_hotelx.id_tipo_habitacion"] = mapAlias["tipo_habitaciones"]!;
    mapCamposExc["doc_hotelx.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["doc_hotelx.id_habitacion_cargo"] = mapAlias["habitaciones"]!;
    mapCamposExc["doc_hotelx.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_hotelx.id_quien_paga"] = mapAlias["clientes"]!;
    mapCamposExc["doc_hotelx.id_agente1"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_hotelx.id_agente2"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_hotelx.id_agente3"] = mapAlias["comisionistas"]!;
    mapCamposExc["doc_hotelx.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["doc_hotelx.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["doc_hotelx.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["doc_hotelx.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["doc_hotelx.id_cargo_sup1"] = mapAlias["articulos"]!;
    mapCamposExc["doc_hotelx.id_cargo_sup2"] = mapAlias["articulos"]!;
    mapCamposExc["doc_hotelx.id_cargo_sup3"] = mapAlias["articulos"]!;
    mapCamposExc["doc_hotelx.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["doc_hotelx.id_cupo"] = mapAlias["cupos"]!;
    mapCamposExc["doc_hotelx.id_tipo_acto"] = mapAlias["grupos"]!;
    mapCamposExc["doc_hotelx.id_montaje_salon"] = mapAlias["grupos"]!;
    mapCamposExc["doc_pro.id_serie"] = mapAlias["series"]!;
    mapCamposExc["doc_pro.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["doc_pro.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["doc_pro.id_usuario"] = mapAlias["usuarios"]!;


    mapCamposExc["doc_pro.id_facturado"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro.id_factura_rectificada"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["doc_pro.id_distribuidor"] = mapAlias["proveedores"]!;
    mapCamposExc["doc_pro.id_visita"] = mapAlias["nombres"]!;
    mapCamposExc["doc_pro.id_atencion"] = mapAlias["nombres"]!;
    mapCamposExc["doc_pro.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["doc_pro.id_autorizacion"] = mapAlias["personal"]!;
    mapCamposExc["doc_pro.id_recepcion"] = mapAlias["personal"]!;
    mapCamposExc["doc_pro.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["doc_pro.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["doc_pro.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["doc_pro.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["doc_pro.id_inversion_sp"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_pro.id_devolucion"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["doc_pro.id_doc_cli_transfer"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_pro.id_doc_cli_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_pro.id_almacen_origen"] = mapAlias["almacenes"]!;
    mapCamposExc["doc_pro.id_obra"] = mapAlias["obras"]!;
    mapCamposExc["doc_pro.id_pedido"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro_valores.id_documento"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_pro_valores.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["doc_pro_valores.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["doc_pro_valores.id_ref_doc_pro"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_prox.id_documento"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_prox.id_origen"] = mapAlias["articulos"]!;

    mapCamposExc["doc_prox.id_procedencia"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_prox.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["doc_prox.id_partida"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_prox.id_doc_origen"] = mapAlias["doc_pro"]!;
    mapCamposExc["doc_prox.id_doc_cli_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["doc_sinlix.id_doc_sinli"] = mapAlias["doc_sinli"]!;
    mapCamposExc["efectos.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["efectos.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["efectos.id_padre"] = mapAlias["efectos"]!;
    mapCamposExc["efectos.id_consolidado"] = mapAlias["efectos"]!;
    mapCamposExc["efectos.id_asiento_pagado"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_formalizacion"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_al_banco"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_rechazo"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_dudoso_cobro"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_incobrable"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_asiento_agrupacion"] = mapAlias["asientos"]!;
    mapCamposExc["efectos.id_remesa"] = mapAlias["remesas"]!;
    mapCamposExc["efectos.id_rechazado"] = mapAlias["efectos"]!;
    mapCamposExc["efectos.id_cuenta_bancaria"] = mapAlias["cuentas_bancarias"]!;
    mapCamposExc["efectos.id_mandato"] = mapAlias["mandatos"]!;
    mapCamposExc["efectos.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["efectos.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["efectos.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["efectos.id_cierre_caja"] = mapAlias["doc_cli"]!;
    mapCamposExc["efectos.id_doc_hotel"] = mapAlias["doc_hotel"]!;
    mapCamposExc["efectos.id_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["efectos.id_nomina_atrasos"] = mapAlias["nominas"]!;
    mapCamposExc["efectos.id_cajon"] = mapAlias["cajones"]!;

    mapCamposExc["efectos.id_arqueo_pendiente"] = mapAlias["arqueos"]!;
    mapCamposExc["empresas.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["empresas.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["empresas.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["empresas.id_grupo_series_defecto"] = mapAlias["grupos_series"]!;
    mapCamposExc["empresas.id_certificado_recetas"] = mapAlias["app_blobs"]!;
    mapCamposExc["estantes.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["estantesx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["estantesx.id_estante"] = mapAlias["estantes"]!;
    mapCamposExc["fabricacion.id_fabricacion_grupo"] = mapAlias["fabricacion_grupo"]!;
    mapCamposExc["fabricacion.id_fabricacion_cfg"] = mapAlias["fabricacion_cfg"]!;
    mapCamposExc["fabricacion.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["fabricacion.id_almacen_origen"] = mapAlias["almacenes"]!;
    mapCamposExc["fabricacion.id_almacen_destino"] = mapAlias["almacenes"]!;
    mapCamposExc["fabricacion.id_doc_almacen_salida"] = mapAlias["doc_almacen"]!;
    mapCamposExc["fabricacion.id_doc_almacen_entrada"] = mapAlias["doc_almacen"]!;
    mapCamposExc["fabricacion.id_modelo_etiqueta_cajas"] = mapAlias["informes_cfg"]!;
    mapCamposExc["fabricacion.id_modelo_etiqueta_articulo"] = mapAlias["informes_cfg"]!;
    mapCamposExc["fabricacion_cfg.id_modelo_etiqueta_cajas"] = mapAlias["informes_cfg"]!;
    mapCamposExc["fabricacion_cfg.id_modelo_etiqueta_articulo"] = mapAlias["informes_cfg"]!;

    mapCamposExc["fabricacion_etapas.id_plantilla"] = mapAlias["fabricacion_etapas"]!;
    mapCamposExc["fabricacion_etapasx.id_fabricacion_etapas"] = mapAlias["fabricacion_etapas"]!;
    mapCamposExc["fabricacion_etapasx.id_fabricacion_grupo"] = mapAlias["fabricacion_grupo"]!;

    mapCamposExc["fabricacion_grupo.id_plantilla"] = mapAlias["fabricacion_grupo"]!;
    mapCamposExc["fabricacion_grupo.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["fabricacion_grupo.id_pedido"] = mapAlias["doc_cli"]!;
    mapCamposExc["fabricacion_grupo.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["fabricacion_grupo.id_almacen_origen"] = mapAlias["almacenes"]!;
    mapCamposExc["fabricacion_grupo.id_almacen_destino"] = mapAlias["almacenes"]!;
    mapCamposExc["fabricacion_grupo.id_prioridad"] = mapAlias["grupos"]!;
    mapCamposExc["fabricacion_grupo.id_incidencia"] = mapAlias["grupos"]!;
    mapCamposExc["fabricacion_grupo.id_fabricacion_etapas"] = mapAlias["fabricacion_etapas"]!;
    mapCamposExc["fabricacion_tareas.id_centro_trabajo"] = mapAlias["grupos"]!;
    mapCamposExc["fabricacion_tareas.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["fabricacionx.id_fabricacion"] = mapAlias["fabricacion"]!;
    mapCamposExc["fabricacionx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["fabricacionx.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["fabricacionx.id_aparato"] = mapAlias["aparatos"]!;
    mapCamposExc["fabricacionx.id_tarea"] = mapAlias["fabricacion_tareas"]!;
    mapCamposExc["fabricacionx.id_centro_trabajo"] = mapAlias["grupos"]!;
    mapCamposExc["fabricantes.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["fabricantes.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["fabricantes.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["fabricantes.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["fabricantesx.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["fabricantesx.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["fianzas.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["fianzas.id_cta_fianzas"] = mapAlias["cuentas"]!;
    mapCamposExc["fianzas.id_cta_ingresos"] = mapAlias["cuentas"]!;
    mapCamposExc["fianzas.id_metodo_constitucion"] = mapAlias["metodos_pago"]!;
    mapCamposExc["fianzas.id_metodo_cancelacion"] = mapAlias["metodos_pago"]!;
    mapCamposExc["fianzas.id_asiento_constitucion"] = mapAlias["asientos"]!;
    mapCamposExc["fianzas.id_asiento_cancelacion"] = mapAlias["asientos"]!;
    mapCamposExc["fianzas.id_arqueo_constitucion"] = mapAlias["arqueos"]!;
    mapCamposExc["fianzas.id_arqueo_cancelacion"] = mapAlias["arqueos"]!;
    mapCamposExc["fianzas.id_cajon_constitucion"] = mapAlias["cajones"]!;
    mapCamposExc["fianzas.id_cajon_cancelacion"] = mapAlias["cajones"]!;
    mapCamposExc["fianzas.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["fianzas.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["fianzasx.id_fianza"] = mapAlias["fianzas"]!;
    mapCamposExc["fianzasx.id_cta_fianzas"] = mapAlias["cuentas"]!;
    mapCamposExc["fianzasx.id_cta_ingresos"] = mapAlias["cuentas"]!;

    mapCamposExc["grupos_comisionesx.id_grupo"] = mapAlias["grupos_comisiones"]!;
    mapCamposExc["grupos_comisionesx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["grupos_comisionesx.id_criterio_comision"] = mapAlias["grupos"]!;
    mapCamposExc["grupos_comisionesx.id_criterio_tarifa"] = mapAlias["grupos"]!;
    mapCamposExc["grupos_comisionesx.id_categoria"] = mapAlias["arboles"]!;

    mapCamposExc["habitaciones.id_tipo"] = mapAlias["tipo_habitaciones"]!;

    mapCamposExc["habitaciones.id_camarera"] = mapAlias["personal"]!;
    mapCamposExc["habitaciones.id_srv_in_hova"] = mapAlias["dispositivos"]!;
    mapCamposExc["habitaciones.id_cfg_fichero_policia"] = mapAlias["cfg_fichero_policia"]!;
    mapCamposExc["habitacionesx.id_habitacion"] = mapAlias["habitaciones"]!;
    mapCamposExc["habitacionesx.id_propiedad"] = mapAlias["habitaciones_props"]!;

    mapCamposExc["hojax.id_hoja"] = mapAlias["hoja"]!;
    mapCamposExc["hotel_dtosx.id_hotel_dtos"] = mapAlias["hotel_dtos"]!;
    mapCamposExc["hst_doc_hotel.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["hst_doc_hotel.id_usuario_proceso"] = mapAlias["usuarios"]!;
    mapCamposExc["hst_doc_hotel.id_puesto_proceso"] = mapAlias["puestos"]!;


    mapCamposExc["hst_doc_hotel.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["hst_doc_hotel.id_reservador"] = mapAlias["clientes"]!;
    mapCamposExc["hst_doc_hotel.id_agente1"] = mapAlias["comisionistas"]!;
    mapCamposExc["hst_doc_hotel.id_agente2"] = mapAlias["comisionistas"]!;
    mapCamposExc["hst_doc_hotel.id_agente3"] = mapAlias["comisionistas"]!;
    mapCamposExc["hst_doc_hotel.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["hst_doc_hotel.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["hst_doc_hotel.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["hst_doc_hotel.id_almacen"] = mapAlias["almacenes"]!;

    mapCamposExc["hst_doc_hotel.id_tarifa_cliente"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["hst_doc_hotel.id_tarifa_empresa"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["hst_doc_hotel.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["hst_doc_hotel.id_tipo_contingente"] = mapAlias["arboles"]!;
    mapCamposExc["hst_doc_hotelx.id_documento"] = mapAlias["hst_doc_hotel"]!;
    mapCamposExc["hst_doc_hotelx.id_origen"] = mapAlias["articulos"]!;
    mapCamposExc["hst_doc_hotelx.id_habitacion"] = mapAlias["habitaciones"]!;
    mapCamposExc["hst_doc_hotelx.id_hst_doc_hotelx"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_sub_compuesto"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_grupo_impresion"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_grupo_acto_evento"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["hst_doc_hotelx.id_doc_xmenu"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_doc_hotelx.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["hst_doc_hotelx.id_agente1"] = mapAlias["comisionistas"]!;
    mapCamposExc["hst_doc_hotelx.id_agente2"] = mapAlias["comisionistas"]!;
    mapCamposExc["hst_doc_hotelx.id_agente3"] = mapAlias["comisionistas"]!;
    mapCamposExc["hst_doc_hotelx.id_tipo_habitacion"] = mapAlias["tipo_habitaciones"]!;
    mapCamposExc["hst_doc_hotelx.id_mesa"] = mapAlias["mesas"]!;
    mapCamposExc["hst_doc_hotelx.id_habitacion_cargo"] = mapAlias["habitaciones"]!;
    mapCamposExc["hst_doc_hotelx.id_quien_paga"] = mapAlias["clientes"]!;
    mapCamposExc["hst_doc_hotelx.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["hst_doc_hotelx.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["hst_doc_hotelx.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["hst_doc_hotelx.id_grupo_regimen"] = mapAlias["grupos"]!;
    mapCamposExc["hst_doc_hotelx.id_cargo_sup1"] = mapAlias["articulos"]!;
    mapCamposExc["hst_doc_hotelx.id_cargo_sup2"] = mapAlias["articulos"]!;
    mapCamposExc["hst_doc_hotelx.id_cargo_sup3"] = mapAlias["articulos"]!;
    mapCamposExc["hst_doc_hotelx.id_cupo"] = mapAlias["cupos"]!;
    mapCamposExc["hst_doc_hotelx.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["hst_doc_hotelx.id_tipo_acto"] = mapAlias["grupos"]!;
    mapCamposExc["hst_doc_hotelx.id_montaje_salon"] = mapAlias["grupos"]!;
    mapCamposExc["hst_ocupantesx.id_ocupante"] = mapAlias["ocupantes"]!;
    mapCamposExc["hst_ocupantesx.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["hst_ocupantesx.id_hst_doc_hotelx"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_ocupantesx.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["hst_ocupantesx.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["hst_ocupantesx.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["hst_recursos_actos.id_hst_doc_hotelx"] = mapAlias["hst_doc_hotelx"]!;
    mapCamposExc["hst_recursos_actos.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["hst_recursos_actos.id_padre"] = mapAlias["hst_recursos_actos"]!;
    mapCamposExc["hst_recursos_actos.id_posicion_persona"] = mapAlias["grupos"]!;
    mapCamposExc["impuestosx.id_impuesto"] = mapAlias["impuestos"]!;
    mapCamposExc["informes_usuariosx.id_informes_usuarios"] = mapAlias["informes_usuarios"]!;
    mapCamposExc["inmovilizado.id_grupo_series"] = mapAlias["grupos_series"]!;

    mapCamposExc["inmovilizado.id_factura"] = mapAlias["doc_pro"]!;
    mapCamposExc["inmovilizado.id_cta_inmovilizado"] = mapAlias["cuentas"]!;
    mapCamposExc["inmovilizado.id_cta_dotacion"] = mapAlias["cuentas"]!;
    mapCamposExc["inmovilizado.id_cta_acumulado"] = mapAlias["cuentas"]!;
    mapCamposExc["inmovilizado.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["inmovilizado_valores.id_documento"] = mapAlias["inmovilizado"]!;
    mapCamposExc["inmovilizadox.id_documento"] = mapAlias["inmovilizado"]!;
    mapCamposExc["instalaciones.id_programa"] = mapAlias["programas"]!;
    mapCamposExc["instalaciones.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["instalaciones.id_vendedor"] = mapAlias["clientes"]!;
    mapCamposExc["instalaciones.id_mayorista"] = mapAlias["clientes"]!;
    mapCamposExc["instalaciones.id_mantenimiento"] = mapAlias["mantenimientos"]!;
    mapCamposExc["instalaciones_props.id_instalacion"] = mapAlias["instalaciones"]!;
    mapCamposExc["instalaciones_props.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["instalacionesx.id_instalacion"] = mapAlias["instalaciones"]!;
    mapCamposExc["instalacionesx.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["inventario.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["inventario.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["inventario.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["inventariox.id_inventario"] = mapAlias["inventario"]!;
    mapCamposExc["inventariox.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["inventariox.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["inventariox.id_usuario"] = mapAlias["usuarios"]!;

    mapCamposExc["logi_destinos.id_forma_envio"] = mapAlias["logi_formas"]!;
    mapCamposExc["logi_envios.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["logi_envios.id_factura"] = mapAlias["doc_pro"]!;
    mapCamposExc["logi_envios.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["logi_envios.id_forma_envio"] = mapAlias["logi_formas"]!;
    mapCamposExc["logi_envios.id_destino"] = mapAlias["logi_destinos"]!;
    mapCamposExc["logi_envios.id_vehiculo"] = mapAlias["vehiculos"]!;
    mapCamposExc["logi_formas.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["logi_formas.id_articulo_portes_web"] = mapAlias["articulos"]!;
    mapCamposExc["logi_unidades.id_envio"] = mapAlias["logi_envios"]!;
    mapCamposExc["logi_unidades.id_formato"] = mapAlias["logi_formatos"]!;
    mapCamposExc["logi_unidadesx.id_unidad"] = mapAlias["logi_unidades"]!;
    mapCamposExc["logi_unidadesx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["mandatos.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["mandatos.id_cta_cliente"] = mapAlias["cuentas_bancarias"]!;
    mapCamposExc["mandatos.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["mandatos.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["mantenimientos.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["mantenimientos.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["mantenimientos.id_cliente_atendido"] = mapAlias["clientes"]!;
    mapCamposExc["mantenimientos.id_cliente_facturacion"] = mapAlias["clientes"]!;
    mapCamposExc["mantenimientos.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["mantenimientos.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["mantenimientos.id_agente"] = mapAlias["comisionistas"]!;
    mapCamposExc["mantenimientos.id_grupo"] = mapAlias["grupos"]!;

    mapCamposExc["mantenimientos.id_serie"] = mapAlias["series"]!;

    mapCamposExc["mascotas.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["mensajes.id_ficha"] = mapAlias["almacenes"]!;
    mapCamposExc["menu_eventos.id_tipo"] = mapAlias["grupos"]!;
    mapCamposExc["menu_eventos.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["menu_eventosx.id_menu_eventos"] = mapAlias["menu_eventos"]!;
    mapCamposExc["menu_eventosx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["menu_eventosx.id_grupo"] = mapAlias["grupos"]!;
    mapCamposExc["menu_rest.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["menu_restx.id_menu_rest"] = mapAlias["menu_rest"]!;
    mapCamposExc["menu_restx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["menu_restx.id_impresora1"] = mapAlias["dispositivos"]!;
    mapCamposExc["menu_restx.id_impresora2"] = mapAlias["dispositivos"]!;
    mapCamposExc["menu_restx.id_seccion"] = mapAlias["secciones"]!;


    mapCamposExc["mesas.id_cubierto"] = mapAlias["articulos"]!;
    mapCamposExc["metodos_pago.id_cta_bancaria"] = mapAlias["cuentas_bancarias"]!;
    mapCamposExc["metodos_pago.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["metodos_pago.id_alt_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["metodos_pago.id_cta_gastos"] = mapAlias["cuentas"]!;
    mapCamposExc["metodos_pago.id_cta_dto_efectos"] = mapAlias["cuentas"]!;


    mapCamposExc["nombres.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["nombres.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["nombres.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["nombres.id_ficha"] = mapAlias["clientes"]!;
    mapCamposExc["nombres.id_web_client"] = mapAlias["clientes"]!;
    mapCamposExc["nominas.id_personal"] = mapAlias["personal"]!;
    mapCamposExc["nominas.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["nominas.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["nominas.id_cta_indemnizaciones"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_prestaciones_ss"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_otros_devengos"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_retencion_ss"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_retencion_ssempresa"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_creditos_lp"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_creditos_cp"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_en_especie"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_otras_deducciones"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_cta_ssempresa"] = mapAlias["cuentas"]!;
    mapCamposExc["nominas.id_sindicato"] = mapAlias["proveedores"]!;
    mapCamposExc["nominas.id_retencion_irpf"] = mapAlias["retenciones"]!;
    mapCamposExc["nominas.id_metodo_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["nominas.id_cuenta_bancaria"] = mapAlias["cuentas_bancarias"]!;
    mapCamposExc["nominas.id_asiento_pago_remun_lp"] = mapAlias["asientos"]!;
    mapCamposExc["numeraciones.id_serie"] = mapAlias["series"]!;

    mapCamposExc["numeros_serie.id_contenido"] = mapAlias["art_revisiones_averias"]!;
    mapCamposExc["objetos_perdidos.id_ubicacion_encontrado"] = mapAlias["grupos"]!;
    mapCamposExc["objetos_perdidos.id_personal_encontrado"] = mapAlias["personal"]!;
    mapCamposExc["objetos_perdidos.id_cliente_encontrado"] = mapAlias["clientes"]!;
    mapCamposExc["objetos_perdidos.id_ubicacion_guardado"] = mapAlias["grupos"]!;
    mapCamposExc["objetos_perdidos.id_cliente_reclamado"] = mapAlias["clientes"]!;
    mapCamposExc["objetos_perdidos.id_personal_envio"] = mapAlias["personal"]!;

    mapCamposExc["obras.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["obras.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["obras.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["obras.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["ocupantes.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["ocupantes.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["ocupantes.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["ocupantes.id_pais_nacionalidad"] = mapAlias["paises"]!;
    mapCamposExc["ocupantesx.id_ocupante"] = mapAlias["ocupantes"]!;
    mapCamposExc["ocupantesx.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["ocupantesx.id_doc_hotelx"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["ocupantesx.id_doc_clix"] = mapAlias["doc_clix"]!;
    mapCamposExc["ocupantesx.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["ocupantesx.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["ocupantesx.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["operaciones_tpv.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["operaciones_tpv.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["operaciones_tpv.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["operaciones_tpv.id_arqueo"] = mapAlias["arqueos"]!;
    mapCamposExc["operaciones_tpv.id_como_pago"] = mapAlias["metodos_pago"]!;

    mapCamposExc["ordenes_trabajo.id_aparato"] = mapAlias["aparatos"]!;
    mapCamposExc["ordenes_trabajo.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["ordenes_trabajo.id_averia"] = mapAlias["averias"]!;
    mapCamposExc["ordenes_trabajo.id_revision"] = mapAlias["revisiones"]!;
    mapCamposExc["ordenes_trabajo.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["ordenes_trabajo.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["ordenes_trabajo.id_tecnico_recepcion"] = mapAlias["tecnicos"]!;
    mapCamposExc["ordenes_trabajo.id_tecnico_trabajo"] = mapAlias["tecnicos"]!;
    mapCamposExc["ordenes_trabajo.id_tipo"] = mapAlias["grupos"]!;
    mapCamposExc["ordenes_trabajo.id_etapa"] = mapAlias["grupos"]!;

    mapCamposExc["partes_medicos.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["partes_medicos.id_medico"] = mapAlias["tecnicos"]!;
    mapCamposExc["partes_reparaciones.id_tipo"] = mapAlias["grupos"]!;


    mapCamposExc["partes_reparaciones.id_habitacion"] = mapAlias["habitaciones"]!;
    mapCamposExc["partes_reparaciones.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["partes_reparaciones.id_doc_almacen"] = mapAlias["doc_almacen"]!;
    mapCamposExc["partes_reparacionesx.id_parte_reparacion"] = mapAlias["partes_reparaciones"]!;
    mapCamposExc["partes_reparacionesx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["partes_reparacionesx.id_personal"] = mapAlias["personal"]!;
    mapCamposExc["pdas.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["pdas.id_puesto_alternativo"] = mapAlias["puestos"]!;
    mapCamposExc["pdas.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["pdas.id_serie"] = mapAlias["series"]!;
    mapCamposExc["pdas.id_almacen"] = mapAlias["almacenes"]!;


    mapCamposExc["pdas.id_agente1"] = mapAlias["comisionistas"]!;
    mapCamposExc["pdas.id_agente2"] = mapAlias["comisionistas"]!;
    mapCamposExc["pdas.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["pdas.id_almacen_pedidos"] = mapAlias["almacenes"]!;
    mapCamposExc["pdas.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["perfiles.id_proveedor"] = mapAlias["proveedores"]!;
    mapCamposExc["personal.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["personal.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["personal.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["personal.id_grupo"] = mapAlias["arboles"]!;
    mapCamposExc["personal.id_cta_pendiente"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_cta_anticipos"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_cta_salarios"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_como_pago"] = mapAlias["metodos_pago"]!;


    mapCamposExc["personal.id_cta_remun_lp"] = mapAlias["cuentas"]!;
    mapCamposExc["personal.id_cta_retrib_lp"] = mapAlias["cuentas"]!;

    mapCamposExc["presencia.id_personal"] = mapAlias["personal"]!;
    mapCamposExc["presupuestos.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["presupuestos.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["prevision.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["prevision.id_ficha_prevision"] = mapAlias["prevision"]!;
    mapCamposExc["proveedores.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["proveedores.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["proveedores.id_ubicacion"] = mapAlias["ubicaciones"]!;
    mapCamposExc["proveedores.id_ficha_fiscal"] = mapAlias["proveedores"]!;
    mapCamposExc["proveedores.id_ficha_varios"] = mapAlias["proveedores"]!;
    mapCamposExc["proveedores.id_grupo"] = mapAlias["arboles"]!;
    mapCamposExc["proveedores.id_transportista"] = mapAlias["transportistas"]!;
    mapCamposExc["proveedores.id_cuenta"] = mapAlias["cuentas"]!;
    mapCamposExc["proveedores.id_cuenta_gastos"] = mapAlias["cuentas"]!;
    mapCamposExc["proveedores.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["proveedoresx.id_proveedor"] = mapAlias["proveedores"]!;

    mapCamposExc["proveedoresx.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["proveedoresx.id_cuando_pago"] = mapAlias["plazos_pago"]!;
    mapCamposExc["proveedoresx.id_serie"] = mapAlias["series"]!;
    mapCamposExc["puestosx.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["puestosx.id_almacen_unico"] = mapAlias["almacenes"]!;
    mapCamposExc["puestosx.id_cajon"] = mapAlias["cajones"]!;

    mapCamposExc["puestosx.id_articulo_portes_web"] = mapAlias["articulos"]!;
    mapCamposExc["puestosx.id_serie_web"] = mapAlias["series"]!;
    mapCamposExc["puestosx.id_serie_tickets_web"] = mapAlias["series"]!;
    mapCamposExc["puestosx.id_carta_autopedido"] = mapAlias["carta_clientes"]!;
    mapCamposExc["puntos_clientes.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["puntos_clientes.id_documento"] = mapAlias["doc_cli"]!;
    mapCamposExc["puntos_clientes.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["puntos_clientes.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["rangos_barras.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["recetas.id_veterinario"] = mapAlias["veterinarios"]!;
    mapCamposExc["recetas.id_especie"] = mapAlias["especies"]!;
    mapCamposExc["recursos_actos.id_doc_hotelx"] = mapAlias["doc_hotelx"]!;
    mapCamposExc["recursos_actos.id_doc_clix"] = mapAlias["doc_clix"]!;
    mapCamposExc["recursos_actos.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["recursos_actos.id_padre"] = mapAlias["recursos_actos"]!;
    mapCamposExc["recursos_actos.id_posicion_persona"] = mapAlias["grupos"]!;
    mapCamposExc["remesas.id_como_pago"] = mapAlias["metodos_pago"]!;
    mapCamposExc["remesas.id_presentador"] = mapAlias["personal"]!;
    mapCamposExc["remesas.id_ordenante"] = mapAlias["personal"]!;
    mapCamposExc["remesas.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["remesas.id_asiento"] = mapAlias["asientos"]!;
    mapCamposExc["remesas_asientos.id_remesa"] = mapAlias["remesas"]!;
    mapCamposExc["remesas_asientos.id_asiento"] = mapAlias["asientos"]!;

    mapCamposExc["reservas_rest.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["reservas_rest.id_turno"] = mapAlias["turnos"]!;
    mapCamposExc["reservas_rest.id_tipo"] = mapAlias["grupos"]!;
    mapCamposExc["reservas_rest.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["reservas_rest.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["reservas_rest.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["retenciones.id_cta_hpdeudora"] = mapAlias["cuentas"]!;
    mapCamposExc["retenciones.id_cta_hpacreedora"] = mapAlias["cuentas"]!;
    mapCamposExc["retencionesx.id_retencion"] = mapAlias["retenciones"]!;
    mapCamposExc["revisiones.id_aparato"] = mapAlias["aparatos"]!;
    mapCamposExc["revisiones.id_doc_cli"] = mapAlias["doc_cli"]!;
    mapCamposExc["revisiones.id_doc_almacen"] = mapAlias["doc_almacen"]!;
    mapCamposExc["revisiones.id_almacen"] = mapAlias["almacenes"]!;
    mapCamposExc["rutas_ficheros.id_ficha"] = mapAlias["aparatos"]!;
    mapCamposExc["salones.id_articulo"] = mapAlias["articulos"]!;

    mapCamposExc["salonesx.id_salon"] = mapAlias["salones"]!;
    mapCamposExc["salonesx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["salonesx.id_personal"] = mapAlias["personal"]!;
    mapCamposExc["seccionesx.id_seccion"] = mapAlias["secciones"]!;
    mapCamposExc["series.id_grupo_series"] = mapAlias["grupos_series"]!;
    mapCamposExc["suscripciones.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["suscripciones.id_primer_numero"] = mapAlias["articulos"]!;
    mapCamposExc["tareas_tecnicos.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["tarifa_hotel.id_cupo"] = mapAlias["cupos"]!;
    mapCamposExc["tarifa_hotel.id_cargo_defecto"] = mapAlias["articulos"]!;
    mapCamposExc["tarifa_hotel.id_hotel_dtos"] = mapAlias["hotel_dtos"]!;


    mapCamposExc["tarifa_hotel_clientes.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["tarifa_hotel_clientes.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["tarifa_hotelx.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["tarifa_hotelx.id_tarifa_fija"] = mapAlias["tarifa_hotel"]!;
    mapCamposExc["tarifas.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["tarifas.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["tarifas.id_criterio_tarifa"] = mapAlias["grupos"]!;
    mapCamposExc["tarifas.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["tarifas.id_tarifa_articulos"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["tarifas.id_tarifa_hotel"] = mapAlias["tarifa_hotel"]!;



    mapCamposExc["tarifas_articulos.id_impuesto"] = mapAlias["impuestos"]!;
    mapCamposExc["tarifas_articulosx.id_tarifa_articulos"] = mapAlias["tarifas_articulos"]!;
    mapCamposExc["tarifas_articulosx.id_tarifa_doc"] = mapAlias["tarifas_doc"]!;


    mapCamposExc["tarifas_docx.id_tarifa_doc"] = mapAlias["tarifas_doc"]!;
    mapCamposExc["tarifas_docx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["tarifas_docx.id_categoria"] = mapAlias["arboles"]!;
    mapCamposExc["tarifas_docx.id_criterio_tarifa"] = mapAlias["grupos"]!;
    mapCamposExc["tarifas_docx.id_fabricante"] = mapAlias["fabricantes"]!;
    mapCamposExc["tecnicos.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["tecnicos.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["tecnicos.id_ubicacion"] = mapAlias["ubicaciones"]!;

    mapCamposExc["tecnicos.id_articulo_trab"] = mapAlias["articulos"]!;
    mapCamposExc["tecnicos.id_articulo_desp"] = mapAlias["articulos"]!;
    mapCamposExc["tecnicos_revisiones_averias.id_averia_revision"] = mapAlias["averias"]!;
    mapCamposExc["tecnicos_revisiones_averias.id_tecnico"] = mapAlias["tecnicos"]!;
    mapCamposExc["tecnicos_revisiones_averias.id_tarea_tecnicos"] = mapAlias["tareas_tecnicos"]!;
    mapCamposExc["telepedido_ofertas.id_carta"] = mapAlias["grupos"]!;
    mapCamposExc["telepedido_ofertasx.id_telepedido_ofertas"] = mapAlias["telepedido_ofertas"]!;
    mapCamposExc["telepedido_ofertasx.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["tiendas_virtuales.id_tarifa_articulos"] = mapAlias["tarifas_articulos"]!;

    mapCamposExc["tiendas_virtuales.id_serie"] = mapAlias["series"]!;
    mapCamposExc["tipo_habitaciones.id_cargo_defecto"] = mapAlias["articulos"]!;
    mapCamposExc["tpvext_cajas.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["tpvext_cajas.id_serie"] = mapAlias["series"]!;
    mapCamposExc["tpvext_cajas.id_almacen"] = mapAlias["almacenes"]!;

    mapCamposExc["tpvext_saldos.id_cliente"] = mapAlias["clientes"]!;
    mapCamposExc["tpvext_saldos.id_operacion"] = mapAlias["tpvext_saldos"]!;
    mapCamposExc["tpvext_saldos.id_caja"] = mapAlias["tpvext_cajas"]!;

    mapCamposExc["tpvext_secciones.id_articulo"] = mapAlias["articulos"]!;
    mapCamposExc["transportistas.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["transportistas.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["transportistas.id_ubicacion"] = mapAlias["ubicaciones"]!;

    mapCamposExc["transportistas.id_vehiculo"] = mapAlias["vehiculos"]!;

    mapCamposExc["usuariosx.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["usuariosx.id_personal"] = mapAlias["personal"]!;
    mapCamposExc["usuariosx.id_agente_atencion"] = mapAlias["comisionistas"]!;
    mapCamposExc["usuariosx.id_cajon"] = mapAlias["cajones"]!;
    mapCamposExc["usuariosx.id_cuenta_email"] = mapAlias["cuentas_email"]!;

    mapCamposExc["veterinarios.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["veterinarios.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["veterinarios.id_ubicacion"] = mapAlias["ubicaciones"]!;

    mapCamposExc["veterinarios.id_certificado"] = mapAlias["app_blobs"]!;
    mapCamposExc["vias_pago.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["vias_pago.id_moneda"] = mapAlias["monedas"]!;

    mapCamposExc["webs.id_serie"] = mapAlias["series"]!;
    mapCamposExc["webs.id_puesto"] = mapAlias["puestos"]!;

    mapCamposExc["webs.id_tarifa_excepciones"] = mapAlias["tarifas_articulos"]!;

    mapCamposExc["bancos.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["cfg_fondox.id_cfg_fondo"] = mapAlias["cfg_fondo"]!;
    mapCamposExc["cfg_menux.id_cfg_menu"] = mapAlias["cfg_menu"]!;
    mapCamposExc["dispositivos.id_dispositivo"] = mapAlias["dispositivos"]!;
    mapCamposExc["impresoras.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["impresoras.id_dispositivo"] = mapAlias["dispositivos"]!;
    mapCamposExc["informes_cfg.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["informes_cfg.id_cabecera_informe"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfg.id_pie_informe"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfg.id_modelo_design"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfgx.id_origen"] = mapAlias["informes_cfg"]!;
    mapCamposExc["informes_cfgx.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["informes_cfgx.id_dispositivo"] = mapAlias["dispositivos"]!;
    mapCamposExc["informes_cfgx.id_presets"] = mapAlias["informes_cfg"]!;
    mapCamposExc["messenger.id_de_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["messenger.id_de_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["messengerx.id_messenger"] = mapAlias["messenger"]!;
    mapCamposExc["messengerx.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["messengerx.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["paises.id_estadistica_pais"] = mapAlias["grupos_g"]!;
    mapCamposExc["paises.id_moneda"] = mapAlias["monedas"]!;
    mapCamposExc["pid.id_puesto"] = mapAlias["puestos"]!;
    mapCamposExc["provincias.id_grupo"] = mapAlias["grupos_g"]!;
    mapCamposExc["provincias.id_region"] = mapAlias["grupos_g"]!;
    mapCamposExc["provincias.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["puestos.id_usuario"] = mapAlias["usuarios"]!;
    mapCamposExc["puestos.id_impresora"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_ticadora"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_visor"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_scanner_barras"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_scanner_mag"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_bascula"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_smart_card"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_srv_in_hova1"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_srv_in_hova2"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_firma_manuscrita"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_impresora1_comandero"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_impresora2_comandero"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_impresora3_comandero"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_terminal_cobro"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_etiquetadora"] = mapAlias["dispositivos"]!;
    mapCamposExc["puestos.id_scanner_verificador"] = mapAlias["dispositivos"]!;
    mapCamposExc["ubicaciones.id_provincia"] = mapAlias["provincias"]!;
    mapCamposExc["ubicaciones.id_pais"] = mapAlias["paises"]!;
    mapCamposExc["usuarios.id_perfil"] = mapAlias["usuarios_perfiles"]!;
    mapCamposExc["usuarios.id_cfg_fondo"] = mapAlias["cfg_fondo"]!;
    mapCamposExc["usuarios.id_cfg_menu"] = mapAlias["cfg_menu"]!;
    mapCamposExc["usuarios_perfilesx.id_perfil"] = mapAlias["usuarios_perfiles"]!;
    mapCamposExc["xsettings.id_puesto"] = mapAlias["puestos"]!;
*/

    return mapCamposExc;
  }

  static Map<String, List<String>> initMapDRowsExcepciones() {
    Map<String, List<String>> map = {};
    map["articulos"] = ["late DRowArtDelegacionesMapping? rowArtDel;"];
    return map;
  }






}