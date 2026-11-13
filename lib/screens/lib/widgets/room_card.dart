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
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF101F3D),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFF2B67C9).withValues(alpha: .35)),
      ),
      child: Row(
        children: [
          Container(
            width: 54, height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(colors: [Color(0xFF35B9FF), Color(0xFF145BFF)]),
            ),
            child: Icon(icon, size: 29, color: Colors.white),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: Colors.white60, fontSize: 11)),
              ],
            ),
          ),
          Column(
            children: [
              const Icon(Icons.headphones_rounded, color: Color(0xFF65C9FF), size: 18),
              const SizedBox(height: 3),
              Text(listeners, style: const TextStyle(fontSize: 11, color: Colors.white70)),
            ],
          ),
        ],
      ),
    );
  }
}
