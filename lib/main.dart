import 'package:flutter/material.dart';
import 'package:kolping_app/paginas/pagina_principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController contrasena = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[100],
      // ignore: avoid_unnecessary_containers
      body: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5.0,
                spreadRadius: 5.0,
                offset: Offset(15.0, 15.0),
              )
            ],
            color: Colors.tealAccent[400],
            borderRadius: BorderRadius.circular(50)),
        margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
        padding: EdgeInsets.only(left: 50, right: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logotipokolping.jpg", height: 160),
              TextField(
                controller: email,
                decoration:
                    const InputDecoration(hintText: "Codigo de usuario"),
              ),
              SizedBox(
                height: 55,
              ),
              TextField(
                controller: contrasena,
                obscureText: true,
                decoration:
                    const InputDecoration(hintText: "Ingrese su contraseña"),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Iniciar Sesion",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Pagina_principal()));
                  },
                ),
              ),
              SizedBox(height: 10),
              Text("Inicia Sesion con Google"),
            ],
          ),
        ),
      ),
    );
  }
}
