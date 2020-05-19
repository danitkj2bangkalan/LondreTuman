import 'package:flutter/material.dart';
import 'package:londretuman/homepage.dart';
import './UI/CustomInputField.dart';


class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar:AppBar(
            title: Text('Laundry Tuman'),
            centerTitle: true,
          ),
          body: Container(child: Column(
            children: <Widget>[Container(
              height: 200,
              child: Stack(children: <Widget>[
                Positioned(child: Container(child: Center(child: Text("Login", style: TextStyle(color: Colors.black54, fontSize: 40, fontWeight: FontWeight.bold),),)))
              ],
              ),
            ),
              Padding(padding: EdgeInsets.all(30.0),
                child: Column(children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [BoxShadow( color: Color.fromRGBO(143, 148, 251, 1),blurRadius: 20.0, offset: Offset(0, 10) )]),
                      child: Column(children: <Widget>[Container(padding: EdgeInsets.all(8.0),decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[100]))),
                        child: TextField( decoration: InputDecoration(border: InputBorder.none, hintText: "Email or Nomer HP", hintStyle: TextStyle(color: Colors.blueGrey)),),),
                        Container(padding: EdgeInsets.all(8.0),decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[100]))),
                          child: TextField( decoration: InputDecoration(border: InputBorder.none, hintText: "Password", hintStyle: TextStyle(color: Colors.blueGrey)),),)
                      ],)

                  ),
                  SizedBox(height: 30,),
                  Container(height: 50, decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Color.fromRGBO(143, 148, 251, 1),Color.fromRGBO(143, 148, 251, .6),])
                  ),
                    child: Center( child: RaisedButton(child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context )=>HomePage()));
                        }),
                    ),
                  ),

                  SizedBox(height: 30,),
                  Text('Lupa Password ?', style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)))
                ],),)],

          ),)
      ),
    );
  }
}

