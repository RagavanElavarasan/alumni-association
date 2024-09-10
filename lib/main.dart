import 'package:alumni_association/discussion.dart';
import 'package:alumni_association/donation.dart';
import 'package:alumni_association/feedback.dart';
import 'package:alumni_association/home.dart';
import 'package:alumni_association/messages.dart';
import 'package:alumni_association/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  final tabs = [
    HomePage(),
    MessagesPage(),
    ProfilePage(),
    DiscussionPage(),
    DonationPage(),
    FeedbackPage()
  ];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      body: tabs[i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.homeVariant),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 162, 115, 245),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.messageText),
            label: 'Message',
            backgroundColor: Color.fromARGB(255, 162, 115, 245),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountCircle),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 162, 115, 245),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.forum),
            label: 'Discussion',
            backgroundColor: Color.fromARGB(255, 162, 115, 245),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.handCoin),
            label: 'Donation',
            backgroundColor: Color.fromARGB(255, 162, 115, 245),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.formatListText),
            label: 'Feedback',
            backgroundColor: Color.fromARGB(255, 162, 115, 245),
          ),
        ],
        onTap: (currentIndex) {
          setState(() {
            i = currentIndex;
          });
        },
      ),
    )
    );
  }
}