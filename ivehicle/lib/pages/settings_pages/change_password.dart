import 'dart:async';
import 'package:mysql1/mysql1.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: PasswordSetting(),
      ),
    );
  }
}

// Create a Form widget.
class PasswordSetting extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<PasswordSetting> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

void bbdd() async {
  // Open a connection (testdb should already exist)
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'https://www.000webhost.com/',
      port: 3306,
      user: 'ivehicle_admin',
      db: 'id16175847_adminivehicle',
      password: 'Stucom1234.1234'));

  // Update some data

  var passwords;
  await conn.query(
      'update users set contrasena=? where name=?', [passwords, 'testUser']);

  // Finally, close the connection
  await conn.close();
}
