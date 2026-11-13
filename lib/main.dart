import 'package:flutter/material.dart';
import 'screens/app_shell.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const NufiPartyApp());
}

class NufiPartyApp extends StatelessWidget {
  const NufiPartyApp({super.key});

  static const navy = Color(0xFF061126);
  static const royalBlue = Color(0xFF145BFF);
  static const electricBlue = Color(0xFF35B9FF);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NufiParty',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: navy,
        colorScheme: const ColorScheme.dark(
          primary: royalBlue,
          secondary: electricBlue,
          surface: Color(0xFF101F3D),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: navy,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: const Color(0xFF0A1831),
          indicatorColor: royalBlue.withValues(alpha: 0.28),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      home: const AppShell(),
    );
  }
}
