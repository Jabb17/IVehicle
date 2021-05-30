import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ivehicle/pages/comment_screen.dart';
import 'package:ivehicle/widgets/drawer.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

import 'search_gallery/GalleryPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    HomeOption(),
    CreationOption(),
    GalleryOption(),
    SearchOption(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IVehicle"),
        centerTitle: true,
      ),
      drawer: HomePageDrawer(),
      body: IndexedStack(
        children: [
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOMEPAGE",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: "CREATION",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: "GALLERY",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "SEARCH",
          ),
        ],
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}

class HomeOption extends StatefulWidget {
  @override
  _HomeOptionState createState() => _HomeOptionState();
}

class _HomeOptionState extends State<HomeOption> {
  void initState() {
    super.initState();
    print('Calling initState for HomePage');
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 300,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 150,
              ),
              Image.network(
                  "https://ivehicleproject.000webhostapp.com/imgs/audi_a7.jpg"),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Center(
                    child: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          print("Openned comment screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CommentScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 150,
              ),
              Image.network(
                  "http://ivehicleproject.000webhostapp.com/imgs/golf_gti_MK7.jpg"),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Center(
                    child: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          print("Openned comment screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CommentScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 235,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              GestureDetector(
                child: Image.network(
                    "https://ivehicleproject.000webhostapp.com/imgs/ad_vw.jpg"),
                onTap: _launchVWAd,
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 150,
              ),
              Image.network(
                  "https://ivehicleproject.000webhostapp.com/imgs/a45_amg.jpg"),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Center(
                    child: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          print("Openned comment screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CommentScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 150,
              ),
              Image.network(
                  "https://ivehicleproject.000webhostapp.com/imgs/i30n.jpg"),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Center(
                    child: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          print("Openned comment screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CommentScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 290,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              GestureDetector(
                child: Image.network(
                    "https://ivehicleproject.000webhostapp.com/imgs/ad_audi.jpg"),
                onTap: _launchAudiAd,
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Image.network(
                  "https://ivehicleproject.000webhostapp.com/imgs/rs3.jpg"),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Center(
                    child: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          print("Openned comment screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CommentScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 70,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Image.network(
                  "https://ivehicleproject.000webhostapp.com/imgs/leon_fr.jpg"),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Center(
                    child: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          print("Openned comment screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CommentScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 300,
          height: 235,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              GestureDetector(
                child: Image.network(
                    "https://ivehicleproject.000webhostapp.com/imgs/ad_cupra.jpg"),
                onTap: _launchCupraAd,
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 150,
              ),
              Image.network(
                  "https://ivehicleproject.000webhostapp.com/imgs/audi_r8.jpeg"),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Center(
                    child: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          print("Openned comment screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CommentScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 150,
              ),
              Image.network(
                  "https://ivehicleproject.000webhostapp.com/imgs/mustang.jpeg"),
              Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  Center(
                    child: FavoriteButton(
                      isFavorite: false,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          print("Openned comment screen");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return CommentScreen();
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }
}

class CreationOption extends StatefulWidget {
  @override
  _CreationOptionState createState() => _CreationOptionState();
}

class _CreationOptionState extends State<CreationOption> {
  File _image;

  // ignore: unused_element
  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.photo_library),
                  title: new Text('Photo Library'),
                  onTap: () {
                    _imgFromGallery();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void initState() {
    super.initState();
    print('Calling initState for Creation');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 150,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _showPicker(context);
              },
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Colors.blue,
                child: _image != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.file(
                          _image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.fitHeight,
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.grey[800],
                        ),
                      ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Center(
              // ignore: deprecated_member_use
              child: FlatButton(
                splashColor: Colors.blueAccent,
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  'PUBLISH PICTURE',
                ),
                onPressed: () {
                  if (_image == null) {
                    Toast.show(
                        "PLEASE SELECT AN IMAGE OF YOUR GALLERY", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  } else {
                    Toast.show("PUBLISHED SUCCESFULLY!", context,
                        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GalleryOption extends StatefulWidget {
  @override
  _GalleryOptionState createState() => _GalleryOptionState();
}

class _GalleryOptionState extends State<GalleryOption> {
  int _lastItem = 0;

  List<int> imagenes = [];

  final ScrollController _controller = new ScrollController();
  var _final = false;

  _listener() {
    final maxScroll = _controller.position.maxScrollExtent;
    final minScroll = _controller.position.minScrollExtent;

    if (_controller.offset >= maxScroll) {
      setState(() {
        _final = true;
      });
    }

    if (_controller.offset <= minScroll) {
      setState(() {
        _final = false;
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print('Calling initState for Gallery');
    _controller.addListener(_listener);
    _agregar15Elementos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(padding: EdgeInsets.all(8), child: _galeria()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        backgroundColor: _final ? Colors.blue : Colors.grey,
        onPressed: _final
            ? () {
                _agregar15Elementos();
                setState(() {});
              }
            : null,
      ),
    );
  }

  Widget _galeria() {
    var API_KEY = "21805738-8b10b53ceb0dd0a97ac4a33bc";

    return RefreshIndicator(
      onRefresh: obtenerNuevasImagenes,
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: imagenes.length,
        controller: _controller,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
                height: index.isEven ? 200 : 240,
                child: FadeInImage(
                  placeholder: NetworkImage(
                      "https://ivehicleproject.000webhostapp.com/imgs/loading.gif"),
                  image: NetworkImage(
                      // TODO ASK
                      'https://picsum.photos/200/300/?image=${imagenes[index]}'),
                  fit: BoxFit.cover,
                )),
          );
        },
        staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
      ),
    );
  }

  Future<Null> obtenerNuevasImagenes() {
    final duracion = new Duration(seconds: 2);

    new Timer(duracion, () {
      imagenes.clear();
      _lastItem++;
      _agregar15Elementos();
    });

    return Future.delayed(duracion);
  }

  void _agregar15Elementos() {
    for (var i = 0; i < 15; i++) {
      _lastItem++;
      imagenes.add(_lastItem);
      setState(() {});
    }
  }
}

class SearchOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: SearchOptionPage(),
    );
  }
}

class SearchOptionPage extends StatefulWidget {
  SearchOptionPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SearchOptionPageState createState() => _SearchOptionPageState();
}

class _SearchOptionPageState extends State<SearchOptionPage> {
  String keyWord = "";
  TextEditingController editingController = TextEditingController();

  void initState() {
    super.initState();
    print('Calling initState for SearchOption');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // TODO SI SE QUITA LA APPBAR SI QUE SE VE LO QUE ESTÁS ESCRIBIENDO
        /*appBar: AppBar(
          title: Text(
            'Test',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),*/
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Search images",
                  prefixIcon: IconButton(
                    icon: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GalleryPage(
                            keyWord: keyWord,
                          ),
                        ),
                      );
                      editingController.text = "";
                    },
                  ),
                ),
                onEditingComplete: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GalleryPage(
                        keyWord: keyWord,
                      ),
                    ),
                  );
                  editingController.text = "";
                },
                onChanged: (value) {
                  setState(() {
                    keyWord = value;
                  });
                },
                controller: editingController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_launchAudiAd() async {
  const url = 'https://www.audi.es/es/web/es.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCupraAd() async {
  const url = 'https://www.cupraofficial.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchVWAd() async {
  const url = 'https://www.volkswagen.es/es.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
