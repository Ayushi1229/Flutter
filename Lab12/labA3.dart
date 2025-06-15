import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DatePickerExample(),
  ));
}

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  _DatePickerExampleState createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime? selectedDate;
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedNow = DateFormat("dd-MM-yyyy").format(now);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Current Date: $formattedNow",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            if (selectedDate != null)
              Text(
                "Selected Date: ${DateFormat("dd-MM-yyyy").format(selectedDate!)}",
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: selectedDate ?? now,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );

                if (date != null) {
                  setState(() {
                    selectedDate = date;
                  });
                }
              },
              child: const Text("Pick a Date"),
            ),
          ],
        ),
      ),
    );
  }
}