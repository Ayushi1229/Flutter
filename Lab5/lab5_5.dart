import 'dart:io';
void main(){
  Map<String,Object> phone={
    "devu":Friend(age: "21",gmail: "teddynidon@gmail.com"),
    "ayushi":Friend(age:"20",gmail:"ayushi@gmail.com")
  };
  Friend f1=phone["devu"] as Friend;
  Friend f2=phone["ayushi"] as Friend;
  print(f2.age);
  print(f1.gmail);
}
class Friend{
  late String age;
  late String gmail;

  Friend({required String age,required String gmail}){
    this.age=age;
    this.gmail=gmail;
  }
}