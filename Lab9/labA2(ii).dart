import 'package:flutter/material.dart';

class ImageDemo2 extends StatefulWidget {
  var name;
   ImageDemo2({super.key,required this.name});

  @override
  State<ImageDemo2> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Stack(
        children: [
          // Text(widget.name),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Birthday.jpg'),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Align(alignment: Alignment.center,child: Text(widget.name)),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back"))
        ],
      ),
    );
  }
}
