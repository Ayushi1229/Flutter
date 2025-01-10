// import 'package:flutter/material.dart';
//
// class Layout extends StatefulWidget {
//   Layout({super.key});
//
//   @override
//   State<Layout> createState() => _LayoutState();
// }
//
// class _LayoutState extends State<Layout> {
//   TextEditingController name=TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextField(
//             controller: name,
//           ),
//           ElevatedButton(onPressed: ()=>print(name.text), child: Text('submit'),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  TextEditingController name = TextEditingController();
  String enteredText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  enteredText = text;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(name.text);
                setState(() {
                  enteredText = name.text;
                });
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              'Entered Text: $enteredText',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
