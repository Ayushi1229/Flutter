import 'package:flutter/material.dart';

class ImageDemo extends StatefulWidget {
  const ImageDemo({super.key});

  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  bool flag = false;
  
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:flag?Stack(
        
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Birthday.jpg'),
              fit: BoxFit.cover
              )
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text("${name.text}"),
          )
        ],
      ):Column(
        children: [
          TextField(
            controller: name,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              flag = true;
            });
          }, child: Text("submit"))
        ],
      )
    );
  }
}
