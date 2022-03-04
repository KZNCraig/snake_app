//from https://petercoding.com/flutter/2021/03/21/using-sqlite-in-flutter/#retrieve-data-from-sqlite


class Species {
  // final int? id;
  // final String name;
  // final int age;
  // final String country;
  // final String? email;

  final int id;
  final String commonName;
  final String latinName;
  final String swaziName;
  final String distribution;
  final String danger;
  final String habits;
  final String description;
  final String behaviour;
  final String firstAid;
  final String biteSymptoms;
  final String media;

  Species(
      {
        required this.id,
        required this.commonName,
        required this.latinName,
        required this.swaziName,
        required this.distribution,
        required this.danger,
        required this.habits,
        required this.description,
        required this.behaviour,
        required this.firstAid,
        required this.biteSymptoms,
        required this.media
      });

  Species.fromMap(Map<String, dynamic> result)
      : id = result["id"],
        commonName = result["commonName"],
        latinName = result["latinName"],
        swaziName = result["swaziName"],
        distribution = result["distribution"],
        danger = result["danger"],
        habits = result["habits"],
        description = result["description"],
        behaviour = result["behaviour"],
        firstAid = result["firstAid"],
        biteSymptoms = result["biteSymptoms"],
        media = result["media"];


  Map<String, Object?> toMap() {
    return {'id': id, 'commonName': commonName, 'latinName': latinName, 'swaziName': swaziName, 'distribution': distribution, 'danger': danger, 'habits': habits, 'description': description, 'behaviour': behaviour, 'firstAid': firstAid, 'biteSymptoms': biteSymptoms, 'media': media};
    //return {'commonName': commonName, 'latinName': latinName, 'swaziName': swaziName, 'distribution': distribution, 'danger': danger, 'habits': habits, 'description': description, 'behaviour': behaviour, 'firstAid': firstAid, 'biteSymptoms': biteSymptoms, 'media': media};
  }
}

