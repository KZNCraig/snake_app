import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  Accordion(this.title, this.content);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5),
      //color: Colors.blue,
      child: Column(children: [
        ListTile(
          tileColor: Color.fromRGBO(100, 100, 100, .1),
          selectedTileColor: Colors.red,
          focusColor: Colors.yellow,
          selectedColor: Colors.green,
          title: Text(widget.title),
          trailing: IconButton(
            icon: Icon(
                _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            onPressed: () {
              setState(() {
                _showContent = !_showContent;
              });
            },
            iconSize: 40,
          ),
        ),
        _showContent

            ? Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),

            child: Text(widget.content, style: TextStyle(fontSize: 16, height: 1.4), ),

        )
            : Container()
      ]),

    );
  }
}