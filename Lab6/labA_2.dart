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
            child: Row(
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
        ],
      ),
    );
  }
}
