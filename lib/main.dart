

import 'package:first_flutter_project/BMI_Result.dart';
import 'package:first_flutter_project/BMI_screen.dart';
import 'package:flutter/material.dart' ;

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  // manager to the widget (main)
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BMI_screen(),
      );
  }

}