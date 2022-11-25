import 'package:flutter/material.dart';

class adminPage extends StatefulWidget {
  final String name;
  final int age;
adminPage({required this.name,required this.age});

  @override
  State<adminPage> createState() => _adminPageState();
}

class _adminPageState extends State<adminPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget.name),
      ),
    );
  }
}
