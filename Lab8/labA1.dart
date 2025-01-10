import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// body: Image.asset('assets/Marvel 1.jpg'),
      body: Image.network('https://v3img.voot.com/resizeMedium,w_810,h_1080/v3Storage/assets/hp4_3x4-1687867679648.jpg')
    );
  }
}
