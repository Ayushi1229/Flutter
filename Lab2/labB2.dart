import 'dart:io';

double calculateAngle(int hours, int minutes) {

  if (hours >= 12) {
    hours -= 12;
  }

  double hourAngle = (hours * 30) + (minutes * 0.5);
  double minuteAngle = minutes * 6;
  double angle = (hourAngle - minuteAngle).abs();

  if (angle > 180) {
    angle = 360 - angle;
  }

  return angle;
}

void main() {

  stdout.write('Enter hours (0-12): ');
  int hours = int.parse(stdin.readLineSync()!);

  stdout.write('Enter minutes (0-59): ');
  int minutes = int.parse(stdin.readLineSync()!);


  double angle = calculateAngle(hours, minutes);


  print('The angle between the hour and minute hands is: $angle degrees');
}
