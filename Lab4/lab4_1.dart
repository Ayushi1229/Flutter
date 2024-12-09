import 'dart:io';
void named({double? p,double? r,double? t}){
  print("Principle, rate and time period are: p$p & r$r & t$t" );
  double si = (p!*r!*t!)/100;
  print("Simple interest is:"+si.toString());
}
void main(){
  named(p:500,r:1,t:100);
}