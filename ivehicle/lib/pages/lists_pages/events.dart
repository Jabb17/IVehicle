import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EventosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Events"),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff0367A6),
      body: Container(
        alignment: Alignment.center,
        child: GridView.count(
          crossAxisCount: 1,
          children: <Widget>[
            GestureDetector(
              onTap: _launchEvento1,
              child: Card(
                margin: EdgeInsets.all(90.0),
                child: InkWell(
                  splashColor: Color(0xff03738C),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Navarra classic festival",
                          style: new TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchEvento2,
              child: Card(
                margin: EdgeInsets.all(90.0),
                child: InkWell(
                  splashColor: Color(0xff03738C),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Car meeting",
                          style: new TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
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

_launchEvento1() async {
  const url =
      'https://www.miclasico.com/calendario/eventodetalle/5507/navarra-classic-festival';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchEvento2() async {
  const url =
      'https://www.miclasico.com/calendario/eventodetalle/5582/concentracion-de-coches-clasicos-y-deportivos-fiestas-san-antonio';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
