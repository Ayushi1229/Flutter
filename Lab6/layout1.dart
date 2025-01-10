import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(color: Colors.tealAccent,),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.green,),),
                  Expanded(
                      child:Column(
                        children: [
                          Expanded(child: Container(color: Colors.purple,),),
                          Expanded(child: Container(color: Colors.yellow,),),
                        ],
                      ), ),
                ],
              )
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.orange,),),
                  Expanded(child: Container(color: Colors.blue,),),
                  Expanded(child: Container(color: Colors.red,),)
                ],
              ))
        ],

      ),
    );
  }
}
