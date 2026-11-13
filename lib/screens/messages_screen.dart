import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.forum_rounded, size: 58, color: Color(0xFF35B9FF)),
            SizedBox(height: 14),
            Text('Messages', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Private and group messaging will be connected in the next development stage.',
              textAlign: TextAlign.center, style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}
