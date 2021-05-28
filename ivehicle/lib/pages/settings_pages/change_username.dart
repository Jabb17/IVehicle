import 'help_screen.dart';
import 'terms_screen.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import 'theme_screen.dart';

class UserSetting extends StatefulWidget {
  @override
  _UserSettingState createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  String _currentName;

  var _formKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change username'),
        centerTitle: true,
      ),
      body: Column(
        key: _formKey,
        children: <Widget>[
          Text('Please write your username'),
          SizedBox(
            height: 30,
          ),
          TextFormField(
            // initialValue: userData.user gives a initial text to the input
            validator: (val) => val.isEmpty ? 'Please enter a name' : null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
          RaisedButton(
              child: Text('Save'),
              onPressed: () async {
                if (_formKey.currentState.validate()) {
                  print('Update if good');
                }
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
