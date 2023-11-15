import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body:  const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              "We're building the most comprehensive Android and Flutter development learning platform.",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
    );
  }
}
