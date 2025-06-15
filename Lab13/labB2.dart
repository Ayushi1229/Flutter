import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet Form Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Sheet Form Example'),
          backgroundColor: Colors.blue,
        ),
        body: const BottomSheetFormDemo(),
      ),
    );
  }
}

class BottomSheetFormDemo extends StatelessWidget {
  const BottomSheetFormDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Text('Show Bottom Sheet Form'),
      ),
    );
  }
}