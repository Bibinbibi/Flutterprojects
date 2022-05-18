import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackDemo(),
  ));
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Demo"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 100,
              left: 100,
              child: Container(
                height: 200,
                width: 200,
                child: Center(child: Text("Positioned Child")),
                color: Colors.green,
              )),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 200,
              width: 200,
              child: Center(child: Text("Positioned Child")),
              color: Colors.red,
            ),
          ),

           Container(
            height: 200,
            width: 200,
            child: Center(child: Text("Normal Child 3")),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
