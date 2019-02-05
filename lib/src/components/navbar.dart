import 'package:flutter/material.dart';

class DrawerItem {
String title;
IconData icon;
DrawerItem(this.title, this.icon);
}

class NavBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final drawerItems = [
      new DrawerItem("Menu 1", Icons.rss_feed),
      new DrawerItem("Menu 2", Icons.local_pizza),
      new DrawerItem("Menu 3", Icons.info)
    ];

    var drawerOptions = <Widget>[];
    for (var i = 0; i < drawerItems.length; i++) {
      var d = drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title)
          )
      );
    }

    return Drawer(
      child: new Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: new Text("John Doe"), accountEmail: null),
          new Column(children: drawerOptions)
        ],
      ),
    );
  }
}