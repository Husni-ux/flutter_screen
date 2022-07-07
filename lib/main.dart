import 'package:flutter/material.dart';
import 'package:flutter_screen/bmiCalculator.dart';
import 'package:flutter_screen/bmi_result_Scr.dart';
import 'package:flutter_screen/coun.dart';
import 'package:flutter_screen/counterScreen.dart';
import 'package:flutter_screen/login_screen.dart';
import 'package:flutter/src/widgets/framework.dart' ;
import 'package:flutter_screen/messengerDesign.dart';
import 'package:flutter_screen/usersScreen.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  //constructor في البدابة يتم تنفيذال ثم يتم تنفيذ ال Build
  //build
  @override
  //what context mean ?
  Widget build(BuildContext context){
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: BmiCalcScr(

      ),
    );
  }
}
