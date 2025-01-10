import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("hello world",
                  style: TextStyle(color: Colors.red,
                                    fontSize: 50),),
    );
  }
}
