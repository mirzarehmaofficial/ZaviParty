import 'package:flutter/material.dart';
import '../widgets/room_card.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(18),
      children: const [
        Text('Voice Rooms', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900)),
        SizedBox(height: 6),
        Text('Explore rooms and meet the community.', style: TextStyle(color: Colors.white70)),
        SizedBox(height: 20),
        RoomCard(title: 'Late Night Lounge', subtitle: 'Chill • Music • Friends', listeners: '128', icon: Icons.nightlife_rounded),
        RoomCard(title: 'New Friends Hub', subtitle: 'Meet • Talk • Connect', listeners: '86', icon: Icons.groups_rounded),
        RoomCard(title: 'The Blue Lounge', subtitle: 'Open conversation', listeners: '54', icon: Icons.mic_rounded),
      ],
    );
  }
}
