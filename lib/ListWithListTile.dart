import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:  ListWithTile(),
  ));
}

class ListWithTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List 2"),
      ),
      body: ListView(
        children: const [

          Card(
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              tileColor: Colors.blue,
              subtitle: Text("go to settings"),
              trailing: Icon(Icons.arrow_circle_down),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Copy"),
              leading: Icon(Icons.copy),
              tileColor: Colors.yellow,
              subtitle: Text("Copy data"),
              trailing: Icon(Icons.arrow_circle_down),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Paste"),
              leading: Icon(Icons.paste),
              tileColor: Colors.green,
              subtitle: Text("paste here"),
              trailing: Icon(Icons.arrow_circle_down),
            ),
          ),

        ],
      ),
    );
  }
}
