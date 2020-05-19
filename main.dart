import 'package:flutter/material.dart';
import './UI/CustomInputField.dart';
import 'dart:async';
import 'login.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));


class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  _MyAppState createState()=> _MyAppState();
}
class _MyAppState extends State<MyApp>{

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),
            (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),),);
            });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Image(image: AssetImage('assets/Images/logo.jpeg')
      ),
      ),
    );
  }
}

