import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:aplicacion1/src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fernando Bocanegra Herrera',
      theme: ThemeData(primaryColor: Colors.blueGrey),
      initialRoute: '/',
      routes: obtenerRutas(),
    );
  }
}
