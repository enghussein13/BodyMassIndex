import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController
{
  bool male=true;
  double height=150.0;
  int weight =50;
  int age =20;
  double? result;
  String ?classification;
  String ? healthRisk;
  String ? quote;
  var  massageColor;
  double bmiIndex=0.0;


  void   gestureChangeMale(){
    male=true;
    update();
  }
  void   gestureChangeFemale(){
    male=false;
    update();
  }
//------------------------------------------------------

  void fabAgeIncrease(){
    age++;
    update();
  }
  void fabAgeDecrease(){
    age--;
    update();
  }
 //------------------------------------------------------

 void fabWeightIncrease(){
    weight++;
    update();
 }

  void fabWeightDecrease(){
    weight--;
    update();
  }

//------------------------------------------------------

  void changeSlider(value){
    height=value;
    update();
  }
//------------------------------------------------------
   Future bmiResult()async{
     result=weight/pow(height/100,2);
       bmiIndex=result!;

     //print(result);

   }


//----------------------------------------------

void calcBmi (){
    if(bmiIndex<18.5){
      classification='UnderWeight !!';
      healthRisk='Minimal';
      quote='I think you need to increase your weight but you are good';
      massageColor=Colors.blue;
    }else if(bmiIndex>=18.5&&bmiIndex<=24.9){
      classification='Normal Weight';
      healthRisk='Minimal';
      quote='You are Brilliant!!';
      massageColor=Colors.green;
    }else if(bmiIndex>25.0&&bmiIndex<=29.9){
      classification='OverWeight !!';
      healthRisk='Increased';
      quote='I think you need to make some sport';
      massageColor=Colors.amber;
    }else if(bmiIndex>30.0&&bmiIndex<=34.9){
      classification='Obesity Class I !!!';
      healthRisk='High';
      quote='I think you have to loose some weight';
    }else if(bmiIndex>35.0&&bmiIndex<=39.9){
      classification='Obesity Class II !!!!';
      healthRisk='Very High';
      massageColor=Colors.orange;
      quote='I think you must loose weights ,it affects your health.Take Care';
    }else if(bmiIndex>40.0){
      classification='Obesity Class III !!!!!';
      healthRisk='Extremely High';
      quote='You are in danger buddy!!!!!';
      massageColor=Colors.red;
    }else{
      classification='Wrong Data';
      healthRisk='Wrong Data';
    }
}
}