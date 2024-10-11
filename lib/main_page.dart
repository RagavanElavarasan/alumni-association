import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'home.dart'; // Add your page imports here
import 'messages.dart';
import 'profile.dart';
import 'discussion.dart';
import 'donation.dart';
import 'feedback.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
    return Scaffold(
      body: tabs[i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.homeVariant),
            label: 'Home',
            backgroundColor: Color(0xFF6993FF),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.messageText),
            label: 'Message',
            backgroundColor: Color(0xFF6993FF),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountCircle),
            label: 'Profile',
            backgroundColor: Color(0xFF6993FF),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.forum),
            label: 'Discussion',
            backgroundColor: Color(0xFF6993FF),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.handCoin),
            label: 'Donation',
            backgroundColor: Color(0xFF6993FF),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.formatListText),
            label: 'Feedback',
            backgroundColor: Color(0xFF6993FF),
          ),
        ],
        onTap: (currentIndex) {
          setState(() {
            i = currentIndex;
          });
        },
      ),
    );
  }
}
