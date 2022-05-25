import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SpringDemo'),
      ),
      body: Center(
        child: SpringDemo(),
      ),
    ),
  ));
}

class SpringDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spring.scale(start: 0.2, end: 1.0, child: _RedCard()),
        Spring.slide(slideType: SlideType.slide_in_top, child: _RedCard()),
        Spring.shake(child: _RedCard()),
        Spring.rotate(child: _RedCard()),
      ],
    );
  }
}

class _RedCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
    );
  }
}