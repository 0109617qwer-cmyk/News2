import 'package:News/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://uhhtbzvzbtquzqgkcwpo.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVoaHRienZ6YnRxdXpxZ2tjd3BvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODMyNzY2NTYsImV4cCI6MjA5ODg1MjY1Nn0.1-QfxhlP-mOBr7RbMOS3TuT7pgD7VucLhjlT2hU0w14',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      home: const SplashScreen(),
    );
  }
}