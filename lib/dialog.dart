import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:userdetailstest/blankscreen.dart';
import 'package:userdetailstest/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
class DialogScreen extends StatefulWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  void setPreferences()async{
    final prefs=await SharedPreferences.getInstance();
    await prefs.setBool("flag",true);
    print("successful");
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: ()=>{
                    Get.offAll(HomeScreen()),
                    setPreferences()

                  },
                  child: Text("This"),
                ),
                GestureDetector(
                  onTap: (){
                    Get.offAll(BlankScreen());
                  },
                  child: Text("That"),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
