import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_View extends StatelessWidget {
  const List_View({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cities = [
      "Ahmedabad",
      "Surat",
      "Vadodara",
      "Rajkot",
      "Bhavnagar",
      "Jamnagar",
      "Junagadh",
      "Gandhinagar",
      "Anand",
      "Nadiad",
      "Morbi",
      "Mehsana",
      "Navsari",
      "Vapi",
      "Bharuch",
      "Palanpur",
      "Porbandar",
      "Godhra",
      "Dahod",
      "Valsad"
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context,index){
          return Card(child: ListTile(title: Text(cities[index]),),);
        },
      ),
    );
  }
}