import 'package:flutter/material.dart';

class RetributionDes extends StatefulWidget{const RetributionDes({Key? key, required this.title}) : super(key: key);

final String title;


@override
_RetributionDesState createState() => _RetributionDesState();
}

class _RetributionDesState extends State<RetributionDes> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar (
        title: Text(widget.title),
    ),
      body: Center(
        child:
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(2),

                child: const Center(child: Text("Class Description",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    border: Border.all(color: Colors.black, width:10),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(color: Colors.black, width:10),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      width: 392,
                      height: 300,

                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Retribution Paladins are holy crusaders, who use a two-handed weapon to turn the power of the light into powerful damaging abilities and bring justice and vengeance to their enemies. It is the damage specialization of Paladin and is a melee spec, although it has a few abilities that can be cast from range as well.'
                              '\nThe core of our rotation is centered around using abilities like  Blade of Justice and  Judgment to generate Holy Power, which is consumed to deal devastating damage with abilities like  Templar''s Verdict or  Divine Storm. Although Paladin''s mobility options are somewhat limited, you will have access to a large array of buffs for yourself and your party to help you throughout a fight, as well as strong healing capabilities for your role.'
                          , maxLines: 50,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.5,
                          ),
                        ),
                      ),
                  )
                ],
              )
            ],
          )
        ,
      )
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}