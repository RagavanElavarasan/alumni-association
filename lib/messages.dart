import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final List<Contact> contacts = [
    Contact(
      name: 'am',
      imageUrl: 'https://randomuser.me/api/portraits/men/11.jpg',
      lastMessage: 'Are we meeting tomorrow?',
      lastMessageTime: '9:30 AM',
    ),
    Contact(
      name: 'Smith',
      imageUrl: 'https://randomuser.me/api/portraits/women/12.jpg',
      lastMessage: 'Just finished the project!',
      lastMessageTime: '8:45 AM',
    ),
    Contact(
      name: 'Johnson',
      imageUrl: 'https://randomuser.me/api/portraits/men/13.jpg',
      lastMessage: 'Can you send the files?',
      lastMessageTime: '7:10 AM',
    ),
    Contact(
      name: 'Davis',
      imageUrl: 'https://randomuser.me/api/portraits/women/14.jpg',
      lastMessage: 'Let\'s catch up later.',
      lastMessageTime: '6:20 AM',
    ),
    Contact(
      name: 'Chris',
      imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
      lastMessage: 'I\'ll be there in 10 mins.',
      lastMessageTime: 'Yesterday',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Heritage Hub',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF6993FF),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ChatScreen(contact: contacts[index]),
                      ),
                    );
                  },
                  child: ContactItem(contact: contacts[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Contact {
  final String name;
  final String imageUrl;
  final String lastMessage;
  final String lastMessageTime;

  Contact({
    required this.name,
    required this.imageUrl,
    required this.lastMessage,
    required this.lastMessageTime,
  });
}

class ContactItem extends StatelessWidget {
  const ContactItem({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(contact.imageUrl),
      ),
      title: Text(contact.name,style: const TextStyle(fontSize: 18),),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            contact.lastMessage,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            contact.lastMessageTime,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
        backgroundColor: const Color.fromARGB(255, 162, 115, 245),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with actual message count
              itemBuilder: (context, index) {
                // Add logic to display messages from both user and contact
                return MessageBubble(
                  text: 'Message ${index + 1} from ${contact.name}',
                  isMe: index % 2 == 0,
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: () {}, // Add your logic here
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  const MessageBubble({Key? key, required this.text, required this.isMe})
      : super(key: key);

  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.bottomRight : Alignment.bottomLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft:
                isMe ? const Radius.circular(25.0) : const Radius.circular(0),
            topRight:
                isMe ? const Radius.circular(0) : const Radius.circular(25.0),
            bottomLeft: const Radius.circular(25.0),
            bottomRight: const Radius.circular(25.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}