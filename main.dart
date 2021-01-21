import 'package:flutter/material.dart';
import 'package:flutter_pawan/homepage.dart';

void main() {
  runApp(Myapp()); // finish calculaor till 4 :
}

class Myapp extends StatelessWidget {
  // stateful widgets state can be changed but stateless cannt be changed
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator app',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Homepage(),
    );
  }
}
