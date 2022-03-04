import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'assets/species-data/class-speciess-details.dart';
import 'package:collection/collection.dart'; // You have to add this manually, for some reason it cannot be added automatically



class SpeciesScreen extends StatefulWidget {
  const SpeciesScreen({required this.taxonString});
  final String taxonString;



  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
  //developer.log('log me 1', taxonString: 'my.other.category');


}

class MyAppState extends State<SpeciesScreen> {

  Future<String> _loadASpeciesAsset() async {
    return await rootBundle.loadString('assets/species-data/species.json?taxonString');
  }

  Future<Species> loadSpecies() async {
    await wait(1);
    String jsonData = await _loadASpeciesAsset();
    final jsonResponse = json.decode(jsonData);//.firstWhere((jsonData) => jsonData == 'vineSnake', orElse: () => 'No matching color found');
    //final parseResponse = jsonResponse.firstWhere((jsonResponse) => jsonResponse == 'vineSnake', orElse: () => 'No matching color found');
    //List results = jsonResponse.where((item) => item['species'].startsWith(widget.taxonString)).toList();
    //

    return Species.fromJson(jsonResponse);
  }

  Future wait(int seconds) {
    return Future.delayed(Duration(seconds: seconds), () => {});
  }

  Widget futureWidget() {
    return ListView(
      children: [
        Text(widget.taxonString, ),
        FutureBuilder<Species>(
          future: loadSpecies(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                            "Common Name: ${snapshot.data?.species.thisTaxon.commonName} \n"
                            "Scientific Name: ${snapshot.data?.species.thisTaxon.latinName} \n\n"
                            "Bite Symptoms: ${snapshot.data?.species.thisTaxon.biteSymptoms} ",
                            softWrap: true,
                        ),
                      )
                    ],
                  ));
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text('Load Json'),
    ),
        body: futureWidget()
    ));
    }
}

//Species speciesFromJson(String str) => Species.fromJson(json.decode(str).firstWhere((jsonData) => jsonData == 'vineSnake', orElse: () => 'No matching color found'));

// class GetTaxon extends StatefulWidget {
//   String taxonString;
//   GetTaxon(this.taxonString);
//   @override
//   State<StatefulWidget> createState() {
//     return GetTaxonState(this.taxonString);
//   }
// }
//
// class GetTaxonState extends State<GetTaxon> {
//   String taxonString;
//
//   GetTaxonState(
//       this.taxonString);
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
//String speciesToJson(Species data) => json.encode(data.toJson());

class Species {
  Species({
    required this.species,
  });

  final SpeciesClass species;


  factory Species.fromJson(Map<String, dynamic> json) => Species(
    species: SpeciesClass.fromJson(json['species'])
  );

// Map<String, dynamic> toJson() => {
//   "species": species.toJson(),
// };
}


class SpeciesClass extends State<SpeciesScreen> {

  SpeciesClass({
    required this.thisTaxon,
  });


  final TaxonClass thisTaxon;
  factory SpeciesClass.fromJson(Map<String, dynamic> json) => SpeciesClass(
      thisTaxon: TaxonClass.fromJson(json['boomslang'])
  );

  @override
  Widget build(BuildContext context) {
    //var CurrentTaxonText = widget.taxonString;
    //return List(taxonString); // Here you direct access using widget
    throw UnimplementedError();
  }

// Map<String, dynamic> toJson() => {
//   "thisTaxon": thisTaxon.toJson(),
//   //"boomslang": boomslang.toJson(),
// };
}

class TaxonClass {
  final String commonName;
  final String latinName;
  final String swaziName;
  final String distributionDanger;
  final String habits;
  final String description;
  final String behaviour;
  final String firstAid;
  final List<String> biteSymptoms;

  TaxonClass({
    required this.commonName,
    required this.latinName,
    required this.swaziName,
    required this.distributionDanger,
    required this.habits,
    required this.description,
    required this.behaviour,
    required this.firstAid,
    required this.biteSymptoms,
  });


  factory TaxonClass.fromJson(Map<String, dynamic> json) => TaxonClass(
    commonName: json["commonName"],
    latinName: json["latinName"],
    swaziName: json["swaziName"],
    distributionDanger: json["distributionDanger"],
    habits: json["habits"],
    description: json["description"],
    behaviour: json["behaviour"],
    firstAid: json["firstAid"],
    biteSymptoms: List<String>.from(json["biteSymptoms"].map((x) => x)),
  );

// Map<String, dynamic> toJson() => {
//   "commonName": commonName,
//   "latinName": latinName,
//   "swaziName": swaziName,
//   "distributionDanger": distributionDanger,
//   "habits": habits,
//   "description": description,
//   "behaviour": behaviour,
//   "firstAid": firstAid,
//   "biteSymptoms": List<dynamic>.from(biteSymptoms.map((x) => x)),
// };
}