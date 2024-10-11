import 'package:flutter/material.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Heritage Hub",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF6993FF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              donationCard(),
              const SizedBox(height: 16),
              donationCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget donationCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Donation Request",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "We are excited to invite you to be a part of something transformative! "
              "Our students are working on groundbreaking projects and innovations that "
              "have the potential to make a real impact on industries and communities worldwide.",
            ),
            const SizedBox(height: 16),
            const Text(
              "Request for Student Innovation Project",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "On behalf of our students, who are currently working on an exciting project "
              "related to IoT-based smart parking solutions, we are reaching out to seek your "
              "expertise and assistance. To effectively plan and budget their project, they "
              "require detailed information on the costs associated with various components of such systems.",
            ),
            const SizedBox(height: 16),
            const Text(
              "Project Review",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "We are developing an innovative IoT-based smart parking solution aimed at improving "
              "urban parking efficiency and reducing congestion. This project involves creating a system "
              "that will provide real-time parking space availability, automated payment processing, "
              "and enhanced user experience.",
            ),
            const SizedBox(height: 16),
            const Text(
              "Requirements",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text("Microcontrollers: ₹1245"),
            const Text("Sensors: ₹1245"),
            const Text("Communication Modules: ₹1245"),
            const Text("Power Supply: ₹1245"),
            const SizedBox(height: 8),
            const Text(
              "Total Cost: ₹4980",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "For financial contributions, you can make a donation directly via Google Pay"
              "\nGoogle Pay Number: 7826983555",
            ),
            const SizedBox(height: 16),
            const Text(
              "For more information about the project or to discuss potential partnerships, please reach out "
              "to us at studentinnovation@ksrct.net",
            ),
            const SizedBox(height: 16),
            // Add the image here in a Row to position it at the bottom left
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'images/qrcode.png'
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    "Scan the QR code to view more details about the project.",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
