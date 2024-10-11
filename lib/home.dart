import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Heritage Hub", 
          style: TextStyle(color: Colors.white)
        ),
        backgroundColor: const Color(0xFF6993FF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Title Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Job & Intern Openings",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Add Job Button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6993FF),
                    ),
                    child: const Text("Add Jobs",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // First Job Card
              jobCard(
                "Sanjay", "Tech Mahindra",
                "Undergraduate required for Voice Process at Tech Mahindra",
                "Bangalore", "2-10 LPA", "5 Days ago",
                ["Customer Support", "Inbound calls", "Customer Queries", "Query Resolution"]
              ),

              const SizedBox(height: 10.0), // Spacing between job posts

              // Second Job Card
              jobCard(
                "Ragavan", "Infosys",
                "Software Engineer at Infosys",
                "Pune", "3-12 LPA", "3 Days ago",
                ["Technical Support", "Networking", "System Troubleshooting", "Problem Solving"]
              ),

              const SizedBox(height: 20),

              // Events Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Events",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Add Events Button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6993FF),
                    ),
                    child: const Text("Add Events",style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Event Cards
              eventCard("National Conference", "Technological Innovations in Life Science towards Sustainability", "17th April, 2024"),
              eventCard("AI Symposium", "The Future of Artificial Intelligence in Healthcare in the leading technology", "22nd May, 2024"),
              eventCard("Robotics Workshop", "Building Autonomous Robots for Smart Cities and the urban areas", "10th June, 2024"),
            ],
          ),
        ),
      ),
    );
  }

  Widget jobCard(String personName, String companyName, String title, String location, String salary, String postedDate, List<String> requirements) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.person, size: 40.0),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      personName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(companyName),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(companyName),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Icon(Icons.work, size: 20.0),
                const SizedBox(width: 5.0),
                const Text("Full Time"),
                const SizedBox(width: 20.0),
                const Icon(Icons.location_on, size: 20.0),
                const SizedBox(width: 5.0),
                Text(location),
                const SizedBox(width: 20.0),
                const Icon(Icons.attach_money, size: 20.0),
                const SizedBox(width: 5.0),
                Text(salary),
              ],
            ),
            const SizedBox(height: 20.0),
            const Text(
              "Requirements",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 10.0),
            ...requirements.map((req) => Text("• $req")).toList(),
            const SizedBox(height: 20.0),
            Text(
              postedDate,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget eventCard(String title, String description, String date) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(description),
            const SizedBox(height: 10.0),
            Text(
              date,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
