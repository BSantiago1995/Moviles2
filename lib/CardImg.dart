import 'package:flutter/material.dart';

class CardImg extends StatelessWidget {
  String pathImg="assets/img/slide.jpg";
  String textoim="";
  CardImg(this.pathImg,this.textoim,);
  @override
  Widget build(BuildContext context) {
    final card=Stack(
      children: [
         
        Container(
          height: 350,
          width: 200,
          margin:EdgeInsets.only(top: 80.0,left: 20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover, 
              image: AssetImage(pathImg)),
              borderRadius:BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black,
                  offset: Offset(0.0,7.0)
                  )
              ]
              ),
            
          ),
          Container(
            alignment: Alignment.topRight,
            margin:EdgeInsets.only(top:450.0,left: 20.0),
            child:Text(
            textoim,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black,fontStyle: FontStyle.italic),
            
            ),
            
          ),
          Container(
            alignment: Alignment.topRight,
            margin:EdgeInsets.only(top:450.0,left: 165.0),
            child:
            Icon(Icons.check_circle,
            color: Colors.blue,
            size:20
            )
          )
          
      ]);
      return card;
  }
}