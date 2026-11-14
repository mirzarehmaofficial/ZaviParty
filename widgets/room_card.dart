
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String listeners;
  final IconData icon;

  const RoomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.listeners,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(icon),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.headphones, size: 16),
            const SizedBox(width: 4),
            Text(listeners),
          ],
        ),
      ),
    );
  }
}
