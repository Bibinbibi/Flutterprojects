import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleflutter/instagram/storys.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Icon(Icons.camera_alt_rounded,
          size: 30,
          color: Colors.grey.shade900,),
        title: Container(
          margin: EdgeInsets.only(left: 60),
          child: Text('Instagram',
            textDirection: TextDirection.ltr,
            style: GoogleFonts.sacramento(fontSize: 35),
          ),
        ),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.send_outlined,
            size: 30,)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.supervisor_account_rounded),label: ''),

        ],
      ),
      body: StoryWidget(),
    );
  }
}