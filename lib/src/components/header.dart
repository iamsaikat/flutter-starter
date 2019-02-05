import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  Header({@required this.title});

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(44.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center (
        child: Text(this.title)
      )
    );
  }
}