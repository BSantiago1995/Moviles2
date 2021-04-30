
import 'package:flutter/material.dart';
import 'CardImg.dart';


class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 200.0,
              height: 150.0,
              child: 
              Text('''Discover''',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: 
                  TextStyle(fontFamily: "Anton",fontSize: 28,fontWeight: FontWeight.bold)),
            ),
            
                       
          ],
        ),
        Container(
          height:850,
          child: ListView(
            padding: EdgeInsets.all(25),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardImg('assets/imagenes/slider1.jpg',"Daniela Morales, 21"),
              CardImg('assets/imagenes/slider2.jpg',"Evelyn Santana, 25"),
              CardImg('assets/imagenes/slider3.jpg',"Dayana Centeno, 27"),
              
            ],
          ),
        ),
      ],
    );
  }
}