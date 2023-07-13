import 'package:flutter/material.dart';

class button_bar extends StatefulWidget {
  const button_bar({Key? key}) : super(key: key);

  @override
  State<button_bar> createState() => _button_barState();
}

class _button_barState extends State<button_bar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button bar"),
        centerTitle: true,
      ),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Button 1'),
              onPressed: () {
                // Add your button 1 action here
                print('Button 1 pressed');
              },
            ),
            ElevatedButton(
              child: Text('Button 2'),
              onPressed: () {
                // Add your button 2 action here
                print('Button 2 pressed');
              },
            ),
            ElevatedButton(
              child: Text('Button 3'),
              onPressed: () {
                // Add your button 3 action here
                print('Button 3 pressed');
              },
            ),
          ],
        ),
      ),
    );
  }

}
