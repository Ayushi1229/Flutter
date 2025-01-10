import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.red,),),
                          Expanded(child: Container(color: Colors.white,),),
                          Expanded(child: Container(color: Colors.blue,),),
                        ],
                  )),
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.green,),),
                          Expanded(child: Container(color: Colors.purple,),),
                          Expanded(child: Container(color: Colors.brown,),)
                        ],
                      )),
                  Expanded(
                      child: Column(
                        children: [
                          Expanded(flex:2,child: Container(color: Colors.yellow,),),
                          Expanded(child: Container(color: Colors.black,),),
                          Expanded(child: Container(color: Colors.deepOrangeAccent,),)
                        ],
                      )),
                ],
              )),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(flex:2,child: Container(color: Colors.blueAccent,),),
                          Expanded(child: Container(color: Colors.lightBlue,),),
                          Expanded(flex:2,child: Container(color: Colors.yellow,),)
                        ],
                      )),
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(flex:2,child: Container(color: Colors.red,),),
                          Expanded(flex:2,child: Container(color: Colors.green,),),
                          Expanded(flex:3,child: Container(color: Colors.purple,),),
                          Expanded(flex:1,child: Container(color: Colors.orange,),),
                          Expanded(flex:1,child: Container(color: Colors.blue,),),
                        ],
                      )),
                  Expanded(
                      child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.grey,),),
                          Expanded(child: Container(color: Colors.tealAccent,),),
                          Expanded(flex:2,child: Container(color: Colors.purpleAccent,),),
                        ],
                      )),
                  Expanded(
                      child: Row(
                        children: [
                          Expanded(flex:2,child: Container(color: Colors.green,),),
                          Expanded(child: Container(color: Colors.cyan,),),
                          Expanded(child: Container(color: Colors.lightGreenAccent,),),
                        ],
                      )),
                  Expanded (
                      child: Row(
                        children: [
                          Expanded(child: Container(color: Colors.pink,),),
                          Expanded(child: Container(color: Colors.lightGreenAccent,),),
                          Expanded(child: Container(color: Colors.deepPurpleAccent,))
                        ],
                      ))
                ],
          ))
        ],
      ),
    );
  }
}
