/*import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Imagenes',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  int contador = 0;
  TextStyle estilosTexto = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
*/
import 'package:aplicacion1/src/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de imagenes',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: obtenerRutas(),
    );
  }
}

/*
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menú principal',
            onPressed: () => {},
          ),
          title: Text('Imágenes'),
          centerTitle: true,
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Alertas',
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.mail),
              tooltip: 'Correo',
              onPressed: () => {},
            ),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              child: Image.asset('assets/images/1.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 150,
              child: Image.asset('assets/images/2.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              child: Image.network(
                  'https://image.roku.com/bWFya2V0aW5n/roku-logo.png'),
            ),
            Text(
              'haz presionado este numero de veces',
              style: estilosTexto,
            ),
            SizedBox(
              height: 20,
            ),
            Text('$contador'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          print(contador);
        },
        child: Icon(Icons.plus_one),
      ),
    );
    return scaffold;
  }
}
*/
