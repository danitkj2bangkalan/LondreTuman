import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:londretuman/widgets/review.dart';
class HomePage extends StatefulWidget{
  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomePage>{

  int _selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.shippingFast,
    FontAwesomeIcons.compactDisc,
    FontAwesomeIcons.checkDouble,
    FontAwesomeIcons.doorClosed
  ];

  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){
        setState((){
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme.of(context).accentColor
          : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1c4)),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {  },) ,
        title: Text("Home Page"),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 125.0),
              child: Text('Silahkan pilih jenis pelayanan cuci sepatu',
                  style: TextStyle(
                    fontSize: 17.1,
                    fontWeight: FontWeight.bold,
                  ),),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map(
                      (MapEntry map) => _buildIcon(map.key)).toList(),
            ),
            SizedBox(height: 20.0),
            ReviewCarousel(),
          ],
        ),
      )
    );
  }
}