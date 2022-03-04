import 'dart:async';
import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'database_taxon_classes.dart';


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

class _MyHomePageState extends State<MyHomePage> {

  late DatabaseHandler handler;

  @override
  void initState() {
    super.initState();
    this.handler = DatabaseHandler();
    this.handler.initializeDB().whenComplete(() async {
      await addUsers();
      setState(() {});
    });
  }

  Future<int> addUsers() async {
    Species firstSpecies = Species(id: 15, latinName: 'Elapsoidea decosteri', danger: 'Venomous be careful', behaviour: 'Active at night', firstAid: 'Cover bite', description: 'copper color', commonName: 'Decoster\'s Garter Snake', habits: 'Savannna', distribution: 'Eastern parts of Eswatini', media: 'decoster1.jpg, decoster2.jpg', swaziName: 'Unknown', biteSymptoms: 'Damn sore');
    Species secondSpecies = Species(id: 22, latinName: 'Elapsoidea boulengeri', danger: 'Venomous be careful', behaviour: 'Active at night', firstAid: 'Cleanse wound', description: 'black with white rings', commonName: 'Boulenger\'s Garter Snake', habits: 'Bushveld', distribution: 'Western parts of Eswatini', media: 'boulenger1.jpg, boulenger2.jpg', swaziName: 'Unknown', biteSymptoms: 'Pain and swelling');

    //Species firstSpecies = Species(latinName: 'Elapsoidea decosteri', danger: 'Venomous be careful', behaviour: 'Active at night', firstAid: 'Cover bite', description: 'copper color', commonName: 'Decoster\'s Garter Snake', habits: 'Savannna', distribution: 'Eastern parts of Eswatini', media: 'decoster1.jpg, decoster2.jpg', swaziName: 'Unknown', biteSymptoms: 'Damn sore');
    //Species secondSpecies = Species(latinName: 'Elapsoidea boulengeri', danger: 'Venomous be careful', behaviour: 'Active at night', firstAid: 'Cleanse wound', description: 'black with white rings', commonName: 'Boulenger\'s Garter Snake', habits: 'Bushveld', distribution: 'Western parts of Eswatini', media: 'boulenger1.jpg, boulenger2.jpg', swaziName: 'Unknown', biteSymptoms: 'Pain and swelling');

    List<Species> listOfUsers = [firstSpecies, secondSpecies];
    return await handler.insertUser(listOfUsers);
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
        child: Text('hekk')
      ),
      body: FutureBuilder(
        future: this.handler.retrieveUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<Species>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.delete_forever),
                  ),
                  key: ValueKey<int>(snapshot.data![index].id),
                  onDismissed: (DismissDirection direction) async {
                    await this.handler.deleteUser(snapshot.data![index].id);
                    setState(() {
                      snapshot.data!.remove(snapshot.data![index]);
                    });
                  },
                  child: Card(
                      child: ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(snapshot.data![index].commonName),
                        subtitle: Text(snapshot.data![index].latinName.toString()),
                      )),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),

    );
  }
}