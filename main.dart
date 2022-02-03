import 'package:flutter/material.dart';
import './firstpage.dart' ;
import './secondpage.dart';
import './thirdpage.dart' ;
import './fourthpage.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  get static => null;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset('assets/images/logo-inverted.jpg',
            fit: BoxFit.cover, height: 52),
            Container(
              padding: const EdgeInsets.all(8.0), child: const Text('ESWATINI SNAKES')),
            ]),
        backgroundColor: Colors.black,
        toolbarHeight: 60,
      ),
      bottomNavigationBar: Material(
        color: Colors.black,
        child: TabBar(
          controller: controller,
          tabs:  const <Widget>[
            Tab(icon: Icon(Icons.home), text: "HOME"),
            Tab(icon: Icon(Icons.camera_alt), text: "PHOTO"),
            Tab(icon: Icon(Icons.medical_services_outlined), text: "MEDICAL",),
            Tab(icon: Icon(Icons.search), text: "ID",),
          ],
        ),
      ),
      body: TabBarView(controller: controller, children:  <Widget>[
        RouteOne(),
        const SecondPage(),
        const ThirdPage(),
        const FourthPage(),
      ]),

    );
  }
}