import 'package:aplicacion1/src/pages/secondForm_page.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion1/src/pages/billetera_page.dart';
import 'package:aplicacion1/src/pages/mapa_pages.dart';
import 'package:aplicacion1/src/pages/fotos_pages.dart';
import 'package:aplicacion1/src/pages/podcast_page.dart';
import 'package:aplicacion1/src/pages/lugares_page.dart';
import 'package:aplicacion1/src/pages/formulario_page.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPage(),
    'mapa': (BuildContext context) => MapaPage(),
    'billetera': (BuildContext context) => BilleteraPage(),
    'foto': (BuildContext context) => FotoPage(),
    'podcast': (BuildContext context) => PodcastPage(),
    'lugares': (BuildContext context) => LugaresPage(),
    'formulario_dos': (BuildContext context) => SecondFormPage(),
  };
}
