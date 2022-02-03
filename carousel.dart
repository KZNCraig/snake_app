import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'carousel_image.dart';

void main2() => runApp(MaterialApp(home: Demo()));

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  carousel createState() => carousel();
}

class carousel extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
        height: 345.0,
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
            autoPlay: true,
          ),
          items: [
            'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
            'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg',
            'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
            'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg'
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                        child: Image.network(i, fit: BoxFit.fill),
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageScreen(i),
                            ),
                          );
                        }));
              },
            );
          }).toList(),
        ));

    return Scaffold(
      body: new Column(
        children: <Widget>[
          image_carousel,
        ],
      ),
    );
  }
}