import 'package:flutter/material.dart';

 FirstPage() async {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, initialRoute: '/', routes: {
      '/': (context) => RouteOne(),
      '/detail': (context) => const RouteTwo(image: '', name: ''),
    }),
  );
}

class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

class RouteOne extends StatelessWidget {
   var species = "Black Mamba";
  final List<PhotoItem> _items = [
    PhotoItem(
        "assets/images/species/black-mamba-images/1.jpg",
        "Black Mamba"),
    PhotoItem(
        "assets/images/species/black-mamba-images/2.jpg",
        "Black Mamba"),
    PhotoItem(
        "assets/images/species/black-mamba-images/3.jpg",
        "Black Mamba"),
    PhotoItem(
        "assets/images/species/black-mamba-images/4.jpg",
        "Black Mamba"),
    PhotoItem(
        "assets/images/species/black-mamba-images/5.jpg",
        "Black Mamba"),
    PhotoItem(
        "assets/images/species/black-mamba-images/6.jpg",
        "Black Mamba"),
    PhotoItem(
        "assets/images/species/black-mamba-images/7.jpg",
        "Black Mamba"),
    PhotoItem(
        "assets/images/species/black-mamba-images/8.jpg",
        "Black Mamba"),
  ];

  RouteOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(species+' Gallery'),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 2,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RouteTwo(
                      image: _items[index].image, name: _items[index].name),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(_items[index].image),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RouteTwo extends StatelessWidget {
  final String image;
  final String name;

  const RouteTwo({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to '+name+' Gallery'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: InteractiveViewer(
              //width: double.infinity,
              child: Image(
                image: AssetImage(image),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            child: Center(
              child: Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, //vertical
                mainAxisAlignment: MainAxisAlignment.center, //horizontal
                children: [
                  Image.asset(
                    'assets/icons/icon-pinch-zoom.png',
                    width: 30,
                    height: 30,
                  ),
                  const Text(
                    'Pinch zoom image OR ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                    Image.asset(
                      'assets/icons/icon-finger-drag.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.scaleDown,
                    ),
                    const Text(
                      'Pan image.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}