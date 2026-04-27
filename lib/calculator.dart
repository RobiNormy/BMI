import 'dart:math';
class Calculate{
  final int height;
  final int weight;

  double _bmi = 0;

  Calculate({required this.weight,required this.height});

  String calculateBMI(){
    _bmi =  weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    return _bmi >=25 ? "Overweight" : (_bmi >18.5 ? "Normal" : "Underweight");
  }
  String getInterpration(){
    return _bmi >=25
        ? "You have higher weight more than your body can handle,Try to exercise more"
        : (_bmi >18.5 ? "You have Normal weight of your body,keep up with the normal weight"
        : "You are Underweight,try to eat more and burn less calories");

  }

}