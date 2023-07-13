import 'package:flutter/material.dart';

class Circular_Progress_Indicator_widget extends StatefulWidget {
  const Circular_Progress_Indicator_widget({Key? key}) : super(key: key);

  @override
  State<Circular_Progress_Indicator_widget> createState() => _Circular_Progress_Indicator_widgetState();
}

class _Circular_Progress_Indicator_widgetState extends State<Circular_Progress_Indicator_widget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular_Progress_Indicator_widget"),
        centerTitle: true,
      ),
      body: Center(
        child: ClipOval(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Image.asset(
              'assets/images/angry-1-removebg-preview.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

}
