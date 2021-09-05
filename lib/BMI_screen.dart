
import 'dart:math';
import 'package:first_flutter_project/BMI_Result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BMI_screen extends StatefulWidget {

  @override
  _BMI_screenState createState() => _BMI_screenState();
}

class _BMI_screenState extends State<BMI_screen> {

  bool isMale = false;
  bool pressed = false;
  double weight = 50.0;
  double height = 150.0;
  double age = 20.0;
  String gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
         title:Container(
           alignment: AlignmentDirectional.center,
           child: Text(
            'BMI Calculator',
        ),
         ),
        elevation: 2.0,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Expanded(
                     child: GestureDetector(
                       onTap: (){
                        setState(() {
                          isMale = false;
                          gender = "Female";
                        });
                       },
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: !isMale?  Colors.red : Colors.grey.shade800,
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image(
                               image: AssetImage('Assets/images/femenine.png'),
                               width: 50,
                               height: 50,
                             ),
                             SizedBox(height: 10,),
                             Text(
                               'Female',
                               style: TextStyle(
                                 fontSize: 25,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),

                       ),
                     ),
                   ),
                   SizedBox(width: 20,),
                   Expanded(
                     child: GestureDetector(
                       onTap: (){
                         setState((){
                           isMale = true;
                           gender = "Male";
                         });
                       },
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: isMale?  Colors.red : Colors.grey.shade800,
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image(
                               image: AssetImage('Assets/images/male-symbol.png'),
                               width: 50,
                               height: 50,

                             ),
                             SizedBox(height: 10,),
                             Text(
                               'Male',
                               style: TextStyle(
                                 fontSize: 25,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                 ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:  Colors.grey.shade800,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline, // start with start
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        inactiveColor: Colors.grey[300],
                        activeColor: Colors.red,
                        value: height,
                        min: 60,
                        max: 300,
                        onChanged: (value){
                          setState(() {
                           height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),

            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:  Colors.grey.shade800,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            Text(
                              '${age.round()}',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.grey,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ]
                            ),
                          //  Slider(
                          // value: age,
                          //min: 10,
                         // max: 100,
                        //onChanged: (value){
                         //setState(() {
                         //age = value;
                        //});
                          // },
                           //),
                          ],
                        ),
                      ),
                    ),
                     SizedBox(width: 20,),
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color:  Colors.grey.shade800,
                         ),
                         child: Column(
                           children: [
                             Text(
                               'WEIGHT',
                               style: TextStyle(
                                 fontSize: 25,
                                 color: Colors.grey.shade500,
                               ),
                             ),
                             Text(
                               '${weight.round()}',
                               style: TextStyle(
                                 fontSize: 35,
                                 fontWeight: FontWeight.w900,
                                 color: Colors.white,
                               ),
                             ),
                             Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                               children:[
                                 FloatingActionButton(

                                   backgroundColor: Colors.red,
                                   onPressed: () {
                                     setState(() {
                                       if(weight > 40) weight--;
                                     });
                                   },
                                   heroTag: 'weight-',
                                   mini: true,
                                   child: Icon(
                                     Icons.remove,
                                     color: Colors.white,
                                     size: 30,
                                   ),
                                 ),
                                 FloatingActionButton(
                                   backgroundColor: Colors.grey,
                                   onPressed: () {
                                     setState(() {
                                       weight++;
                                     });
                                   },
                                   heroTag: 'weight+',
                                   mini: true,
                                   child: Icon(
                                     Icons.add,
                                     size: 30,
                                   ),
                                 ),
                               ]
                             ),

                           // Slider(
                             //  value: weight,
                              // min: 10,
                               //max: 100,
                               //onChanged: (value){
                                // setState(() {
                                 //  weight = value;
                                // });
                               //},
                        //     ),

                           ],
                         ),
                       ),
                     ),
                   ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.red,
              ),
              height: 50,
              child: MaterialButton(
                  onPressed: (){
                    double res = weight / pow(height / 100 , 2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMI_Result(weight: weight, gender: gender, age: age, res: res),
                      ),
                    );
                  },
                  child:  Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

              ),
            )
          ],
        ),
      ),
    );
  }
}

