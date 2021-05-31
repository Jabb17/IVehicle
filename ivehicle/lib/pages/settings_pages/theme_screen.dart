import 'package:flutter/material.dart';
import 'package:ivehicle/pages/settings.dart';
import 'package:provider/provider.dart';

class TemaScreen extends StatefulWidget {
  @override
  _TemaScreenState createState() => _TemaScreenState();
}

class ThemeOptions {
  final Color themeColor;
  final ThemeType enumTheme;
  ThemeOptions({this.themeColor, this.enumTheme});

  // void callParentTheme() {
  //   ThemeModel().changeEnumValue(enumTheme);
  void callParentTheme(context) {
    Provider.of<ThemeModel>(context, listen: false).changeEnumValue(enumTheme);
  }
}

class _TemaScreenState extends State<TemaScreen> {
  int colorIndex = 0;

  List<ThemeOptions> themes = [
    ThemeOptions(themeColor: Colors.black, enumTheme: ThemeType.Negro),
    ThemeOptions(themeColor: Colors.orange, enumTheme: ThemeType.Naranja),
    ThemeOptions(themeColor: Colors.blue, enumTheme: ThemeType.Azul),
    ThemeOptions(themeColor: Colors.yellow, enumTheme: ThemeType.Amarillo),
  ];
  ThemeOptions dropdownValue;

  @override
  void initState() {
    super.initState();

    dropdownValue = themes[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change theme'),
        centerTitle: true,
      ),
      body: DropdownButton<ThemeOptions>(
        icon: const Icon(Icons.color_lens),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 5,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (ThemeOptions newValue) {
          setState(() {
            dropdownValue = newValue;
            dropdownValue.callParentTheme(context);
            print(newValue.themeColor);
          });
        },
        items: themes.map((ThemeOptions colorThemeInstance) {
          return DropdownMenuItem<ThemeOptions>(
            value: colorThemeInstance,
            child: CircleAvatar(
              backgroundColor: colorThemeInstance.themeColor,
            ),
          );
        }).toList(),
      ),
    );
  }
}
