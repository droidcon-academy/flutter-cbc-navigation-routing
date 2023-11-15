import "package:flutter/material.dart";
import "course_screen.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final String userName = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title:  Text("Welcome $userName"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              "We're building the most comprehensive Android and Flutter development learning platform.",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),

          OutlinedButton(onPressed: () async{
            bool? data = await Navigator.push(context, MaterialPageRoute(builder: (context)=> const CourseScreen("Coffee Break Codelabs")));
           //Navigator.pushNamed(context, "/course");
           if(data == true && context.mounted){
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("CBC Bought Successfully !")));
           } 
          }, child: const Text("Coffee Break Codelabs")),
          const SizedBox(height: 20,),
          OutlinedButton(onPressed: () async {
           bool? data = await Navigator.push(context, MaterialPageRoute(builder: (context)=> const CourseScreen("Master Codelabs")));
           //  Navigator.pushNamed(context, "/course");
            if(data == true && context.mounted){
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("MC Bought Successfully !")));
           } 
          }, child: const Text("Master Codelabs")),
        ],
      ),
    );
  }
}
