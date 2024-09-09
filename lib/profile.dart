import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heritage Hub",style: TextStyle(color: Colors.white),),
        backgroundColor:Color.fromARGB(255, 162, 115, 245),
        ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Text("Profile"),
          ),
        ),
      ),
    );
  }
}