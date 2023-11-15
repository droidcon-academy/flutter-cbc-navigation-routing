import "package:flutter/material.dart";


class CourseScreen extends StatefulWidget {
  final String courseName;
   const CourseScreen(this.courseName,{super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseName),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context,true);
            }, child: const Text("BUY NOW")),
            const SizedBox(height: 20,),
            OutlinedButton(onPressed: (){
              Navigator.pop(context,false);
            }, child: const Text("CANCEL")),
          ],
        ),
      ),
    );
  }
}