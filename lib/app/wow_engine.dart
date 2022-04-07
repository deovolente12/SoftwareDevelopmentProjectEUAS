import 'package:flutter/material.dart';
import 'package:wow_engine/ui/home/login.dart';

class WowEngineApp extends StatelessWidget {
  const WowEngineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wow Engine',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Login(title: 'WoW Engine'),



    );
  }
}