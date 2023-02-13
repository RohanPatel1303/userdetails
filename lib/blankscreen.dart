import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BlankScreen extends StatefulWidget {
  const BlankScreen({Key? key}) : super(key: key);

  @override
  State<BlankScreen> createState() => _BlankScreenState();
}

class _BlankScreenState extends State<BlankScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Blankkk"),
    );
  }
}
