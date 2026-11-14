
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
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 32),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: Text('$listeners listening'),
      ),
    );
  }
}
