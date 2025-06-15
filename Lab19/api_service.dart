import 'dart:convert';
 import 'package:http/http.dart' as http;
 class ApiService{
   String baseUrl = "https://mockapi.io/projects/66717e6ee083e62ee43bd6b9";
   Future<List<dynamic>> getAllTodo() async {
     var res = await http.get(Uri.parse(baseUrl));
     List<dynamic> data = await jsonDecode(res.body);
     return data;
   }
   Future<void> addTodo(String title, String dec) async{

   }
 }