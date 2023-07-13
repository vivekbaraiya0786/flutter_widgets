import 'package:flutter/material.dart';

class center_widget extends StatefulWidget {
  const center_widget({Key? key}) : super(key: key);

  @override
  State<center_widget> createState() => _center_widgetState();
}

class _center_widgetState extends State<center_widget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("center_widget"),
          centerTitle: true,
        ),
        body:  Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: const Text(
              'Centered Content',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
    );
  }

}
