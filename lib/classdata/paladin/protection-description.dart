import 'package:flutter/material.dart';

class ProtectionDes extends StatefulWidget{const ProtectionDes({Key? key, required this.title}) : super(key: key);

final String title;


@override
_ProtectionDesState createState() => _ProtectionDesState();
}

class _ProtectionDesState extends State<ProtectionDes> {
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
                          'With the veil between Azeroth and the Shadowlands shattered, Holy Warriors of the Light will rise up to defend the innocent people of Azeroth from the great beyond. The forces of Death are on the march to conquer our world and it''s up to you to stop it. Will you answer the call?'
                              '\nThe core of our rotation is centered around using abilities like  Hammer of Justice and  Judgment to generate Holy Power, which is consumed to deal devastating damage with abilities like  Righteous Shield or  Words of Glory. Although Paladin''s mobility options are somewhat limited, you will have access to a large array of buffs for yourself and your party to help you throughout a fight, as well as strong healing capabilities for your role.'
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