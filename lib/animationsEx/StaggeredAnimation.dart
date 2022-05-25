import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: StaggeredAnimationDemo(), ),
    ),
  ));
}

class StaggeredAnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimationLimiter(
          child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(seconds: 4),
                child: FlipAnimation(
                  child: Card(
                    color: Colors.orange,
                    child: ListTile(
                      title: Text('$index item'),
                    ),
                  ),
                ),

              );
            },
          ),
        ),
      ),
    );
  }
}