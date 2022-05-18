import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridDemo(),
  ));
}

class GridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 3.0,
        mainAxisSpacing: 6.0,
        children: List.generate(datas.length, (index) {
          return Center(
            child: SelectedCard(datas: datas[index]),
          );
        }),
      ),
    );
  }
}

class SelectedCard extends StatelessWidget {
  MyWidget datas;

  SelectedCard({Key? key, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purpleAccent,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Icon(
              datas.icon,
              size: 50,
            ),
            ),
            Text(datas.title,style: TextStyle(fontSize: 16),),
          ],
        ),
      ),
    );
  }
}

class MyWidget {
  String title;
  IconData icon;

  MyWidget({required this.title, required this.icon});
}

List datas = [
  MyWidget(title: "Settings", icon: Icons.settings),
  MyWidget(title: "Copy", icon: Icons.copy),
  MyWidget(title: "Paste", icon: Icons.paste),
  MyWidget(title: "Cancel", icon: Icons.cancel),
  MyWidget(title: "Cut", icon: Icons.cut),
  MyWidget(title: "Email", icon: Icons.email),
  MyWidget(title: "Phone", icon: Icons.phone),
];
