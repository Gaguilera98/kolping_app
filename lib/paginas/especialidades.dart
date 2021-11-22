import 'package:flutter/material.dart';
import 'package:kolping_app/Modelo/Especialidades.dart';

class Especialidades extends StatefulWidget {
  @override
  _EspecialidadesState createState() => _EspecialidadesState();
}

class _EspecialidadesState extends State<Especialidades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[100],
      appBar: AppBar(
        title: Text("Especialidades"),
      ),
      body: Container(
        child: GridView.builder(
          itemCount: ListaEspecialidades.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                      offset: Offset(10.0, 10.0),
                    )
                  ],
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(15)),
              child: GestureDetector(
                onTap: () {
                  print("hiciste click en" + ListaEspecialidades[index].nombre);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/" + ListaEspecialidades[index].foto,
                      width: 200,
                    ),
                    Text(ListaEspecialidades[index].nombre)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
