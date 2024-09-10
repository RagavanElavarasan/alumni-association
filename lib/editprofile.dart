import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:get/get.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Heritage Hub",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 162, 115, 245),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all((20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(height: (20)),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: (48.5),
                      //backgroundImage: AssetImage('assets/icon/profile.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all((5)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: (16),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: (30)),
              Row(
                children: [
                  Expanded(child: _buildTextField("First Name", "")),
                  SizedBox(width: (10)),
                ],
              ),
              SizedBox(height: (10)),
              _buildTextField("Username", ""),
              SizedBox(height: (10)),
              _buildTextField("Date of Birth", ""),
              SizedBox(height: (10)),
              _buildTextField("Mobile Number", ""),
              SizedBox(height: (10)),
              _buildTextField("Email ID", ""),
              SizedBox(height: (60)),
              Positioned(
                bottom: (0), // Place at the bottom
                left: (0),
                right: (0),
                child: Center(
                  child: SizedBox(
                      width: (221.46),
                      height: (40),
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 162, 115, 245),
                              padding: EdgeInsets.symmetric(vertical: (10)),
                              textStyle: TextStyle(
                                  fontSize: (17.98),
                                  fontFamily: 'Inder',
                                  fontWeight: FontWeight.bold),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular((5)),
                              ),
                            ),
                            onPressed: () {
                              // Add your button logic here
                            },
                            child: Text(
                              'Update',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: (17.98),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Inder"),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: (10)),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: (16.29),
            ),
          ),
        ),
        TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.zero,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
          ),
        ),
      ],
    );
  }
}
