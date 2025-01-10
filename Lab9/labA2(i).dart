import 'package:flutter/material.dart';
import 'package:flutter_lab/Lab9/labA2(ii).dart';

class ImageDemo extends StatefulWidget {
  const ImageDemo({super.key});

  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {

  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Text("Navigate to birthday card",style: TextStyle(
              fontSize :30,
            ),),
            TextField(
              controller: name,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageDemo2(name: name.text)));
            }, child: Text("Navigate"))
          ],
        )
    );
  }
}
