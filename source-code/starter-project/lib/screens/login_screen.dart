import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/droidcon_logo.png", height: 100),
            const SizedBox(height: 30),
            const Text(
              "Welcome to Droidcon Academy",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
