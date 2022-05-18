import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MySimple());
}

class MySimple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.green,
     ),
     home: MyTextpage(),
   );
  }
}

class MyTextpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Simple Screen In Flutter")
     ),
     body: Center(
       child: Text(
           "Hello World",
         style: TextStyle(
           fontSize: 35,
           color: Colors.purple,
         ),
       ),
     ),

   );
  }
}