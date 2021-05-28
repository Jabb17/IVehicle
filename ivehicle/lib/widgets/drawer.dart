import 'package:flutter/material.dart';
import 'package:ivehicle/pages/car_sale.dart';
import 'package:ivehicle/pages/lists_screen.dart';
import 'package:ivehicle/pages/settings.dart';
import 'package:ivehicle/pages/login_pages/signin.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff0367A6),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://ivehicleproject.000webhostapp.com/imgs/drawer_img.jpg'),
                ),
              ),
            ),
            Container(
              color: Color(0xff0367A6),
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  "SETTINGS",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SettingsScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Color(0xff0367A6),
              child: ListTile(
                leading: Icon(
                  Icons.car_rental,
                  color: Colors.white,
                ),
                title: Text(
                  "CAR SALE",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return CarSaleScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Color(0xff0367A6),
              child: ListTile(
                leading: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                title: Text(
                  "EVENTS & ROUTES",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ListsScreen();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Color(0xff0367A6),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "LOGOUT",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SignInPage();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
