import 'package:flutter/material.dart';
import 'package:kolping_app/paginas/especialidades.dart';

class Pagina_principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[100],
      appBar: AppBar(
        title: Text("sucursales"),
      ),
      body: Center(
        child: Container(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    "Elige una sucursal",
                  ),
                ),
                /*Row(
                  children: <Widget>[
                    Text("Sucursal1"),
                    Icon(Icons.add),
                  ],
                ),*/

                Icon(
                  Icons.water_damage_rounded,
                  size: 300,
                  color: Colors.teal,
                ),
                Container(
                  child: TextButton(
                    child: Text("Sucursal 1"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Especialidades()));
                    },
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text("Sucursal 2"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Especialidades()));
                    },
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text("Sucursal 3"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Especialidades()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
