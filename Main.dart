import 'package:flutter/material.dart';
import './UI/CustomInputField.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar:AppBar(
        title: Text('Laundry Tuman'),
        centerTitle: true,
      ),
        body: Image.asset('assets/Images/logo.png'),
    ),
    );
  }
}

