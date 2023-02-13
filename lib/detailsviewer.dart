import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  // String name="";
  void initState(){
    super.initState();

  }
  var name=Get.arguments;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          children: [
            // Text(""),
            name!=null?Text(name[0]):Text(""),
            name!=null?Text(name[1]):Text("")
            // Text(name[1].toString())
          ],
        ),
      ),
    );
  }
}
