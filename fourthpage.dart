import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './black_mamba.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar (title: const Text('Venomous Snakes'));
    return ListView(
      padding: const EdgeInsets.all(2.90),
      children: <Widget>[
        ListTile( title: Text("Black Mamba"),subtitle: Text("Dendroaspis polylepis"), onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BlackMamba(),),);}, leading: const CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/tile-images/dendroaspis-polylepis.png")), trailing: const Icon(FontAwesomeIcons.skullCrossbones, color: Colors.red,),),
        ListTile( title: Text("Puff Adder"),subtitle: Text("Bitis arietans"), leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/tile-images/bitis-arietans.png")), trailing: Icon(FontAwesomeIcons.skullCrossbones, color: Colors.red,),),
        ListTile( title: Text("Boomslang"),subtitle: Text("Dispholidus typhus"), leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/tile-images/dispholidus-typus.png")), trailing: Icon(FontAwesomeIcons.skullCrossbones, color: Colors.red,),),
        ListTile( title: Text("Mozambique Spitting Cobra"),subtitle: Text("Naja mossambica"), leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/tile-images/naja-mossambica.png")), trailing: Icon(FontAwesomeIcons.skullCrossbones, color: Colors.red,),),
        ListTile( title: Text("Snounted Cobra"),subtitle: Text("Naja annulifera"), leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/tile-images/naja-annulifera.png")), trailing: Icon(FontAwesomeIcons.skullCrossbones, color: Colors.red,),),

      ],
    );
  }
}