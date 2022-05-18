import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SliderDemo(),
  ));
}

class SliderDemo extends StatelessWidget {
  List<String> images = [
    "https://upload.wikimedia.org/wikipedia/commons/4/42/Shaqi_jrvej.jpg",
    "https://cdn.unenvironment.org/2022-03/field-ge4d2466da_1920.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/4/42/Shaqi_jrvej.jpg",
    "https://cdn.unenvironment.org/2022-03/field-ge4d2466da_1920.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousal Slider"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              enlargeCenterPage: true,
              height: 200,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              
            ),
            itemBuilder: (context, i, id) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.red,
                      )),
                  child: ClipRRect(
                    child: Image.network(images[i] ,fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onTap: () {
                  print("hai");
                },
              );
            }),
      ),
    );
  }
}
