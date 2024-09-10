import 'package:flutter/material.dart';

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
        title: Text(
          "Heritage Hub",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 162, 115, 245),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      //backgroundImage: AssetImage('assets/icon/profile.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 162, 115, 245),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 60),
              // First row: Name and Role
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _buildProfileDetail("Name", "Kanishka S")),
                  SizedBox(width: 20),
                  Expanded(child: _buildProfileDetail("Role", "Alumni")),
                ],
              ),
              SizedBox(height: 20),
              // Second row: Email
              _buildProfileDetail("Email", "kanishka@gmail.com"),
              SizedBox(height: 20),
              // Third row: Degree and Branch (Branch aligned with Role and Working place)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _buildProfileDetail("Degree", "B.Tech")),
                  SizedBox(width: 20),
                  Expanded(
                      child: _buildProfileDetail(
                          "Branch", "Information Technology")),
                ],
              ),
              SizedBox(height: 20),
              // Fourth row: Years of Experience and Working place (Working place aligned with Branch and Role)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: _buildProfileDetail(
                          "Years of Experience", "5 years")),
                  SizedBox(width: 20),
                  Expanded(
                      child: _buildProfileDetail("Working place", "Cognizant")),
                ],
              ),
              SizedBox(height: 80),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 162, 115, 245),
                          padding: EdgeInsets.symmetric(vertical: 15),
                          textStyle: TextStyle(
                              fontSize: 17.98,
                              fontFamily: 'Inder',
                              fontWeight: FontWeight.bold),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          // Add your button logic here
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.98,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Inder"),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          textStyle: TextStyle(
                              fontSize: 17.98,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Inder'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          // Add your button logic here
                        },
                        child: Text(
                          'Log out',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.98,
                              fontFamily: "Inder"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build the profile details, labels, and data
  Widget _buildProfileDetail(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}