import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay 5 detik sebelum pindah ke Dashboard
    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return; // ✅ Tambahan untuk menghindari warning
      Navigator.pushReplacementNamed(context, DashboardScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        196,
        202,
        213,
      ), // background putih
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo aplikasi
            Image.asset("assets/logo-mola.png", width: 120, height: 120),
            const SizedBox(height: 20),
            // teks nama aplikasi
            const Text(
              "Loading Tunggu Sebentar",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // loading indicator
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
