import 'package:flutter/material.dart';

class clipoval_widget extends StatefulWidget {
  const clipoval_widget({Key? key}) : super(key: key);

  @override
  State<clipoval_widget> createState() => _clipoval_widgetState();
}

class _clipoval_widgetState extends State<clipoval_widget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("clipoval_widget"),
        centerTitle: true,
      ),
      body: Center(
        child: CircularProgressIndicator(
          value: 0.7,
          backgroundColor: Colors.grey[300],
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
          strokeWidth: 10,
          semanticsLabel: 'Loading',
          semanticsValue: '200%',
        ),
      ),
    );
  }

}
