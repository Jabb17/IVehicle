import 'package:flutter/material.dart';
import 'package:ivehicle/pages/settings.dart';
import 'package:provider/provider.dart';
import 'pages/login_pages/login.dart';
import 'pages/login_pages/register.dart';
/*import 'pages/login_pages/signin.dart';
import 'pages/login_pages/signup.dart';*/

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeModel()),
        ],
        child: IVehicle(),
      ),
    );

class IVehicle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeModel>(context).currentTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://ivehicleproject.000webhostapp.com/imgs/bg_img_login_compr.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 450),
          child: Center(
            child: Column(
              children: [
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      // TODO ORIGINAL IS SIGN IN PAGE
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      // TODO ORIGINAL IS SIGN UP PAGE
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "CREATE AN ACCOUNT",
                    style: TextStyle(color: Colors.white),
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
