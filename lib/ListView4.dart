import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListWithSeparator(),
  ));
}

class ListWithSeparator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListWithSeparatorState();
}

class ListWithSeparatorState extends State {
  List<String> images = [
    "assets/images/cat.jpg",
    "assets/images/tiger.jpg",
    "assets/images/cat.jpg",
    "assets/images/tiger.jpg",
    "assets/images/cat.jpg",
    "assets/images/tiger.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List 3"),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
        );
      },
       separatorBuilder: (BuildContext, index){
        return Divider(height: 2,
        color: Colors.purpleAccent);
    },
        itemCount: images.length,
      padding: EdgeInsets.all(10),),
    );
  }
}
