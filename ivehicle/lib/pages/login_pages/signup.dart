import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ivehicle/pages/home_page.dart';
import 'package:ivehicle/pages/login_pages/signin.dart';
import 'package:toast/toast.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() {
    return new SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> {
  final controlUsuario = new TextEditingController();
  final controlContrasena = new TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    controlUsuario.dispose();
    controlContrasena.dispose();
    super.dispose();
  }

  Future<List> obtenerUsuario() async {
    var url = "https://ivehicleproject.000webhostapp.com/registration.php";
    final response = await http.post(Uri.parse(url), body: {
      "usuario": controlUsuario.text,
      "contrasena": controlContrasena.text,
    });

    print(response.body);

    if (response.body == "Correct") {
      Toast.show("Logged succesffully", context,
          duration: Toast.LENGTH_LONG,
          gravity: Toast.CENTER,
          backgroundColor: Colors.green,
          textColor: Colors.white);
    } else if (response.body == "Error") {
      Toast.show("Logged incorrect", context,
          duration: Toast.LENGTH_LONG,
          gravity: Toast.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Write the form to create your account"),
              TextField(
                controller: controlUsuario,
                decoration: InputDecoration(
                  labelText: 'Username',
                  errorText: _validate ? ' Please write a valid user!' : null,
                ),
              ),
              TextField(
                controller: controlContrasena,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  errorText:
                      _validate ? ' Please write a valid password!' : null,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  if (controlUsuario.text.isEmpty &&
                      controlContrasena.text.isEmpty) {
                    setState(() {
                      controlUsuario.text.isEmpty
                          ? _validate = true
                          : _validate = false;
                      controlContrasena.text.isEmpty
                          ? _validate = true
                          : _validate = false;
                    });
                  } else {
                    obtenerUsuario();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  }
                },
                child: Text('CREATE ACCOUNT'),
                textColor: Colors.white,
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
