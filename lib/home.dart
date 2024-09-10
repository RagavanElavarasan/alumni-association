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
        title: const Text("Heritage Hub", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 162, 115, 245),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text("Job Openings",style: TextStyle(fontSize: 30),),
              ),
              // First Job Post
              Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person, size: 40.0),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Sanjay",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              Text("Tech Mahindra"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        "Undergraduate required for Voice Process at Tech Mahindra",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text("Tech Mahindra"),
                      const SizedBox(height: 10.0),
                      Row(
                        children: const [
                          Icon(Icons.work, size: 20.0),
                          SizedBox(width: 5.0),
                          Text("Full Time"),
                          SizedBox(width: 20.0),
                          Icon(Icons.location_on, size: 20.0),
                          SizedBox(width: 5.0),
                          Text("Bangalore"),
                          SizedBox(width: 20.0),
                          Icon(Icons.attach_money, size: 20.0),
                          SizedBox(width: 5.0),
                          Text("2-10 LPA"),
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
                      const Text("• Customer Support"),
                      const Text("• Inbound calls"),
                      const Text("• Customer Queries"),
                      const Text("• Query Resolution"),
                      const SizedBox(height: 20.0),
                      const Text(
                        "5 Days ago",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 10.0), // Spacing between job posts

              // Second Job Post
              Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person, size: 40.0),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Sanjay",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              Text("Infosys"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        "Graduate required for Technical Support at Infosys",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text("Infosys"),
                      const SizedBox(height: 10.0),
                      Row(
                        children: const [
                          Icon(Icons.work, size: 20.0),
                          SizedBox(width: 5.0),
                          Text("Full Time"),
                          SizedBox(width: 20.0),
                          Icon(Icons.location_on, size: 20.0),
                          SizedBox(width: 5.0),
                          Text("Pune"),
                          SizedBox(width: 20.0),
                          Icon(Icons.attach_money, size: 20.0),
                          SizedBox(width: 5.0),
                          Text("3-12 LPA"),
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
                      const Text("• Technical Support"),
                      const Text("• Networking"),
                      const Text("• System Troubleshooting"),
                      const Text("• Problem Solving"),
                      const SizedBox(height: 20.0),
                      const Text(
                        "3 Days ago",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
