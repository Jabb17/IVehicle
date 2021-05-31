import 'package:flutter/material.dart';
import 'package:ivehicle/pages/settings_pages/help_screen.dart';
import 'package:ivehicle/pages/settings_pages/change_username.dart';
import 'package:ivehicle/pages/settings_pages/change_password.dart';
import 'package:ivehicle/pages/settings_pages/terms_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:settings_ui/settings_ui.dart';

import '../main.dart';
import 'settings_pages/theme_screen.dart';

int _color1 = 1;
enum ThemeType { Amarillo, Naranja, Azul, Negro }

ThemeData amarilloTheme = ThemeData.light().copyWith(
  primaryColor: Colors.yellow,
  appBarTheme: AppBarTheme(color: Colors.yellow),
);

ThemeData azulTheme = ThemeData.light().copyWith(
  primaryColor: Colors.blue,
  appBarTheme: AppBarTheme(
    color: Colors.blue,
  ),
);

ThemeData naranjaTheme = ThemeData.light().copyWith(
  primaryColor: Colors.orange,
  appBarTheme: AppBarTheme(
    color: Colors.orange,
  ),
);
ThemeData negroTheme = ThemeData.light().copyWith(
  primaryColor: Colors.black,
  appBarTheme: AppBarTheme(
    color: Colors.black,
  ),
);

class ThemeModel extends ChangeNotifier {
  ThemeData currentTheme = naranjaTheme;

  ThemeType _themeType;

  ThemeModel() {
    _themeType = ThemeType.Naranja;
    loadColor();
  }

  void loadColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _themeType = prefs.getDouble("color") ?? ThemeType.Naranja;
    notifyListeners();
  }

  changeTheme() async {
    if (_themeType == ThemeType.Naranja) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      currentTheme = naranjaTheme;
      _color1 == 1;
      print('Naranja');
      notifyListeners();
      bool ok = await prefs.setInt("color", _color1);
    }

    if (_themeType == ThemeType.Azul) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      currentTheme = azulTheme;
      _color1 == 2;
      print('Azul');
      notifyListeners();
      bool ok = await prefs.setInt("color", _color1);
    }
    if (_themeType == ThemeType.Amarillo) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      currentTheme = amarilloTheme;
      _color1 == 3;
      print('Amarillo');
      notifyListeners();
      bool ok = await prefs.setInt("color", _color1);
    }
    if (_themeType == ThemeType.Negro) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      currentTheme = negroTheme;
      _color1 == 3;
      print('Negro');
      notifyListeners();
      bool ok = await prefs.setInt("color", _color1);
    }
  }

  ThemeType getEnumValue() {
    return _themeType;
  }

  void changeEnumValue(ThemeType newThemeType) {
    _themeType = newThemeType;
    changeTheme();
  }
}

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: buildSettingsList(),
    );
  }

  Widget buildSettingsList() {
    return SettingsList(
      sections: [
        SettingsSection(
          title: 'Esthetic',
          tiles: [
            SettingsTile(
              title: 'Change theme',
              leading: Icon(Icons.theaters),
              onPressed: (context) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => TemaScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        SettingsSection(
          title: 'Account',
          tiles: [
            SettingsTile(
              title: 'Change your username',
              leading: Icon(Icons.contact_mail),
              onPressed: (context) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => UserSetting(),
                  ),
                );
              },
            ),
            SettingsTile(
              title: 'Change your password',
              leading: Icon(Icons.lock),
              onPressed: (context) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PasswordSetting(),
                  ),
                );
              },
            ),
            SettingsTile(
              title: 'Logout',
              leading: Icon(Icons.exit_to_app),
              onPressed: (context) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => MyHomePage(),
                  ),
                );
              },
            ),
          ],
        ),
        /*SettingsSection(
          title: 'Security',
          tiles: [
            SettingsTile(
              title: 'Delete your account',
              leading: Icon(Icons.delete),
              onPressed: (context) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => TerminosScreen(),
                  ),
                );
              },
            ),
          ],
        ),*/
        SettingsSection(
          title: 'Documentation',
          tiles: [
            SettingsTile(
              title: 'Terms of conditions',
              leading: Icon(Icons.description),
              onPressed: (context) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => TerminosScreen(),
                  ),
                );
              },
            ),
            SettingsTile(
              title: 'Help',
              leading: Icon(Icons.help),
              onPressed: (context) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => AyudaScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
