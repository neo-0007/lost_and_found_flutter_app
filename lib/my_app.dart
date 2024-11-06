import 'package:flutter/material.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
