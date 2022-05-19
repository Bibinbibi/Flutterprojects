import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the
// root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Toast"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: Text("Show toast", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Message sent",
                  backgroundColor: Colors.grey,
                );
              })),
    );
  }
}
