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
    'What were the key skills that helped you succeed in your career after graduation?':
        [
      {
        'title': 'Ragavan\'s reply in Discussion',
        'date': '8th September, 2024',
        'content':
            'One of the most important skills I developed was problem-solving...'
      },
      {
        'title': 'Priya\'s reply in Discussion',
        'date': '9th September, 2024',
        'content': 'Time management and adaptability were essential for me...'
      },
      {
        'title': 'Ramesh\'s reply in Discussion',
        'date': '10th September, 2024',
        'content': 'Building good communication skills really helped me...'
      },
    ],
    'How did you transition from college life to a professional career?': [
      {
        'title': 'Anjali\'s reply in Discussion',
        'date': '9th September, 2024',
        'content':
            'Adaptability was a key skill for me. I was always eager to learn...'
      },
      {
        'title': 'Karthik\'s reply in Discussion',
        'date': '10th September, 2024',
        'content': 'Learning to manage my time efficiently was crucial...'
      },
      {
        'title': 'Deepa\'s reply in Discussion',
        'date': '11th September, 2024',
        'content':
            'Staying organized and keeping a routine really helped me adjust...'
      },
    ],
    'What is the best way to prepare for job interviews?': [
      {
        'title': 'Ramesh\'s reply in Discussion',
        'date': '10th September, 2024',
        'content':
            'For interviews, I would recommend focusing on understanding the basics...'
      },
      {
        'title': 'Priya\'s reply in Discussion',
        'date': '11th September, 2024',
        'content': 'Practice with mock interviews and get feedback...'
      },
      {
        'title': 'Vijay\'s reply in Discussion',
        'date': '12th September, 2024',
        'content':
            'Researching the company and tailoring your answers is key...'
      },
    ],
    'How do you maintain work-life balance after starting a full-time job?': [
      {
        'title': 'Priya\'s reply in Discussion',
        'date': '11th September, 2024',
        'content':
            'Work-life balance is important. I make sure to set boundaries and...'
      },
      {
        'title': 'Karthik\'s reply in Discussion',
        'date': '12th September, 2024',
        'content':
            'It’s all about prioritizing your tasks and taking time for yourself...'
      },
      {
        'title': 'Anjali\'s reply in Discussion',
        'date': '13th September, 2024',
        'content':
            'I make sure to leave work at work and dedicate time to family...'
      },
    ],
    'How important is networking for career growth?': [
      {
        'title': 'Karthik\'s reply in Discussion',
        'date': '12th September, 2024',
        'content':
            'Networking played a key role in my career progression. I attended...'
      },
      {
        'title': 'Deepa\'s reply in Discussion',
        'date': '13th September, 2024',
        'content': 'Building relationships with peers and mentors is crucial...'
      },
      {
        'title': 'Ragavan\'s reply in Discussion',
        'date': '14th September, 2024',
        'content':
            'Networking opens up opportunities that you wouldn’t get otherwise...'
      },
    ],
    'What are some tips for working in a team environment?': [
      {
        'title': 'Deepa\'s reply in Discussion',
        'date': '13th September, 2024',
        'content':
            'Teamwork is essential. Always communicate openly and value each...'
      },
      {
        'title': 'Ramesh\'s reply in Discussion',
        'date': '14th September, 2024',
        'content':
            'Listening actively and being patient is the key to team success...'
      },
      {
        'title': 'Vijay\'s reply in Discussion',
        'date': '15th September, 2024',
        'content':
            'A successful team thrives on collaboration and understanding each other...'
      },
    ],
    'What are the top programming languages to learn in 2024?': [
      {
        'title': 'Vijay\'s reply in Discussion',
        'date': '14th September, 2024',
        'content':
            'I believe Python and JavaScript will continue to dominate, but also consider...'
      },
      {
        'title': 'Priya\'s reply in Discussion',
        'date': '15th September, 2024',
        'content':
            'Learning Rust and Go can provide an edge in certain fields...'
      },
      {
        'title': 'Karthik\'s reply in Discussion',
        'date': '16th September, 2024',
        'content':
            'In 2024, learning TypeScript, Python, and cloud-based languages will be vital...'
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
        backgroundColor: Color(0xFF6993FF),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF6993FF),
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
            _buildQueryTile(
              'What is the best way to prepare for job interviews?',
            ),
            _buildQueryTile(
              'How do you maintain work-life balance after starting a full-time job?',
            ),
            _buildQueryTile(
              'How important is networking for career growth?',
            ),
            _buildQueryTile(
              'What are some tips for working in a team environment?',
            ),
            _buildQueryTile(
              'What are the top programming languages to learn in 2024?',
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
      replyCards.add(
          _buildReplyCard(reply['title']!, reply['date']!, reply['content']!));
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