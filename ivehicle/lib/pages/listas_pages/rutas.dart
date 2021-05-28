import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RutasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Routes"),
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
                splashColor: Color(0xff03738C),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: _launchRuta1,
                        // TODO CAMBIAR DISEÑO DEL BOTON
                        child: Text(
                          "Route through Andorra",
                          style: new TextStyle(fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(90.0),
              child: InkWell(
                splashColor: Color(0xff03738C),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: _launchRuta2,
                        // TODO CAMBIAR DISEÑO DEL BOTON
                        child: Text(
                          "Route through Montserrat",
                          style: new TextStyle(fontSize: 17.0),
                        ),
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

_launchRuta1() async {
  // TODO NEW URL https://goo.gl/maps/tcDhRnYjphxK3xVX7
  // TODO PROBAR EN MOVIL FÍSICO
  // TODO ASK
  const url =
      'https://www.google.com/maps/dir/42.498409,1.511369/Restaurant+la+Borda+de+la+Coma,+El+Serrat,+Andorra/Ctra.+de+Fontaneda,+1,+San+Juli%C3%A1n+de+Loria,+Andorra/Centre+de+Formaci%C3%B3+Professional+d';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchRuta2() async {
  // TODO NEW URL https://goo.gl/maps/J4FeVQHHqTVfoHR4A
  // TODO PROBAR EN MOVIL FÍSICO
  // TODO ASK
  const url =
      'https://www.google.es/maps/dir/Carrer+de+Manso,+14,+08015+Barcelona,+Espanya/Complejo+deportivo+de+Les+Comes,+Carrer+de+Carles+Riba,+68,+08700+Igualada,+B/Pontils/El+Pont+d';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
