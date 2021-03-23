import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FocusNode nombreFocus;
  FocusNode emailFocus;
  FocusNode passwordFocus;

  String nombre;
  String email;
  String password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
                title: Text('Bocanegra Herrera Fernando'),
                iconTheme: IconThemeData(color: Colors.grey)),
            body: Center(
              child: ListView(
                  //Todo esto lo meti en un ListView que sirve como tipo Scroll
                  shrinkWrap: true,
                  padding: EdgeInsets.all(15.0),
                  children: <Widget>[
                    //Aqiu terminan los atributos del Scroll
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 150.0,
                              height: 150.0,
                              child: Center(
                                child: Image.network(
                                    'https://i.pinimg.com/originals/48/68/cc/4868ccfb4af044916b649961af577dfa.jpg'),
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText: 'Nombre',
                                  hintText: 'Ejemplo: Juan',
                                  prefixIcon: Icon(Icons.person)),
                              //controller: nombreTextController,
                              onSaved: (value) {
                                nombre = value;
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Campo vacio';
                                }
                              },
                              focusNode: this.nombreFocus,
                              onEditingComplete: () =>
                                  requestFocus(context, emailFocus),
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelText: 'Email',
                                  hintText: 'Ejemplo@example.com',
                                  prefixIcon: Icon(Icons.mail)),
                              //controller: apTextController,
                              onSaved: (value) {
                                email = value;
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Campo vacio';
                                }
                              },
                              focusNode: this.passwordFocus,
                              onEditingComplete: () =>
                                  requestFocus(context, emailFocus),
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    prefixIcon: Icon(Icons.lock)),
                                //controller: apTextController,
                                onSaved: (value) {
                                  password = value;
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Campo vacio';
                                  }
                                }),
                            SizedBox(
                              height: 6.0,
                            ),
                            RaisedButton(
                                color: Colors.red,
                                textColor: Colors.white,
                                onPressed: () {},
                                child: Text('Registrarse')),
                            RaisedButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              onPressed: () {
                                if (formKey.currentState.validate()) {
                                  formKey.currentState
                                      .save(); //Estos son los datos que tiene que comparar para poder iniciar sesión, se tienen que ingresar exactamente los mismos datos
                                  if (nombre.compareTo('Fernando Bocanegra') ==
                                          0 &&
                                      email.compareTo('fercho@hotmail.com') ==
                                          0 &&
                                      password.compareTo('feraldar1303') == 0) {
                                    Navigator.pushNamed(
                                        context, 'formulario_dos',
                                        arguments: Argumentos(
                                            nombre: this.nombre,
                                            email: this.email,
                                            password: this.password));
                                  } else {
                                    print('Datos incorrectos');
                                  }
                                }
                              },
                              child: Text(' Iniciar '),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            )));
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus();
  }

  @override
  void initState() {
    super.initState();
    //nombreTextController = TextEditingController();
    //apTextController = TextEditingController();
    nombreFocus = FocusNode();
    emailFocus = FocusNode();
    passwordFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    //nombreTextController.dispose();
    //apTextController.dispose();
    nombreFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String email;
  String password;

  Argumentos({this.nombre, this.email, this.password});
}
