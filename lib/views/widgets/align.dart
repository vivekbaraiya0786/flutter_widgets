import 'package:flutter/material.dart';

class align extends StatefulWidget {
  const align({Key? key}) : super(key: key);

  @override
  State<align> createState() => _alignState();
}

class _alignState extends State<align> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Align",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey[300],
              child: Align(
                alignment: Alignment.topRight, // Set alignment
                widthFactor: 2.0, // Set width factor
                heightFactor: 2.0, // Set height factor
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
