import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyExpanded(),
  ));
}

class MyExpanded extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Expanded Widget"),
     ),
     body: Center(
       child: Row(
         children: [
           Expanded(
             flex: 1,
             child: Container(
               color: Colors.red,
               height: 200,
               child: Center(child: Text("Data 1")),
             ),
           ),
           Container(
             color: Colors.pink,
             height: 200,
             width: 100,
             child: Center(child: Text("Data 2")),
           ),
           Container(
             color: Colors.green,
             height: 200,
             width: 100,
             child: Center(child: Text("Data 3")),
           ),
         ],
       ),
     ),
   );
  }
}