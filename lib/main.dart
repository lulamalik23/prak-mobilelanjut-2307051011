import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() => runApp(const JustduitApp());

class JustduitApp extends StatelessWidget {
  const JustduitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JustduIt',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F6F8), // abu-abu muda
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E88FF)),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF1E88FF)),
          ),
        ),
      ), // ThemeData
      initialRoute: LoginScreen.route,
      routes: {
        '/': (context) => const LoginScreen(), // default = Sign In
        '/signup': (context) => const SignupScreen(),
      }, // routes
    ); // MaterialApp
  }
}
