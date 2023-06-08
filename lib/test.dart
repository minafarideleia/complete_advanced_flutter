
import 'package:demo_01/app/app.dart';
import 'package:flutter/material.dart';

 class testData extends StatelessWidget {
   const testData({Key? key}) : super(key: key);

   void updateState(){
     MyApp.instance.currentState = 0;
   }
   void getUpdateState(){
     print(MyApp.instance.currentState);
   }
   @override
   Widget build(BuildContext context) {
     return Container();
   }
 }

