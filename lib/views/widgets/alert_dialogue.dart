import 'package:flutter/material.dart';

class Alert_Dialogue extends StatefulWidget {
  const Alert_Dialogue({Key? key}) : super(key: key);

  @override
  State<Alert_Dialogue> createState() => _Alert_DialogueState();
}

class _Alert_DialogueState extends State<Alert_Dialogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alert Dialog",
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
            ElevatedButton(
             onPressed: () {
               showDialog(
                 context: context,
                 builder: (BuildContext context) {
                   return AlertDialog(
                     title: const Text('AlertDialog Title'),
                     content: const Text('This is the content of the AlertDialog.'),
                     backgroundColor: Colors.grey[200], // Set background color
                     elevation: 8.0, // Set elevation
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(16.0), // Set rounded corners
                     ),
                     titleTextStyle: const TextStyle(
                       color: Colors.blue, // Set title text color
                       fontSize: 18.0, // Set title text size
                       fontWeight: FontWeight.bold, // Set title text weight
                     ),
                     contentTextStyle: const TextStyle(
                       color: Colors.black, // Set content text color
                       fontSize: 16.0, // Set content text size
                     ),
                     actions: [
                       TextButton(
                         onPressed: () {
                           Navigator.of(context).pop(); // Close the dialog
                         },
                         child: const Text(
                           'Close',
                           style: TextStyle(
                             color: Colors.red, // Set button text color
                             fontSize: 16.0, // Set button text size
                           ),
                         ),
                       ),
                     ],
                   );
                 },
               );
             },
              child: const Text("alert Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
