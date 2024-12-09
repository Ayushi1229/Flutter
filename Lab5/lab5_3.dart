import 'dart:io';
void main(){
  List<String> city =['Delhi','Mumbai','Bangalore','Hyderabad','Ahmedabad'];
  for(int i=0;i<city.length;i++){
    if(city[i]=='Ahmedabad'){
      city[i]='Surat';
    }
  }
  print(city);
}