import 'package:flutter/material.dart';

class animted_rotation extends StatefulWidget {
  const animted_rotation({Key? key}) : super(key: key);

  @override
  State<animted_rotation> createState() => _animted_rotationState();
}

class _animted_rotationState extends State<animted_rotation> {


  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 1.0 / 8.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Rotation"),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _changeRotation,
            child: const Text('Rotate Logo'),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

