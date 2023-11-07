class MapExcepciones {

  static Map<String, String> initMapCamposExcepciones() {
    Map<String, String> mapCamposExc = {};
    mapCamposExc["id_marca_hora"] = "grpMH"; // grupos
    mapCamposExc["id_contrato"] = "manCon"; // mantenimientos
    mapCamposExc["id_contrato2"] = "manCon2";
    mapCamposExc["id_contrapartida"] = "ctasCP"; //Cuentas
    mapCamposExc["id_serie_defecto"] = "serDef"; //Areas Compra
    mapCamposExc["id_serie_alternativa"] = "serAlt";
    mapCamposExc["id_tarifa1"] = "tarArt1"; //Areas Venta
    mapCamposExc["id_tarifa2"] = "tarArt2";
    mapCamposExc["id_tarifa3"] = "tarArt3";
    mapCamposExc["id_tarifa_componentes"] = "tarComp";
    mapCamposExc["id_tarifa_precios_tpvext"] = "tarPrecTEx";
    mapCamposExc["id_tarifa_ofertas_tpvext"] = "tarOferTEx";
    mapCamposExc["id_tarifa_alquiler_no_devuelto"] = "tarAlqNoDev";
    mapCamposExc["id_tarifa_gestion"] = "tarGes";
    mapCamposExc["id_tarifa_visor_precios"] = "tarVisor";
    mapCamposExc["id_tarifa_excepciones_visor_precios"] = "tarVisorExc";
    mapCamposExc["id_tarifa_cli_varios"] = "tarCliVar";
    mapCamposExc["id_tarifa_excepciones_cli_varios"] = "tarCliVarExc";
    mapCamposExc["id_metodo_cobro1"] = "metPag1";
    mapCamposExc["id_metodo_cobro2"] = "metPag2";
    mapCamposExc["id_metodo_cobro3"] = "metPag3";
    mapCamposExc["id_metodo_cobro4"] = "metPag4";
    mapCamposExc["id_metodo_cobro5"] = "metPag5";
    mapCamposExc["id_metodo_cobro6"] = "metPag6";
    mapCamposExc["id_metodo_cobro7"] = "metPag7";
    mapCamposExc["id_metodo_cobro8"] = "metPag8";
    mapCamposExc["id_metodo_efectivo"] = "metPagEf";
    mapCamposExc["id_metodo_telepedido"] = "metPagTele";
    mapCamposExc["id_metodo_efectivo_kiosko_hotel"] = "metPagEfKiosko";
    mapCamposExc["id_metodo_tarjeta_kiosko_hotel"] = "metPagTarKiosko";
    mapCamposExc["id_cargo_sup_individual"] = "artSupInd";
    mapCamposExc["id_cargo_sup_estancia_corta"] = "artSuoEstCor";
    mapCamposExc["id_cargo_sup_extra1"] = "artSupEx1";
    mapCamposExc["id_cargo_sup_extra2"] = "artSupEx2";
    mapCamposExc["id_cargo_sup_extra3"] = "artSupEx3";
    mapCamposExc["id_art_gastos_envio_telepedido"] = "artGasTele";
    mapCamposExc["id_art_bolsa_telepedido"] = "artBolsaTele";
    mapCamposExc["id_serie_defecto_tickets"] = "serDefTic";
    mapCamposExc["id_serie_alternativa_tickets"] = "serAltTic";
    mapCamposExc["id_grupo_destino"] = "grpDest";
    mapCamposExc["id_compuesto"] = "artComp"; //ArtCompuestosSQL
    mapCamposExc["id_ingrediente"] = "artIngr"; //ArtIngredientesSQL

    mapCamposExc["id_categoria"] = "arbCat"; //Articulos
    mapCamposExc["id_fabricante"] = "fab";
    mapCamposExc["id_proveedor"] = "prvd";
    mapCamposExc["id_criterio_tarifa"] = "grpCriTar";
    mapCamposExc["id_criterio_comision"] = "grpCriComis";
    mapCamposExc["id_grupo_spa"] = "grpSpa";
    mapCamposExc["id_grupo_articulos_doc"] = "grpArtDoc";
    mapCamposExc["id_grupo_calendario"] = "grpCalen";
    mapCamposExc["id_grupo_cubiculo"] = "grpCubic";
    mapCamposExc["id_estado"] = "grpEstado";
    mapCamposExc["id_coleccion"] = "grpColec";
    mapCamposExc["id_curso"] = "grpCurso";
    mapCamposExc["id_asignatura"] = "grpAsig";
    mapCamposExc["id_tipo_tratamiento"] = "grpTipoTrat";
    mapCamposExc["id_tipo_paquete_circuito"] = "grpTipoPaq";
    mapCamposExc["id_articulo_stock"] = "artStk";
    mapCamposExc["id_articulo_eco_tasas"] = "artEcoTas";
    mapCamposExc["id_articulo_envase"] = "artEnv";
    mapCamposExc["id_categoria_web"] = "arbWeb1";
    mapCamposExc["id_categoria_web2"] = "arbWeb2";
    mapCamposExc["id_categoria_web3"] = "arbWeb3";
    mapCamposExc["id_categoria_web4"] = "arbWeb4";
    mapCamposExc["id_coleccionable"] = "colec";
    mapCamposExc["id_sub_balance"] = "balSub"; // Balances
    mapCamposExc["id_serie_tickets"] = "serTic"; // BasculasTpvSQL
    mapCamposExc["id_arbol01"] = "arbAux01"; // CamposAuxiliaresSQL
    mapCamposExc["id_arbol02"] = "arbAux02";
    mapCamposExc["id_arbol03"] = "arbAux03";
    mapCamposExc["id_arbol04"] = "arbAux04";
    mapCamposExc["id_arbol05"] = "arbAux05";
    mapCamposExc["id_grupofactura"] = "grpFac"; // CartaGruposSQL
    mapCamposExc["id_carta"] = "grpCarta";
    mapCamposExc["id_arbol_xgeneral"] = "ccArbXGen"; // CentroCostesArbolesxSQL
    mapCamposExc["id_padre"] = "ccArbXPadre";
    mapCamposExc["id_grupo_proveedores"] = "arbGrpProv"; // CentroCostesDefectoSQL
    mapCamposExc["id_grupo_personal"] = "arbGrpPers";

    mapCamposExc["id_cargo_desayuno"] = "artDesay"; // CfgCentralReservasSQL
    mapCamposExc["id_cargo_media_pension"] = "artMp"; //
    mapCamposExc["id_cargo_pension_completa"] = "artPc"; //
    mapCamposExc["id_cargo_todo_incluido"] = "artTInc"; //
    mapCamposExc["id_cargo_uso_individual"] = "artUsoInd"; //
    mapCamposExc["id_cargo_cama_supletoria"] = "artCamSup"; //

    mapCamposExc["id_metodo_pago1"] = "metPagCr1"; //
    mapCamposExc["id_metodo_pago2"] = "metPagCr2"; //
    mapCamposExc["id_metodo_pago3"] = "metPagCr3"; //

    mapCamposExc["id_provincia"] = "provin";
    mapCamposExc["id_pais"] = "paises";
    mapCamposExc["id_ubicacion"] = "ubica"; //

    mapCamposExc["id_cuando_pago"] = "plazos"; //
    mapCamposExc["id_como_pago"] = "metPago"; //
    mapCamposExc["id_trasportista"] = "transp"; //
    mapCamposExc["id_estadistica_pais"] = "grpEstPais"; //
    mapCamposExc["id_moneda"] = "monedas"; //
    mapCamposExc["id_region"] = "grpGReg"; //


    return mapCamposExc;
  }

  static Map<String, List<String>> initMapDRowsExcepciones() {
    Map<String, List<String>> map = {};
    map["articulos"] = ["late DRowArtDelegacionesMapping? rowArtDel;"];
    return map;
  }






}