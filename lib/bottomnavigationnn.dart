import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red
    ),
    home: BottomNav(),));

}

class BottomNav extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> BottomNavState();



}

class BottomNavState extends State{
  List<Widget> datas =[
    Text('index 0 : Home'),
    Text('index 1 : Copy'),
    Text('index 2 : Paste'),
    Text('index 3 : Cut'),
    Text('index 4 : Delete'),

  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNav"),
      ),
      body: Center(
        child: IndexedStack(
          index: selectedindex,
          children: datas,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.yellow,
        onTap: selectfromdatas,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
          BottomNavigationBarItem(icon: Icon(Icons.copy),label: "copy"),
          BottomNavigationBarItem(icon: Icon(Icons.paste),label: "paste"),
          BottomNavigationBarItem(icon: Icon(Icons.cut),label: "cut"),
          BottomNavigationBarItem(icon: Icon(Icons.delete),label: "delete"),
        ],
      ),
    );

  }

  void selectfromdatas(int index) {
    selectedindex = index;
    setState(() {
      
    });

  }
}