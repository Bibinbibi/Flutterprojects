import 'package:flutter/material.dart';

class PostWid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (
          BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThcyCj8xEoCvNs5sHKc-9_SLqdtelx8C9Jxg&usqp=CAU"),)
                ),
              ),
              title: Text("Bibin", style: TextStyle(fontWeight: FontWeight.bold),),
              // subtitle: Text("ddddddd"),
              trailing: Icon(Icons.more_vert_sharp),
            ),
            Container(
              height: 250,
              margin: EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi888AUZlnZxac2DtCE6cOnbperhnzimprhw&usqp=CAU"),
                  )
              ),
            ),
            ListTile(
              leading: Wrap(
                spacing: 7,
                children: [
                  Icon(Icons.favorite,color: Colors.red,),
                  Icon(Icons.mode_comment_outlined,color: Colors.black,),
                  Icon(Icons.send,color: Colors.black,),
                ],),
              trailing: Icon(Icons.bookmark_border,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text("Liked by Archana, nikesh and 50k others", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading:Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBy53dwnT2ahWCbwbnJxSJbbOA-Oz5cqHVSg&usqp=CAU"),)
                ),
              ),
              title: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Add a Comment',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("20 Minutes ago",style: TextStyle(color: Colors.grey.shade600)),
            ),
          ],
        );
      },

    );
  }
}