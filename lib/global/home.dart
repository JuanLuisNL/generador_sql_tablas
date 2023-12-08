import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import 'global.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(onPressed: onPressed, child: const Text("Generar")));
  }

  /////////////////////////////////////////////////////
  Future<void> onPressed() async {
    await GBL.init();
  }
}


/*
    @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey.shade200,
        child: Center(child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(onPressed: onPressed, child: const Text("Generar")),
              SizedBox(
                height: 500,
                child: SingleChildScrollView(
                  child: HtmlWidget(
                    getHtml(),
                    textStyle: const TextStyle(fontSize: 14, color: Colors.black,decoration: TextDecoration.none),

                    // all other parameters are optional, a few notable params:

                    // specify custom styling for an element
                    // see supported inline styling below
                    customStylesBuilder: (element) {
                      if (element.classes.contains('.rojo')) {
                        return {'color': 'red'};
                      } else if (element.classes.contains('.azul')) {
                        return {'color': 'blue'};
                      } else if (element.classes.contains('.verde')) {
                        return {'color': 'green'};
                      } else if (element.localName == 'body') {
                        return  {
                          'color': 'black',
                          'fontFamily': 'Helvetica Neue',
                        };
                      } else if (element.localName == 'table') {
                        return  {
                            'border-collapse': 'collapse',
                            'background-color': 'transparent',
                            'border': '1px',
                        };
                      } else if (element.localName == 'th') {
                        return {
                          'border': '1px solid #000',
                          'border-color': 'grey',
                        };
                      } else if (element.localName == 'td') {
                        return {
                          'border': '1px solid #000',
                          'padding': '0',
                          'border-color': 'grey',
                        };
                      }



                      // "th": Style(
                      // padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                      // border: Border.all(width: 1, style: BorderStyle.solid, color: Colors.grey),
                      // //textShadow: const [Shadow(offset: Offset(1, 1), blurRadius: 1, color: Colors.white)],
                      // backgroundColor: Colors.grey,
                      // fontSize: FontSize.large,
                      // color: const Color(0xff443380)),
                      // "td": Style(
                      // padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                      // border: Border.all(width: 1, style: BorderStyle.solid, color: GBL.lDarkMode ? Colors.grey : Colors.black54),
                      // fontSize: FontSize.large),
                      //
                      return null;
                    },

                    // customWidgetBuilder: (element) {
                    //   if (element.attributes['foo'] == 'bar') {
                    //     // render a custom block widget that takes the full width
                    //     return FooBarWidget();
                    //   }
                    //
                    //   if (element.attributes['fizz'] == 'buzz') {
                    //     // render a custom widget inline with surrounding text
                    //     return InlineCustomWidget(
                    //       child: FizzBuzzWidget(),
                    //     )
                    //   }
                    //
                    //   return null;
                    // },
                    //
                    // // this callback will be triggered when user taps a link
                    // onTapUrl: (url) => print('tapped $url'),

                    // select the render mode for HTML body
                    // by default, a simple `Column` is rendered
                    // consider using `ListView` or `SliverList` for better performance
                    renderMode: RenderMode.column,

                  ),
                ),
              ),
            ],
          ),
        )));
  }

  String transformarTexto(String texto) {
    List<String> lstColores = ["rojo", "azul", "verde"];

    String textoFormateado = texto;

    for (String color in lstColores) {
      textoFormateado = textoFormateado.replaceAll("<$color>", "<span class=\"$color\">");
      textoFormateado = textoFormateado.replaceAll("</$color>", "</span>");
    }

    // textoFormateado = textoFormateado.replaceAll("<P>", "<br>");
    // textoFormateado = textoFormateado.replaceAll("</P>", "");
    return textoFormateado;
  }

  static String getTablaHtml(String cTabla) {
    for (var i = 1; i <= 8; i++) {
      final cTipo = (i == 1 || i == 2) ? "table-cell" : "none";
      cTabla = cTabla.replaceAll("@@$i", cTipo);
    }
    return cTabla;
  }

  String getHtml() {
    String cHtml = '''
    <table class="table table-striped table-bordered table-hover">
	<tr>
		<th class="text-center" style="display:@@2">Алфавит</th>
		<th class="text-center" style="display:@@2">Название</th>
		<th class="text-center" style="display:@@1">Nombre de las letras</th>
		<th class="text-center" style="display:@@3">The name of the letters</th>
		<th class="text-center" style="display:@@4">Die Namen der Buchstaben</th>
		<th class="text-center" style="display:@@5">Français</th>
		<th class="text-center" style="display:@@6">Nomi delle lettere</th>
		<th class="text-center" style="display:@@7">Nome das letras</th>
		<th class="text-center" style="display:@@8">字母名称</th>
	</tr>
	<tr>
		<td style="display:@@2">А а</td>
		<td style="display:@@2">а</td>
		<td style="display:@@1">a</td>
		<td style="display:@@3">a</td>
		<td style="display:@@4">a</td>
		<td style="display:@@5">a</td>
		<td style="display:@@6">a</td>
		<td style="display:@@7">a</td>
		<td style="display:@@8">阿~/ä:/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Б б</td>
		<td style="display:@@2">бэ</td>
		<td style="display:@@1">be</td>
		<td style="display:@@3">be</td>
		<td style="display:@@4">be</td>
		<td style="display:@@5">bè</td>
		<td style="display:@@6">b</td>
		<td style="display:@@7">bê</td>
		<td style="display:@@8">杯 /bɛ/</td>
	</tr>
	<tr>
		<td style="display:@@2">В в</td>
		<td style="display:@@2">вэ</td>
		<td style="display:@@1">ve</td>
		<td style="display:@@3">ve</td>
		<td style="display:@@4">we</td>
		<td style="display:@@5">vè</td>
		<td style="display:@@6">v</td>
		<td style="display:@@7">vê</td>
		<td style="display:@@8">悲 /vɛ/ (颤动)</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Г г</td>
		<td style="display:@@2">гэ</td>
		<td style="display:@@1">gue</td>
		<td style="display:@@3">ge</td>
		<td style="display:@@4">ge</td>
		<td style="display:@@5">guè</td>
		<td style="display:@@6">g</td>
		<td style="display:@@7">guê</td>
		<td style="display:@@8">给 /ɡɛ/</td>
	</tr>
	<tr>
		<td style="display:@@2">Д д</td>
		<td style="display:@@2">дэ</td>
		<td style="display:@@1">de</td>
		<td style="display:@@3">de</td>
		<td style="display:@@4">de</td>
		<td style="display:@@5">dè</td>
		<td style="display:@@6">d</td>
		<td style="display:@@7">dê</td>
		<td style="display:@@8">得 /d̪ɛ/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Е е</td>
		<td style="display:@@2">е</td>
		<td style="display:@@1">ie, ye</td>
		<td style="display:@@3">ye</td>
		<td style="display:@@4">je</td>
		<td style="display:@@5">ie,ye</td>
		<td style="display:@@6">je</td>
		<td style="display:@@7">ie</td>
		<td style="display:@@8">耶 /je̞/</td>
	</tr>
	<tr>
		<td style="display:@@2">Ё ё</td>
		<td style="display:@@2">ё</td>
		<td style="display:@@1">io, yo</td>
		<td style="display:@@3">yo</td>
		<td style="display:@@4">jo</td>
		<td style="display:@@5">io,yo</td>
		<td style="display:@@6">jo</td>
		<td style="display:@@7">io</td>
		<td style="display:@@8">优 /jo̞/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Ж ж</td>
		<td style="display:@@2">жэ</td>
		<td style="display:@@1">ye, lle</td>
		<td style="display:@@3">zhe</td>
		<td style="display:@@4">sche</td>
		<td style="display:@@5">zhè</td>
		<td style="display:@@6">ž, zh</td>
		<td style="display:@@7">jê</td>
		<td style="display:@@8">遮 /ʐɛ/</td>
	</tr>
	<tr>
		<td style="display:@@2">З з</td>
		<td style="display:@@2">зэ</td>
		<td style="display:@@1">sze</td>
		<td style="display:@@3">ze</td>
		<td style="display:@@4">se</td>
		<td style="display:@@5">zè</td>
		<td style="display:@@6">s sonora</td>
		<td style="display:@@7">z</td>
		<td style="display:@@8">咋 /z̪ɛ/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">И и</td>
		<td style="display:@@2">и</td>
		<td style="display:@@1">i</td>
		<td style="display:@@3">ee</td>
		<td style="display:@@4">i</td>
		<td style="display:@@5">i</td>
		<td style="display:@@6">i</td>
		<td style="display:@@7">i</td>
		<td style="display:@@8">依~ /i:/</td>
	</tr>
	<tr>
		<td style="display:@@2">Й й</td>
		<td style="display:@@2">и краткое</td>
		<td style="display:@@1">i corta</td>
		<td style="display:@@3">ee short</td>
		<td style="display:@@4">kurzes i</td>
		<td style="display:@@5">i court</td>
		<td style="display:@@6">i breve</td>
		<td style="display:@@7">i curto</td>
		<td style="display:@@8">依 /i: 'kra.t̪kəjə/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">К к</td>
		<td style="display:@@2">ка</td>
		<td style="display:@@1">ka</td>
		<td style="display:@@3">ka</td>
		<td style="display:@@4">ka</td>
		<td style="display:@@5">ka</td>
		<td style="display:@@6">c dura</td>
		<td style="display:@@7">ka</td>
		<td style="display:@@8">喀 /ka/</td>
	</tr>
	<tr>
		<td style="display:@@2">Л л</td>
		<td style="display:@@2">эль</td>
		<td style="display:@@1">el</td>
		<td style="display:@@3">el</td>
		<td style="display:@@4">el</td>
		<td style="display:@@5">el</td>
		<td style="display:@@6">l</td>
		<td style="display:@@7">ele</td>
		<td style="display:@@8">乐 /ɛl̪ʲ/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">М м</td>
		<td style="display:@@2">эм</td>
		<td style="display:@@1">em</td>
		<td style="display:@@3">em</td>
		<td style="display:@@4">em</td>
		<td style="display:@@5">em</td>
		<td style="display:@@6">m</td>
		<td style="display:@@7">eme</td>
		<td style="display:@@8">麽 /ɛm/</td>
	</tr>
	<tr>
		<td style="display:@@2">Н н</td>
		<td style="display:@@2">эн</td>
		<td style="display:@@1">en</td>
		<td style="display:@@3">en</td>
		<td style="display:@@4">en</td>
		<td style="display:@@5">en</td>
		<td style="display:@@6">n</td>
		<td style="display:@@7">ene</td>
		<td style="display:@@8">恩 /ɛn̪/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">О о</td>
		<td style="display:@@2">о</td>
		<td style="display:@@1">o</td>
		<td style="display:@@3">o</td>
		<td style="display:@@4">o</td>
		<td style="display:@@5">o</td>
		<td style="display:@@6">o</td>
		<td style="display:@@7">ô</td>
		<td style="display:@@8">哦 /o̞/</td>
	</tr>
	<tr>
		<td style="display:@@2">П п</td>
		<td style="display:@@2">пэ</td>
		<td style="display:@@1">pe</td>
		<td style="display:@@3">pe</td>
		<td style="display:@@4">pe</td>
		<td style="display:@@5">pè</td>
		<td style="display:@@6">p</td>
		<td style="display:@@7">pê</td>
		<td style="display:@@8">被 /pɛ/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Р р</td>
		<td style="display:@@2">эр</td>
		<td style="display:@@1">er</td>
		<td style="display:@@3">er</td>
		<td style="display:@@4">er</td>
		<td style="display:@@5">er</td>
		<td style="display:@@6">r</td>
		<td style="display:@@7">er</td>
		<td style="display:@@8">热 /ɛr̪/</td>
	</tr>
	<tr>
		<td style="display:@@2">С с</td>
		<td style="display:@@2">эс</td>
		<td style="display:@@1">es</td>
		<td style="display:@@3">es</td>
		<td style="display:@@4">es</td>
		<td style="display:@@5">es</td>
		<td style="display:@@6">s sorda</td>
		<td style="display:@@7">esse</td>
		<td style="display:@@8">丝 /ɛs̪/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Т т</td>
		<td style="display:@@2">тэ</td>
		<td style="display:@@1">te</td>
		<td style="display:@@3">te</td>
		<td style="display:@@4">te</td>
		<td style="display:@@5">tè</td>
		<td style="display:@@6">t</td>
		<td style="display:@@7">tê</td>
		<td style="display:@@8">特 /tɛ/</td>
	</tr>
	<tr>
		<td style="display:@@2">У у</td>
		<td style="display:@@2">у</td>
		<td style="display:@@1">u</td>
		<td style="display:@@3">oo</td>
		<td style="display:@@4">u</td>
		<td style="display:@@5">ou</td>
		<td style="display:@@6">u</td>
		<td style="display:@@7">u</td>
		<td style="display:@@8">屋~ /u:/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Ф ф</td>
		<td style="display:@@2">эф</td>
		<td style="display:@@1">ef</td>
		<td style="display:@@3">ef</td>
		<td style="display:@@4">ef</td>
		<td style="display:@@5">ef</td>
		<td style="display:@@6">f</td>
		<td style="display:@@7">efe</td>
		<td style="display:@@8">飞 /ɛf/</td>
	</tr>
	<tr>
		<td style="display:@@2">Х х</td>
		<td style="display:@@2">ха</td>
		<td style="display:@@1">ja</td>
		<td style="display:@@3">kha</td>
		<td style="display:@@4">cha</td>
		<td style="display:@@5">kha</td>
		<td style="display:@@6">ch aspirata</td>
		<td style="display:@@7">kh (h aspirado)</td>
		<td style="display:@@8">哈 /xa/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Ц ц</td>
		<td style="display:@@2">цэ</td>
		<td style="display:@@1">tse</td>
		<td style="display:@@3">tse</td>
		<td style="display:@@4">tse</td>
		<td style="display:@@5">tsè</td>
		<td style="display:@@6">z sorda</td>
		<td style="display:@@7">tse</td>
		<td style="display:@@8">切 /ʦ̪ɛ/</td>
	</tr>
	<tr>
		<td style="display:@@2">Ч ч</td>
		<td style="display:@@2">че</td>
		<td style="display:@@1">che</td>
		<td style="display:@@3">che</td>
		<td style="display:@@4">tsche</td>
		<td style="display:@@5">tchè</td>
		<td style="display:@@6">c dolce</td>
		<td style="display:@@7">tch</td>
		<td style="display:@@8">其 /ʨe/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Ш ш</td>
		<td style="display:@@2">ша</td>
		<td style="display:@@1">sha</td>
		<td style="display:@@3">sha</td>
		<td style="display:@@4">scha</td>
		<td style="display:@@5">cha</td>
		<td style="display:@@6">š (sci)</td>
		<td style="display:@@7">sh</td>
		<td style="display:@@8">下 /ʂa/</td>
	</tr>
	<tr>
		<td style="display:@@2">Щ щ</td>
		<td style="display:@@2">ща</td>
		<td style="display:@@1">shcha</td>
		<td style="display:@@3">shcha</td>
		<td style="display:@@4">schtscha</td>
		<td style="display:@@5">chtcha</td>
		<td style="display:@@6">šč sibilante</td>
		<td style="display:@@7">chsch</td>
		<td style="display:@@8">吸 /ɕːa/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Ъ ъ</td>
		<td style="display:@@2">твёрдый знак</td>
		<td style="display:@@1">signo fuerte</td>
		<td style="display:@@3">hard sign</td>
		<td style="display:@@4">Härtezeichen</td>
		<td style="display:@@5">signe dure</td>
		<td style="display:@@6">segno forte</td>
		<td style="display:@@7">sinal forte</td>
		<td style="display:@@8">/'t̪vʲо.r̪dɨj 'z̪nak/ (重音符号)</td>
	</tr>
	<tr>
		<td style="display:@@2">Ы ы</td>
		<td style="display:@@2">ы</td>
		<td style="display:@@1">i gutural</td>
		<td style="display:@@3">ih</td>
		<td style="display:@@4">y</td>
		<td style="display:@@5">é, er</td>
		<td style="display:@@6">y suono a metà tra i e u</td>
		<td style="display:@@7">i gutural (entre E e I)</td>
		<td style="display:@@8">/ɨ:/ (ê=在 e 和 i 之间)</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Ь ь</td>
		<td style="display:@@2">мягкий знак</td>
		<td style="display:@@1">signo débil</td>
		<td style="display:@@3">soft sign</td>
		<td style="display:@@4">Weichheitszeichen</td>
		<td style="display:@@5">signe douce</td>
		<td style="display:@@6">segno debole</td>
		<td style="display:@@7">sinal mole</td>
		<td style="display:@@8">/'mʲa.xkʲɪj 'z̪nak/(轻音符号)</td>
	</tr>
	<tr>
		<td style="display:@@2">Э э</td>
		<td style="display:@@2">э</td>
		<td style="display:@@1">e</td>
		<td style="display:@@3">e</td>
		<td style="display:@@4">e</td>
		<td style="display:@@5">è</td>
		<td style="display:@@6">e aperta</td>
		<td style="display:@@7">é</td>
		<td style="display:@@8">额 /ɛ/</td>
	</tr>
	<tr class="odd-row">
		<td style="display:@@2">Ю ю</td>
		<td style="display:@@2">ю</td>
		<td style="display:@@1">iu</td>
		<td style="display:@@3">yoo</td>
		<td style="display:@@4">ju</td>
		<td style="display:@@5">iu,yu</td>
		<td style="display:@@6">ju</td>
		<td style="display:@@7">iu</td>
		<td style="display:@@8">哟~/ju:/</td>
	</tr>
	<tr>
		<td style="display:@@2">Я я</td>
		<td style="display:@@2">я</td>
		<td style="display:@@1">ia</td>
		<td style="display:@@3">ya</td>
		<td style="display:@@4">ja</td>
		<td style="display:@@5">ia,ya</td>
		<td style="display:@@6">ja</td>
		<td style="display:@@7">ia</td>
		<td style="display:@@8">呀~/ja:/</td>
	</tr>
</table>
<br />
 
    ''';
    cHtml = transformarTexto(cHtml);
    cHtml = getTablaHtml(cHtml);
    return cHtml;
  }

*/