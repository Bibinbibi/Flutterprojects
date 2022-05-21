import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<String> images = [
    "https://upload.wikimedia.org/wikipedia/commons/4/4e/Sreenath_Bhasi_actor.jpg",
    "https://i.redd.it/7o2tb23636p81.jpg",
    "https://images.news18.com/ibnlive/uploads/2021/09/thalapathy-vijay.jpg",
    "https://static01.nyt.com/images/2019/04/16/sports/16onsoccerweb-2/merlin_153612873_5bb119b9-8972-4087-b4fd-371cab8c5ba2-articleLarge.jpg?qu,ity=75&auto=webp&disable=upscale",
    "https://images.newindianexpress.com/uploads/user/imagelibrary/2018/10/8/w600X390/Fahad_Fazil.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2bd8TOpSq8Gr59WXKY606x33FhYCd7ZojVQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeImMissIMfrkxn6KqWa4mPK8osJAD0wn7Yg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrQxtazUJfPGY9yw0Toxm31Sidw6Msutnq-Q&usqp=CAU",
  ];
  List<String> names = [
    "Bhasi",
    "Aishu",
    "Vijay",
    "Messi",
    "fahadh",
    "Priyankamohan",
    "Dhanush",
    "Nivin"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: 0,
          //onTap: selectedfromDatas,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Channel"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Profile"),
          ],
        ),
        appBar: AppBar(
            toolbarHeight: 66,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              'Conversations',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            actions: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.pink,
                    size: 25,
                  ),
                  label: Text(
                    'Add New',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink.shade50),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                      left: 10,
                      right: 10,
                    )),
                  ),
                ),
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20),
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return ListTile(
                    title: Text(names[index]),
                    subtitle: Text('Hai , how are you'),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black45,
                      backgroundImage: NetworkImage(images[index]),
                    ),
                    trailing: Text('Today'),

                  );
                },
                itemCount: images.length,
              ),
            ],
          ),

        ),
      ),
    );
  }
}
