import 'package:flutter/material.dart';
import 'package:wow_engine/classdata/paladin/protection.dart';
import 'package:wow_engine/classdata/paladin/retribution.dart';

class Paladin extends StatefulWidget{const Paladin({Key? key, required this.title}) : super(key: key);

final String title;


@override
_PaladinState createState() => _PaladinState();
}

class _PaladinState extends State<Paladin> {
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

                child: const Center(child: Text("Paladin",style: TextStyle(color: Colors.black))),
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
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0,),
    child: Container(
    height: 250,
    color: Colors.white,

    alignment: Alignment.bottomLeft,
    child: Column(children:[
    const Text('Description of the class',
    style: TextStyle(
      fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline
    ),
    ),
    Container(
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border.all(color: Colors.black, width:10),
          borderRadius: BorderRadius.circular(10)
      ),
    width: 392,
    height: 230,

    child: const Align(
    alignment: Alignment.topLeft,
    child: Text(
    'The paladin is a hybrid class with the ability to play all three major roles, including healing, tanking and DPS. They have auras, blessings and seals that provide useful buffs for other players while wearing plate armor to heavily mitigate damage and strong defensive abilities.\nThe paladin has several abilities designed specifically for use against undead and demonic targets, including Exorcism, Holy Wrath and Turn Evil. '
    , maxLines: 20,
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 16,
    ),
    ),
    ),
    ),
    ],
    ),
              )
              )
            ],
          ),
          Column(
            children:[
              Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(2),

                child: const Center(child: Text("Choose Your Spec",style: TextStyle(color: Colors.black))),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width:10),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ],
          ),
          Row(
            children: [


    IconButton(
    icon: Image.asset('images/retribution-paladin.jpg'),
    iconSize: 100,
    onPressed: () { {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Retribution (title: '',)),
    );
    }
    },
    ),
              IconButton(
                icon: Image.asset('images/protection-paladin.jpg'),
                iconSize: 100,
                onPressed: () { {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Protection (title: '',)),
                );
                }
                },
              ),
              IconButton(
                icon: Image.asset('images/holy-paladin.jpg'),
                iconSize: 100,
                onPressed: () { {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Retribution (title: '',)),
                );
                }
                },
              ),
            ],
          )
        ],

    )
    );

    throw UnimplementedError();
  }


}