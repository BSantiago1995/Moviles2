  
import 'package:flutter/material.dart';
import 'package:trabajo_1/CardList.dart';
import 'package:trabajo_1/NavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(          
          primarySwatch: Colors.teal,         
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Laboratorio 1: Básicos en Flutter"),
          ),
          body: Stack(
            children: [
            
             CardList(),
             NavBar(),
            ],
          ),
          
        ));
  }
}