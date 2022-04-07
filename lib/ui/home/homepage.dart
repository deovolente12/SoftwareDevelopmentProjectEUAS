import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wow_engine/classdata/paladin/paladin.dart';

class Homepage extends StatefulWidget {

  const Homepage({Key? key, required this.title}) : super(key: key);

  final String title;


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Column(
          children: <Widget>[
            Column(
            children:[
            Container(
              padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(2),

              child: const Center(child: Text("Classes",style: TextStyle(color: Colors.black))),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(color: Colors.black, width:10),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            ],
            ),
       Row(
              children:[
            IconButton(
              icon: Image.asset('images/paladin.jpg'),
               iconSize: 100,
               onPressed: () { {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Paladin (title: '',)),
            );

            }
            },

            ),
            Container(
              height: 120.0,
              width: 130.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 7),
                image: const DecorationImage(
                  image: ExactAssetImage('images/warrior.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
                Container(
                  height: 120.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 7),
                    image: const DecorationImage(
                      image: ExactAssetImage('images/deathknight.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
    ],
       ),
            Column(
              children: [
                Container(
                padding: const EdgeInsets.all(15.0),
                margin: const EdgeInsets.all(2),

                child: const Center(child: Text("Latest Updates",style: TextStyle(color: Colors.black))),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(color: Colors.black, width:10),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
                ],
            ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () async {
                        const url = 'https://www.wowhead.com/news/official-shadowlands-9-2-eternitys-end-patch-notes-325994';
                        if(await canLaunch(url)){
                          await launch(url);
                        }else {
                          throw 'Could not launch $url';
                        }
                      }, child: const Text(
                      "9.2 Patches",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12.0
                      ),
                    ),
                    )
                  ],
                ),
            Row(
              children: [
                TextButton(
                  onPressed: () async {
                    const url = 'https://www.esports.net/news/echo-wins-the-race-to-world-first-sepulcher-jailer/';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else {
                      throw 'Could not launch $url';
                    }
                  }, child: const Text(
                  "Echo Brings down the Jailer!!",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 12.0
                  ),
                ),
                )
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () async {
                    const url = 'https://wow.gameinfo.io/talent-builds';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else {
                      throw 'Could not launch $url';
                    }
                  }, child: const Text(
                  "Latest Talent Builds...",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 12.0
                  ),
                ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(2),

                  child: const Center(child: Text("My Profile",style: TextStyle(color: Colors.black))),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.black, width:10),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ],
            )

            


              ],
            )
    );




  }


}