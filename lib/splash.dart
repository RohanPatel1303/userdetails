import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:userdetailstest/detailsviewer.dart';
import 'package:userdetailstest/dialog.dart';
import 'package:userdetailstest/home.dart';
class Splashh extends StatefulWidget {
  const Splashh({Key? key}) : super(key: key);

  @override
  State<Splashh> createState() => _SplashhState();
}

class _SplashhState extends State<Splashh> {
  void initState(){
    super.initState();
    navtowhere();
  }
  void navtowhere()async{
    final prefs=await SharedPreferences.getInstance();
    bool? flag=await prefs.getBool("flag");
    bool? flag2=await prefs.getBool("rdetails");
    Timer(
      Duration(seconds: 4),
      () =>
      {
        if(flag==null){
          Get.offAll(DialogScreen())
        }
        else{
          //flag either true or false
          if(flag2==null){
            Get.offAll(HomeScreen())
          }
          else
            {
              //flag exists as well flag2 exists
              Get.offAll(Details())
            }
        }
      }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}
