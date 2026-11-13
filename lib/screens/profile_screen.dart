import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const Text('My Profile', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900)),
        const SizedBox(height: 26),
        const Center(
          child: CircleAvatar(
            radius: 48,
            backgroundColor: Color(0xFF145BFF),
            child: Icon(Icons.person_rounded, size: 54, color: Colors.white),
          ),
        ),
        const SizedBox(height: 14),
        const Center(child: Text('NufiParty Member', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        const Center(child: Text('ID: Will be assigned after account setup', style: TextStyle(color: Colors.white60, fontSize: 12))),
        const SizedBox(height: 28),
        _ProfileTile(icon: Icons.workspace_premium_rounded, title: 'VIP Membership'),
        _ProfileTile(icon: Icons.card_giftcard_rounded, title: 'My Gifts'),
        _ProfileTile(icon: Icons.family_restroom_rounded, title: 'My Family'),
        _ProfileTile(icon: Icons.settings_rounded, title: 'Settings'),
      ],
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const _ProfileTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) => Card(
    color: const Color(0xFF101F3D),
    child: ListTile(
      leading: Icon(icon, color: const Color(0xFF65C9FF)),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$title will be implemented in a later stage.')),
      ),
    ),
  );
}
