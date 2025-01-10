import 'dart:io';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.yellow,),),
                      Expanded(
                          child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                     children: [
                                       Expanded(child:Container(color: Colors.cyan,),),
                                       Expanded(child: Container(color: Colors.deepPurpleAccent,),)
                                     ],
                                  ),
                               ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(child:Container(color: Colors.purple,),),
                                        Expanded(child: Container(color: Colors.red,),)
                                      ],
                                    ),
                                  ),
                            ],
                      ),
                   ),
                ],
              ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.grey,),),
                  Expanded(child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Expanded(child: Container(color: Colors.cyan,),),
                          Expanded(flex:3,child: Container(color: Colors.black,),),
                          Expanded(child: Container(color: Colors.redAccent,),)
                        ],
                      ),
                      ),
                      Expanded(child: Column(
                        children: [
                          Expanded(flex:2,child: Container(color: Colors.deepPurple,),),
                          Expanded(flex:2,child: Container(color: Colors.purpleAccent,),),
                          Expanded(flex:2,child: Container(color: Colors.brown,),)
                        ],
                      ),
                      ),
                      Expanded(child: Column(
                        children: [
                          Expanded(flex:3,child: Container(color: Colors.redAccent,),),
                          Expanded(child: Container(color: Colors.green,),),
                          Expanded(flex:3,child: Container(color: Colors.deepPurple,),)
                        ],
                      ),
                      ),
                    ],
                  ),),
                  Expanded(child: Container(color: Colors.yellow,),)
                ],
              ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(child: Container(color: Colors.red,),),
              Expanded(child: Container(color: Colors.green,),),
              Expanded(child: Container(color: Colors.purpleAccent,),)
            ],
          ))
        ],
      ),
    );
  }
}
