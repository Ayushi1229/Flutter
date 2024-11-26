import "dart:io";
void main(){
  double pound = double.parse(stdin.readLineSync()!);
  print("Your weight in pounds is = " + pound.toString());
  double weight = (pound)*(0.45359237);
  print("Your weight in kg = " + weight.toString());
  double inch = double.parse(stdin.readLineSync()!);
  print("Your height in inches is = " + inch.toString());
  double height = (inch)*(0.254);
  print("Your height in meter is = " + height.toString());
  double BMI = (weight/(height*height));
  print("Your BMI is = " + BMI.toString());
}