import 'package:flutter/material.dart';
import 'package:sampleflutter/instagram/posts.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);
  List urls = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEMfeP6D4DsBewaYrS1tCRwUYxXj9xwsriTw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRywXY73J4wisTblEGbUujzWTZ1kJKdWRsbqQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7IQsoUfiA4KwXGEVxbgc7CvgG0Vqor9Z3zw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzdAaSyCK5HctmTCd2nnHiS4QqiHiJIpsaBA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbDQv5XjLP6ZO9aNDZplpYmTSP4oBQ0Uex-A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuAju9IwXczxxLAhW3YSvaOrKkG7dG1sIUsQ&usqp=CAU",
    "https://buffer.com/library/content/images/2022/03/amina.png",
    "https://buffer.com/library/content/images/2022/03/skitch--7-.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Stories",
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Icon(
              Icons.play_arrow,
              size: 22,
            ),
            Text(
              "Watch All",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
            List.generate(urls.length, (index) => Stores(urls[index])),
          ),
        ),
        Divider(thickness: 2,),
        Expanded(child: PostWid(),)
        //
      ],
    );
  }

  Padding Stores(String url) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 67,
        height: 67,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.white]),
        ),
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage(url))),
        ),
      ),
    );
  }
}