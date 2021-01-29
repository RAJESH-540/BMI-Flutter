
import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.weight, this.height});
  final int height;
  final int weight;
  double bmi;
  String calculateBMI(){
    bmi= weight/ pow(height/100, 2);
     return bmi.toStringAsFixed(1);

  }
  String getResult(){
    if(bmi >= 25){
      return 'OverWeight';
    }
    else if( bmi >18.5){
    return 'Normal';
    }else{
      return 'Underweight';
    }
  }


  String getInterpretation(){
    if(bmi >= 25){
      return 'You Have a higher than normal body weight. Try to exercise more';
    }
    else if( bmi >18.5){
      return 'You Have a normal Body weight. Good job!';
    }else{
      return 'You have a lower than normal body weight. You can eat a bit more ';
    }

  }

}