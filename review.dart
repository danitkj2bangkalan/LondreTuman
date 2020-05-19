import 'package:flutter/material.dart';

class ReviewCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Hasil Terbaru',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () => ("see"),
                  child: Text('Daftar favorit',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],),
          ),
//          Container(
//            height: 300.0,
//            color: Colors.grey,
//            child: ListView.builder(
//                scrollDirection: Axis.horizontal,
//                itemCount: destinations.length,
//                itemBuilder: (BuildContext context, int index){
//                    Destination destination
//                  }
//                ),
//          ),
        ]
    );
  }
}
