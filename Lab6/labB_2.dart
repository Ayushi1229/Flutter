import 'dart:io';

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
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),

          ),
          Expanded(
            child:Column(
              children: [
                Expanded(
                  flex :2,
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),

          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex:2,
                  child: Container(
                    color: Colors.purple,
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
