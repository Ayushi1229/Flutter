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
                    Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ],
          ),

         ),
         Expanded(
           child: Row(
             children: [
               Expanded(
                 child: Container(
                   color: Colors.brown,
                 ),
               ),
               Expanded(
                 child: Container(
                   color: Colors.grey,
                 ),
               ),
               Expanded(
                 child: Container(
                   color: Colors.purple,
                 ),
               ),
             ],
           ),

         ),
         Expanded(
           child: Row(
             children: [
               Expanded(
                 child: Container(
                   color: Colors.black,
                 ),
               ),
               Expanded(
                 child: Container(
                   color: Colors.deepOrange,
                 ),
               ),
               Expanded(
                 child: Container(
                   color: Colors.orange,
                 ),
               ),
             ],
           ),

         )
       ],
     ),
   );
  }
}
