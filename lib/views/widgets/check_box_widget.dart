import 'package:flutter/material.dart';

class checkbox_widget extends StatefulWidget {
  const checkbox_widget({Key? key}) : super(key: key);

  @override
  State<checkbox_widget> createState() => _checkbox_widgetState();
}

class _checkbox_widgetState extends State<checkbox_widget> {

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("checkbox_widget"),
        centerTitle: true,
      ),
      body:  Center(
        child: Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
              print(isChecked);
            });
          },
        ),
      ),
    );
  }

}
