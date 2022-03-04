import 'package:flutter/material.dart';
import 'accordion.dart';
import 'firstpage.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'assets/species-data/class-speciess-details.dart';




class BlackMamba extends StatelessWidget {
  const BlackMamba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'Black Mamba';

    Widget detailsSection = Container(
        padding: const EdgeInsets.all(.5),
        child: (Row(
            children: [Expanded(
                child: Column (
                    children:[
                      //Accordion('HABITS', speciesName), // Accordion
                      Accordion('HABITS', 'It is generally active during the day but occasionally seen at night. An excellent climber, it is equally at home in trees or on the ground. They often make their homes in termite mounds, tree hollows or cracks and rock crevices, building roofs or storerooms. They can remain there for many years if undisturbed and can live for 20 years or more.'), // Accordion
                      Accordion('DESCRIPTION',
                          'A very fast-growing snake that can reach two meters at one year of age. It is long and slender and on average, reaches 2.8 meters as a mature adult in Eswatini. \n\nThe colour is light to dark grey or various shades of brown or olive, with colours becoming darker towards the tail. The belly is light grey or white and can be plain or sometimes heavily mottled towards the tail. The inside of the mouth is inky black (this is where it gets its name from).'),
                      Accordion('BEHAVIOUR',
                          'Black mambas are not aggressive, always preferring to flee rather than confront.  However, if cornered, the snake will not hesitate to strike out and bite, and it may bite two or more times in quick succession. When threatened, it rears the front third of the body, gapes the mouth, revealing the black lining. It will sometimes spread a narrow hood and emit a hollow-sounding "hiss".'),
                      Accordion('BITE SYMPTOMS','Symptoms will appear within minutes, and complete paralysis can set in less than an hour to six hours. Small children may become paralysed in less than thirty minutes.\n\n'
                          '\u25CF There will be minimal to mild swelling.\n'
                          '\u25CF Pain can be minimal to mild.\n'
                          '\u25CF One of the first symptoms to appear will be a feeling of "pins and needles" at the bite site and later around the lips and tongue.\n'
                          '\u25CF Metallic taste in the mouth.\n'
                          '\u25CF The victim will have difficulty focusing or opening their eyes.\n'
                          '\u25CF The arms and legs will become weak.\n'
                          '\u25CF Speech may be slurred.\n'
                          '\u25CF Nausea and vomiting.\n'
                          '\u25CF Difficulty swallowing.\n'
                          '\u25CF Increased salivation.\n'
                          '\u25CF Severe thirst.\n'
                          '\u25CF The chest will feel tight and painful, and the victim may find it difficult to breathe.'),
                      Accordion('FIRST-AID AFTER A BITE','This snakes\' venom is highly Neurotoxic, and a bite should be considered a medical emergency. Immediate and urgent medical assistance will be necessary.'
                          '\n\nNB: The victim may need assistance to breathe as the lungs may become paralysed.\n\n'

                          '\u25CF Remember to remain calm.\n\n'
                          '\u25CF Gently wash the bite site with water, NOTHING else.\n\n'
                          '\u25CF Remove rings, jewellery and other restrictive clothing or shoes.\n\n'
                          '\u25CF Make a note of the time the bite took place.\n\n'
                          '\u25CF Minimise all movement of the patient and the affected limb.\n\n'
                          '\u25CF Keep the affected limb below the height of the heart.\n\n'
                          '\u25CF If you are close to a medical facility, immobilise the affected limb with a splint and apply a broad pressure bandage from the bite site up the bitten limb. Please note that both these conditions need to be met for this method to be effective.\n\n'
                          '\u25CF If you are far from a medical facility, consider applying a broadband tourniquet around the highest part of the affected limb, only if you are far from a hospital.\n\n'
                          '\u25CF Immediately transport the victim to a medical facility. Place the victim on his/her side to keep their airway open and prevent vomit or other fluid from choking them when they are unconscious.\n\n'

                          'DO NOT:\n\n'

                          '\u25CF Remove the tourniquet before the antivenom therapy has started.\n\n'
                          '\u25CF Give the victim any home-remedy to drink.\n\n'
                          '\u25CF Cut the bite site.'),
                    ]
                )
            )]
        ))
    );

    Widget headingSection = Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black, size: 20,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          const Expanded(child: Text('Black Mamba', )
          ),
        ],
      )
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: const Text(
                    'Black Mamba',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                  'Dendropaspis polylepis',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'Siswati: Imamba',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget imageSection = Padding (
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RouteOne(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromRGBO(20, 20, 150, 0.2),
              ),
              child: Center(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center, //vertical
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, //horizontal
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'assets/tile-images/dendroaspis-polylepis.png',
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Open '+title+' Picture Gallery',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    ]
                ),
              ),
            ),
          )
        );

    Widget introSection = const Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Text(
        'The Black mamba occurs over most of Eswatini and is '
            'arguably the most dangerous snake in Africa.'
            '\n\n'
            'This snakes\' venom is highly Neurotoxic, and a bite should be considered a medical emergency. Immediate and urgent medical assistance will be necessary.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Black Mamba',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      color: Colors.orange,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 0),
          child: Visibility(
            visible: false,
            child: AppBar(),
          ),
        ),
        body: ListView(
          children: [
            headingSection,
            Image.asset(
              'assets/image-hero-venomous/black-mamba-1.jpg',
              width: 600,
              height: 140,
              fit: BoxFit.cover,
            ),
            titleSection,
            //MyApp(),
            introSection,
            imageSection,
            detailsSection,
            Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                //YourScrollViewWidget(),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}



