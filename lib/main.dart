import 'package:flutter/material.dart';
import 'package:vigenesia/Constant/const.dart';
import '/../Screens/Login.dart';
import 'package:http/http.dart' as http;

void main() async{

  try {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final data = response.body;
      print("Respon -> $data + ${response.statusCode}");
    } else {
      print("Failed To Load Data");
    }
  } catch (error) {
    print("Error: $error");
  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}