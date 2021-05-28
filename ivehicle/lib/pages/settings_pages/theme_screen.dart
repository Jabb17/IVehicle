import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class TemaScreen extends StatefulWidget {
  @override
  _TemaScreenState createState() => _TemaScreenState();
}

class _TemaScreenState extends State<TemaScreen> {
  int languageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change theme'),
        centerTitle: true,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(tiles: [
            SettingsTile(
              title: "Blue",
              leading: Icon(
                Icons.circle,
                color: Colors.blue.shade400,
              ),
              trailing: trailingWidget(0),
              onPressed: (BuildContext context) {
                changeLanguage(0);
              },
            ),
            SettingsTile(
              title: "Orange",
              leading: Icon(
                Icons.circle,
                color: Colors.deepOrange,
              ),
              trailing: trailingWidget(1),
              onPressed: (BuildContext context) {
                changeLanguage(1);
              },
            ),
            SettingsTile(
              title: "Yellow",
              leading: Icon(
                Icons.circle,
                color: Colors.yellow,
              ),
              trailing: trailingWidget(2),
              onPressed: (BuildContext context) {
                changeLanguage(2);
              },
            ),
            SettingsTile(
              title: "Black",
              leading: Icon(Icons.circle, color: Colors.black),
              trailing: trailingWidget(3),
              onPressed: (BuildContext context) {
                changeLanguage(3);
              },
            ),
          ]),
        ],
      ),
    );
  }

  Widget trailingWidget(int index) {
    return (languageIndex == index)
        ? Icon(Icons.check, color: Colors.blue)
        : Icon(null);
  }

  void changeLanguage(int index) {
    setState(() {
      languageIndex = index;
    });
  }
}
