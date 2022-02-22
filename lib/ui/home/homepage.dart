import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:Column(
          children: <Widget>[
            Image.asset('images/wowicon.png'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField (
                controller: email,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Email',
                    hintText: 'Enter Your Name'
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField (
                controller: email,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    hintText: 'Enter Your Password'
                ),
              ),
            ),
            ElevatedButton(onPressed: () {

            },
                child: const Text('Login'))
          ],
        ),
      ),
    );

  }
}