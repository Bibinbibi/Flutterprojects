import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen());
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: MyBody(),
    );
  }
}
class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Click 1"),
            Icon(Icons.cached),
            Text("Click 1"),
            Icon(Icons.warning),
          ],
        ),
        Row(
          children: [
            ElevatedButton(onPressed: (){}, child: Text("Button"))
          ],
        )
      ],

    );
  }
}