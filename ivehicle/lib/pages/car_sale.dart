import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CarSaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Car sale"),
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
                onTap: () {},
                splashColor: Color(0xff03738C),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: _launchURLCochesNet,
                        child: Image.network(
                          'https://yt3.ggpht.com/ytc/AAUvwngCgd6L_rZlfkO1wC3ndJeyX2Cia2jP5oZmsMjYPw=s900-c-k-c0x00ffffff-no-rj',
                          width: 200,
                          fit: BoxFit.cover,
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
                onTap: () {},
                splashColor: Color(0xff03738C),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: _launchURLAutoScout24,
                        child: Image.network(
                          'https://www.autoscout24.com/cms-content-assets/2dYEOsD5iTOqrP4K7vU9VD-94ef50dbc5c096025cc0ace0b942812b-AS24_LOGO_gelb-1100.jpg',
                          width: 200,
                          fit: BoxFit.cover,
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
                onTap: () {},
                splashColor: Color(0xff03738C),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: _launchURLMobileDe,
                        child: Image.network(
                          'https://cdn1.vogel.de/9h0Im_Ig3yre0XXvSxiCbpkw61k=/fit-in/600x315/filters:format(png):quality(90)/images.vogel.de/vogelonline/bdb/306800/306804/original.jpg',
                          width: 200,
                          fit: BoxFit.cover,
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

_launchURLCochesNet() async {
  const url = 'https://www.coches.net/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLAutoScout24() async {
  const url = 'https://www.autoscout24.es/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLMobileDe() async {
  const url = 'https://www.mobile.de/?lang=en/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
