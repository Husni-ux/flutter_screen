// while we using same size of column we have to use Expanded
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screen/bmi_result_Scr.dart';

class BmiCalcScr extends StatefulWidget {
  Color appBarColor = Color(0xf800003f);

  @override
  State<BmiCalcScr> createState() => _BmiCalcScrState();
}

class _BmiCalcScrState extends State<BmiCalcScr> {

    bool isMAle=true;
    double _height = 120.0;
    int age=18;
    int weight=35;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xf800003f),
        title: Center(
          child: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body:
      Container(
        color:  Color(0xf800003f),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    //size between 2 row is 40 cuz every row toke 20 padding
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState((){
                            isMAle=true;

                          });

                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/images/male.png'),
                                height: 90.0,

                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                ''
                                'MALE',
                                style: TextStyle(
                                    fontSize: 20.5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMAle ? Colors.pinkAccent :Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState((){
                            isMAle=false;

                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Image(image: AssetImage('assets/images/female.png'),
                             height: 90.0,
                             ),

                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                ''
                                'FEMALE',
                                style: TextStyle(
                                    fontSize: 20.5,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: !isMAle? Colors.pinkAccent :Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                           Text(
                            '${_height.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          const Text(
                            'CM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                          value:_height,
                          min: 0.0,
                          max: 220.0,
                          activeColor: Colors.pinkAccent,
                          inactiveColor: Colors.white,
                          thumbColor: Colors.pinkAccent,
                          onChanged: (value) {
                            setState((){
                              _height=value;
                            });

                          }),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    //size between 2 row is 40 cuz every row toke 20 padding
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            const Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 20.5,
                                  fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                             Text(
                              '$age',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.white.withOpacity(0.4),
                                  mini: true,
                                  onPressed: (){
                                    setState((){
                                      if(age<=0){
                                        age=0;
                                      }
                                      else{
                                      age--;
                                      }
                                    });
                                  } ,
                                  heroTag: 'age--',
                                  child:Icon(Icons.remove) 
                                  
                                  ,),
                                FloatingActionButton(
                                  backgroundColor: Colors.white.withOpacity(0.4),
                                  mini: true,
                                  onPressed: (){
                                    setState((){
                                      age++;
                                    });
                                  } ,
                                  heroTag: 'age++',
                                  child:Icon(Icons.add) ,)
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 20.5,
                                  fontWeight: FontWeight.w900,
                                color:Colors.white,
                              ),
                            ),
                             Text(
                              '$weight',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 25.0,
                                  color: Colors.white
                              ),
                            ),
                            Row(
                              mainAxisAlignment:  MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.white.withOpacity(0.4),
                                  mini: true,
                                  onPressed: (){
                                    setState((){
                                      if(weight<=0){
                                      weight=0;}
                                      else
                                        {
                                          weight--;
                                        }
                                    });
                                  } ,
                                  heroTag: 'weight--',
                                  child:Icon(Icons.remove,) ,

                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.white.withOpacity(0.4),
                                  mini: true,
                                  onPressed: (){
                                    setState((){
                                      weight++;
                                    });

                                  } ,
                                  heroTag: 'weight++',
                                  child:Icon(Icons.add) ,)
                              ],
                            ),

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
              color: Colors.pinkAccent,
              height: 50.0,
              child: MaterialButton(
                onPressed: () {
                  double result =weight / pow (_height / 100,2);
                  print(result.round());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>BmiResult(age: age, isMAle :isMAle ,result:result ),
                      ),
                  );
                },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
//
//print(result.round());