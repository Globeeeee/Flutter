import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello AppBar"),
          backgroundColor: Colors.transparent, // Make AppBar transparent
          elevation: 0, // Remove elevation
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.green], // Gradient colors
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10), // Add padding
          child: Column(
            children: [
              SizedBox(height: 20), // Add space at the top
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2), // Add border
                      borderRadius: BorderRadius.circular(10), // Add rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Add shadow effect
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt, size: 40, color: Colors.white), // Add icon
                        SizedBox(height: 5),
                        Text("Camera", style: TextStyle(color: Colors.white)), // Add text
                      ],
                    ),
                  ),
                  SizedBox(width: 30), // Add spacing between containers
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.black, width: 2), // Add border
                      borderRadius: BorderRadius.circular(10), // Add rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Add shadow effect
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.music_note, size: 40, color: Colors.white), // Add icon
                        SizedBox(height: 5),
                        Text("Music", style: TextStyle(color: Colors.white)), // Add text
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/img.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.black, width: 2), // Add border
                      borderRadius: BorderRadius.circular(10), // Add rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Add shadow effect
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2), // Add border
                      borderRadius: BorderRadius.circular(10), // Add rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Add shadow effect
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bookmark, size: 40, color: Colors.white), // Add icon
                        SizedBox(height: 5),
                        Text("Bookmark", style: TextStyle(color: Colors.white)), // Add text
                      ],
                    ),
                  ),
                  SizedBox(width: 30), // Add spacing between containers
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.black, width: 2), // Add border
                      borderRadius: BorderRadius.circular(10), // Add rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3), // Add shadow effect
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone, size: 40, color: Colors.white), // Add icon
                        SizedBox(height: 5),
                        Text("Phone", style: TextStyle(color: Colors.white)), // Add text
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
