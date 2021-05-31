import 'package:mysql1/mysql1.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Change your password';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          centerTitle: true,
        ),
        body: PasswordSetting(),
      ),
    );
  }
}

class PasswordSetting extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<PasswordSetting> {
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
                if (_formKey.currentState.validate()) {}
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
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'ivehicle_admin',
      db: 'id16175847_adminivehicle',
      password: 'Stucom1234.1234',
    ),
  );

  var passwords;
  await conn.query(
    'update users set contrasena=? where name=?',
    [passwords, 'testUser'],
  );

  await conn.close();
}
