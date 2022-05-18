
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Secondpage.dart';

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator and routes"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to"),
          onPressed: (){
            Navigator.pushNamed(context, "Second");
          },
        ),
      ),
    );
  }
}