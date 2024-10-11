import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart'; // Import your LoginPage file
import 'main_page.dart'; // Import your main page with BottomNavigationBar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Set LoginPage as the initial page
    );
  }
}
