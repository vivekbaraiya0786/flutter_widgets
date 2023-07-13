import 'package:flutter/material.dart';

class circle_avatar_widget extends StatefulWidget {
  const circle_avatar_widget({Key? key}) : super(key: key);

  @override
  State<circle_avatar_widget> createState() => _circle_avatar_widgetState();
}

class _circle_avatar_widgetState extends State<circle_avatar_widget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("circle_avatar_widget"),
        centerTitle: true,
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 80,
          backgroundColor: Colors.blue,
          backgroundImage: AssetImage('assets/images/angry-1-removebg-preview.png'),
          foregroundColor: Colors.white,
          child: Text(
            'VS',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

    );
  }

}
