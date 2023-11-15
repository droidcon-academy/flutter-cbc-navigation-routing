import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Droidcon CBC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      routes: {
         "/": (context) => const LoginScreen(),
         "/home" : (context) => const HomeScreen(),
      // "/course" : (context) =>   const CourseScreen()
      },
      initialRoute: "/",
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context)=> const Scaffold(body: Center(child: Text("404 NOT FOUND"),),backgroundColor: Colors.redAccent,));    
       },
    );
  }
}
