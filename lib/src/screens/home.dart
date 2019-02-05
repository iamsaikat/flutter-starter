import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/navbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: 'Home'),
      drawer: NavBar(),
      body: Text('Home Screen'),
    );
  }
}