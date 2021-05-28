import 'package:flutter/material.dart';
import 'package:ivehicle/pages/listas_pages/eventos.dart';
import 'package:ivehicle/pages/listas_pages/rutas.dart';

class ListsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Listas"),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff0367A6),
      body: Container(
        alignment: Alignment.center,
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(90.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RutasScreen()),
                  );
                },
                splashColor: Color(0xff03738C),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Rutas",
                        style: new TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(90.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventosScreen()),
                  );
                },
                splashColor: Color(0xff03738C),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Eventos",
                        style: new TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
