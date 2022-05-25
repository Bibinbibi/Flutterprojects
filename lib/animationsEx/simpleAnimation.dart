import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: SimpleAnimationDemo(),
          ),
        ),
      ));
}
class SimpleAnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      tween: Tween(begin: 0.0, end: 200),
      duration: const Duration(seconds: 5),
      curve: Curves.elasticInOut,
      builder: (context, child, value) {
        return Container(
          width: value,
          height: value,
          color: Colors.green,
        );
      },
    );
  }
}