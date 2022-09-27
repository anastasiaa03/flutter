import 'package:flutter/material.dart';
import 'package:flutter_application_1/meditate.dart';
import 'package:flutter_application_1/meditate2ver.2.0.dart';
import 'package:flutter_application_1/welcome.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //const Welcome(),
          //const Meditate(),
          const Meditate2ver2(),
    );
  }
}
