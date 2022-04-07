import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wow_engine/classdata/paladin/retribution-description.dart';
class Retribution extends StatefulWidget{const Retribution({Key? key, required this.title}) : super(key: key);

final String title;


@override
_RetributionState createState() => _RetributionState();
}

class _RetributionState extends State<Retribution> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children:[
              Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(2),

                child: const Center(child: Text("Retribution",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    border: Border.all(color: Colors.black, width:10),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                    onPressed: () { { {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RetributionDes (title: '',)),
                    );
                    }
                    } },
                    child: Column(children:const [
                      Text('Description of the class',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,

                        ),
                      ),

                    ],
                    ),
                  )

            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () async {
                  const url = 'https://www.wowhead.com/retribution-paladin-talent-guide';
                  if(await canLaunch(url)){
                    await launch(url);
                  }else {
                    throw 'Could not launch $url';
                  }
                },
                child: Column(children:const [
                  Text('Talent Builds',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,

                    ),
                  ),

                ],
                ),
              )

            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () async {
    const url = 'https://www.warcraftlogs.com/zone/rankings/29#class=Paladin&spec=Retribution';
    if(await canLaunch(url)){
    await launch(url);
    }else {
    throw 'Could not launch $url';
    }
    },
                child: Column(children:const [
                  Text('Warcraft Logs Reference',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,

                    ),
                  ),

                ],
                ),
              )

            ],
          ),

        ],
      )
    );

  }}
