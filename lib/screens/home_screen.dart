import 'package:flutter/material.dart';
import '../widgets/room_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 24),
      children: [
        Row(
          children: [
            Container(
              height: 44, width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: const LinearGradient(
                  colors: [Color(0xFF35B9FF), Color(0xFF145BFF)],
                ),
              ),
              child: const Icon(Icons.graphic_eq_rounded, color: Colors.white, size: 28),
            ),
            const SizedBox(width: 11),
            const Text('NufiParty', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
            const Spacer(),
            IconButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notifications will be connected in a later stage.')),
              ),
              icon: const Icon(Icons.notifications_none_rounded),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
              begin: Alignment.topLeft, end: Alignment.bottomRight,
              colors: [Color(0xFF176BFF), Color(0xFF102A65), Color(0xFF101B39)],
            ),
            border: Border.all(color: const Color(0xFF5BCBFF).withValues(alpha: .35)),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('YOUR VOICE. YOUR PARTY.', style: TextStyle(letterSpacing: 1.5, fontSize: 11, color: Color(0xFFBCEBFF), fontWeight: FontWeight.bold)),
              SizedBox(height: 9),
              Text('Meet people.\nShare good vibes.', style: TextStyle(fontSize: 27, height: 1.12, fontWeight: FontWeight.w900)),
              SizedBox(height: 12),
              Text('Find a room and join the conversation.', style: TextStyle(color: Color(0xFFD6E7FF))),
            ],
          ),
        ),
        const SizedBox(height: 25),
        const Row(
          children: [
            Text('Popular rooms', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
            Spacer(),
            Text('DEMO CONTENT', style: TextStyle(fontSize: 9, color: Color(0xFF8EBBFF), letterSpacing: 1)),
          ],
        ),
        const SizedBox(height: 12),
        const RoomCard(title: 'Late Night Lounge', subtitle: 'Chill • Music • Friends', listeners: '128', icon: Icons.nightlife_rounded),
        const RoomCard(title: 'New Friends Hub', subtitle: 'Meet • Talk • Connect', listeners: '86', icon: Icons.groups_rounded),
        const RoomCard(title: 'The Blue Lounge', subtitle: 'Open conversation', listeners: '54', icon: Icons.mic_rounded),
      ],
    );
  }
}
