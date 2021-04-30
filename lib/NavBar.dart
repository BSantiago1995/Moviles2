  
import 'package:trabajo_1/cardList.dart';
import 'package:flutter/material.dart';


class NavBar extends StatefulWidget { 
 @override
 State<StatefulWidget> createState(){ 
   return _NavBar();
 }
}
class _NavBar extends State {
  int indexCf=0;
  final List<Widget> vistasWidget= [CardList(),CardList(),CardList()];
   void onTapped (int index) { 
    setState((){
      indexCf=index;
    });
   }
 @override 
  Widget build(BuildContext context){ 
     return Scaffold( 
       body: vistasWidget[indexCf],
        bottomNavigationBar: Theme( 
          data: Theme.of(context).copyWith( 
            canvasColor: Colors.white,
            primaryColor: Colors.black
          ),
           child: BottomNavigationBar( 
             onTap: onTapped,
             currentIndex: indexCf,
             items:[
               BottomNavigationBarItem(icon: Icon(Icons.cancel),label:""),
               BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label:""),
               BottomNavigationBarItem(icon: Icon(Icons.people_alt_rounded),label:""),
               
             ],
           ),
        ),
     );
   }
 }
