import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'login.dart';

message(String msg) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController username = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController passwordc = new TextEditingController();
  final _key = GlobalKey<FormState>();

  void register() async {
    if (password.text == passwordc.text) {
      if (_key.currentState.validate()) {
        print("User validated");
        var uri =
            Uri.parse("https://ivehicleproject.000webhostapp.com/file.php");
        final response = await http.post(uri, body: {
          "user": username.text,
          "email": email.text,
          "type": '1',
          "age": age.text,
          "pass": password.text
        });
        final data = jsonDecode(response.body);
        if (response.statusCode == 200) {
          if (data['val'] == 1) {
            message(data['statut']);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          } else {
            message(data['statut']);
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(44, 44, 44, 0.6),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _key,
              child: Column(
                children: <Widget>[
                  Image.network(
                    "https://ivehicleproject.000webhostapp.com/imgs/logo_Alex.png",
                    height: 100,
                  ),
                  Card(
                    child: TextFormField(
                      controller: username,
                      validator: (e) =>
                          e.isEmpty ? "You must write something!" : null,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20, right: 15),
                            child: Icon(
                              Icons.person,
                              size: 30,
                            ),
                          ),
                          labelText: "Username"),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Card(
                    child: TextFormField(
                      controller: age,
                      validator: (e) =>
                          e.isEmpty ? "You must write something!" : null,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20, right: 15),
                            child: Icon(
                              Icons.person,
                              size: 30,
                            ),
                          ),
                          labelText: "Age"),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Card(
                    child: TextFormField(
                      controller: email,
                      validator: (e) =>
                          e.isEmpty ? "You must write something!" : null,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20, right: 15),
                            child: Icon(
                              Icons.person,
                              size: 30,
                            ),
                          ),
                          labelText: "Email"),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Card(
                    child: TextFormField(
                      controller: password,
                      validator: (e) =>
                          e.isEmpty ? "You must write something!" : null,
                      style: TextStyle(fontSize: 20),
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20, right: 15),
                            child: Icon(
                              Icons.phonelink_lock,
                              size: 30,
                            ),
                          ),
                          labelText: "Password"),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Card(
                    child: TextFormField(
                      controller: passwordc,
                      validator: (e) =>
                          e.isEmpty ? "You must write something!" : null,
                      style: TextStyle(fontSize: 20),
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20, right: 15),
                            child: Icon(
                              Icons.phonelink_lock,
                              size: 30,
                            ),
                          ),
                          labelText: "Password confirm"),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    height: 44,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: register,
                      color: Colors.lightBlueAccent,
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Do you have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
