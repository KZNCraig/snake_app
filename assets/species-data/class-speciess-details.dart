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