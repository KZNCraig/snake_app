import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
          centerTitle: true,
          title: Text("Font Awesome Icons")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Few Free Icon from Font Awesome Flutter package",textAlign:TextAlign.center,style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            //brand Icons
            Text("Brand Icons",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.googlePay,color: Colors.deepOrange,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.github,color: Colors.black,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.twitter,color: Colors.blueAccent,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.aws,color: Colors.deepOrange,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.pinterest,color: Colors.red,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.wordpress,color: Colors.deepPurple,size: 35,),
              ],
            ),
            SizedBox(height: 25,),
            //Regular Icons
            Text("Regular Icons",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.smile,color: Colors.green,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.laugh,color: Colors.blue,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.dollarSign,color: Colors.green,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.accessibleIcon,color: Colors.red,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.iceCream,color: Colors.pink,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.plane,color: Colors.brown,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.peopleArrows,color: Colors.deepPurple,size: 35,),
              ],
            ),

            SizedBox(height: 25,),
            //Regular Icons
            Text("Solid Icons",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.virus,color: Colors.red,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.mask,color: Colors.blue,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.dollarSign,color: Colors.green,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.atom,color: Colors.red,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.truckMonster,color: Colors.black,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.bacteria,color: Colors.red,size: 35,),
                SizedBox(width: 15,),
                FaIcon(FontAwesomeIcons.arrowAltCircleRight ,color: Colors.deepPurple,size: 35,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}