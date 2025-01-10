import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customText(name:"demo",clr:Colors.blue),
    );
  }
  Widget customText({required String name,required Color clr}){
    return Text(name,style: TextStyle(color: clr),);
  }
}
