import 'package:flutter/material.dart';
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
        title: const Text(
          "Heritage Hub",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF6993FF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "User Profile",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                        radius: 60,
                        backgroundColor: Color.fromARGB(255, 228, 226, 226)),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF6993FF),
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Nelson Mandela',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Profile Details (Name, Role, Email, etc.)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: _buildProfileDetail("Name", "Nelson Mandela")),
                  const SizedBox(width: 20),
                  Expanded(
                      child: _buildProfileDetail(
                          "Email", "nelsonmandela@gmail.com")),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _buildProfileDetail("Role", "Alumni")),
                  const SizedBox(width: 20),
                  Expanded(
                      child: _buildProfileDetail("Yearsofexperience", "5")),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: _buildProfileDetail("Workingcompany", "Infosys")),
                  const SizedBox(width: 20),
                  Expanded(
                      child: _buildProfileDetail(
                          "Workingdomain", "App developer")),
                ],
              ),
              const SizedBox(height: 20),
              _buildProfileDetail("Degree", "IT"),
              const SizedBox(height: 20),
              _buildProfileDetail("Success Story", "I’m Jordan, a tech enthusiast with a background in Computer Science. Currently, I specialize in mobile app development and enjoy solving complex problems. My proudest achievement was leading a successful app launch that boosted user engagement. Outside of work, I stay current with tech trends and contribute to open-source projects. My future goals include exploring emerging technologies like AI and blockchain."),
              const SizedBox(height: 20),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6993FF),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            textStyle: const TextStyle(
                                fontSize: 17.98,
                                fontFamily: 'Inder',
                                fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            // Add your button logic here
                            //Get.to(EditProfilePage);
                          },
                          child: const Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.98,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Inder"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          textStyle: const TextStyle(
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
                        child: const Text(
                          'Logout',
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
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}