import 'package:flutter/material.dart';
import 'package:ivehicle/pages/settings_pages/help_screen.dart';
import 'package:ivehicle/pages/settings_pages/change_username.dart';
import 'package:ivehicle/pages/settings_pages/change_password.dart';
import 'package:ivehicle/pages/settings_pages/terms_screen.dart';
import 'package:settings_ui/settings_ui.dart';

import '../main.dart';
import 'settings_pages/theme_screen.dart';

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
            SettingsTile(
              title: 'Ads',
              leading: Icon(Icons.notification_important),
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
        SettingsSection(
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
        ),
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
