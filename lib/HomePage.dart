import 'package:flutter/material.dart';

class homePage extends StatefulWidget {


  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Welcome user\nAge: \nCountry:"),
    );
  }
}
