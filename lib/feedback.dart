import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Heritage Hub",style: TextStyle(color: Colors.white),),
        backgroundColor:const Color.fromARGB(255, 162, 115, 245),
        ),
      body: SingleChildScrollView(
        child: Container(
          child: const Center(
            child: Text("Feedback"),
          ),
        ),
      ),
    );
  }
}