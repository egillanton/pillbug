import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() => runApp(MyApp());

Map<int, Color> primaryColor = {
  50: Color.fromRGBO(81, 158, 138, .1),
  100: Color.fromRGBO(81, 158, 138, .2),
  200: Color.fromRGBO(81, 158, 138, .3),
  300: Color.fromRGBO(81, 158, 138, .4),
  400: Color.fromRGBO(81, 158, 138, .5),
  500: Color.fromRGBO(81, 158, 138, .6),
  600: Color.fromRGBO(81, 158, 138, .7),
  700: Color.fromRGBO(81, 158, 138, .8),
  800: Color.fromRGBO(81, 158, 138, .9),
  900: Color.fromRGBO(81, 158, 138, 1),
};

MaterialColor pillbugPrimarySwatch = MaterialColor(0xFF519E8A, primaryColor);

class MyApp extends StatelessWidget {
  final appTitle = 'pillbug';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pillbug',
      theme: ThemeData(
        primarySwatch: pillbugPrimarySwatch,
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Inventory'),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => DashboardPage(),
                //     ));
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Account'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
