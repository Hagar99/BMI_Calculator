import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {

   double? age ;
   double? weight ;
   double? res;
   String? gender;

  BMI_Result({
    required this.weight,
    required this.gender,
    required this.age,
    required this.res,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed:(){
          Navigator.pop(context);
          },
          icon: Icon(
            Icons.navigate_before_sharp,
            color: Colors.red,
            size: 40,

          ),
        ),
        centerTitle: true,
        title: Text(
          'BMI RESULT',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
          color: Colors.black,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              'Age : ${age!.round()}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Weight : ${weight!.round()}',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Gender :  $gender',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'RESULT : ${res!.round()}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
          ),
        ),
      ),

    );
  }
}
