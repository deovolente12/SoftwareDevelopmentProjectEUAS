import 'package:flutter/material.dart';

import 'homepage.dart';

class Login extends StatefulWidget {

  const Login({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
            ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Homepage(title: '',)),
            );

            },
                child: const Text('Login'))
          ],
        ),
      ),
    );

  }
}