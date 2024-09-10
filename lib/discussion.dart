import 'package:flutter/material.dart';

class DiscussionPage extends StatefulWidget {
  const DiscussionPage({super.key});

  @override
  State<DiscussionPage> createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussionPage> {
  // Selected query to display replies
  String selectedQuery = 'default';
  
  // Map to hold queries and their respective replies
  final Map<String, List<Map<String, String>>> queryReplies = {
    'What were the key skills that helped you succeed in your career after graduation?': [
      {
        'title': 'Ragavan\'s reply in Discussion',
        'date': '8th September, 2024',
        'content': 'One of the most important skills I developed was problem-solving...'
      },
    ],
    'How did you transition from college life to a professional career?': [
      {
        'title': 'Anjali\'s reply in Discussion',
        'date': '9th September, 2024',
        'content': 'Adaptability was a key skill for me. I was always eager to learn...'
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Heritage Hub",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 162, 115, 245),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 162, 115, 245),
              ),
              child: Text(
                'Queries',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            _buildQueryTile(
              'What were the key skills that helped you succeed in your career after graduation?',
            ),
            _buildQueryTile(
              'How did you transition from college life to a professional career?',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Replies',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Display replies based on selected query
            ..._buildRepliesForQuery(selectedQuery),
          ],
        ),
      ),
    );
  }

  // Widget to build query tiles in the drawer
  Widget _buildQueryTile(String query) {
    return ListTile(
      title: Text(
        query,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      onTap: () {
        // Update the selected query and refresh the replies in the body
        setState(() {
          selectedQuery = query;
        });
        Navigator.pop(context); // Close the drawer after selection
      },
    );
  }

  // Method to build reply cards based on the selected query
  List<Widget> _buildRepliesForQuery(String query) {
    if (!queryReplies.containsKey(query)) {
      return [const Text("Select a query from the drawer to see replies.")];
    }

    List<Widget> replyCards = [];
    for (var reply in queryReplies[query]!) {
      replyCards.add(_buildReplyCard(reply['title']!, reply['date']!, reply['content']!));
      replyCards.add(const SizedBox(height: 10)); // Add spacing between cards
    }

    return replyCards;
  }

  // Widget to build reply cards
  Widget _buildReplyCard(String title, String date, String content) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              date,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
