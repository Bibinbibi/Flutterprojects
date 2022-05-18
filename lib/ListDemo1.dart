import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewWithcons(),
  ));
}

class ListViewWithcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List 1"),
      ),
      body: ListView(
        children: const [
          Card(
            child: Center(
              child: Text(
                "List of Fruits",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ),
          ),
          Card(
            child: ListTile(),
          ),
          Card(
            child: Text("Chikku"),
          ),
          Card(
            child: Text("Donut"),
          ),
          Card(
            child: Text("Apple"),
          ),
          Card(
            child: Text("Apple"),
          ),
          Card(
            child: Text("Apple"),
          ),
        ],
      ),
    );
  }
}
