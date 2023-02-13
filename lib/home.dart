import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:userdetailstest/detailsviewer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState(){

  }


  String name="";
  int age=0;
  void setshared()async{
    final prefs=await SharedPreferences.getInstance();
    await prefs.setString("name",name);
    await prefs.setInt("age",age);
    // await prefs.setBool("rdetails",true);
    // await prefs.setInt("number", value)
    Get.offAll(Details(),arguments:[name,age]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              initialValue: name,
              onChanged: (text){
                name=text;
                setState(() {

                });
              },
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.number,

              initialValue: age.toString(),
              onChanged: (num){
                age=int.parse(num);
                setState(() {

                });
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: ()=>{
              setshared(),

            },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
