import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class absorbpointer extends StatefulWidget {
  const absorbpointer({Key? key}) : super(key: key);

  @override
  State<absorbpointer> createState() => _absorbpointerState();
}

class _absorbpointerState extends State<absorbpointer> {

  // This one determines whether the other control elements are able to interact or not
  bool _isAbsorbing = false;

  // These variables are use for other control elements
  bool _isChecked = false; // used for the checkbox
  bool _isOn = false; // used for the switch at the bottom of the column

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "absorb pointer",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // This is used to disable/enable other widgets
            SwitchListTile(
                title: const Text('Disable everything below'),
                value: _isAbsorbing,
                onChanged: (_) {
                  setState(() {
                    _isAbsorbing = !_isAbsorbing;
                  });
                }),
            const Divider(
              height: 50,
              thickness: 5,
              color: Colors.purple,
            ),
            // Every widget inside this AbsorbPointer will be disabled/enabled at once
            AbsorbPointer(
              absorbing: _isAbsorbing,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // a TextField
                  const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // a button
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Just a button')),
                  const SizedBox(
                    height: 15,
                  ),
                  // a checkbox
                  CheckboxListTile(
                      title: const Text('A sample checkbox'),
                      value: _isChecked,
                      onChanged: (_) {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      }),
                  // A sample switch
                  SwitchListTile(
                      title: const Text('Just a demo switch'),
                      value: _isOn,
                      onChanged: (_) {
                        setState(() {
                          _isOn = !_isOn;
                        });
                      })
                ],
              ),
            )
          ],
        ),
      ),
      // body: ListView(
      //   children:  [
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         ElevatedButton(
      //           onPressed: () {
      //             print('Button pressed!');
      //           },
      //           child: Text('Clickable Button'),
      //         ),
      //         SizedBox(height: 16),
      //         AbsorbPointer(
      //           absorbing: true, // Set to true to absorb pointer events
      //           child: ElevatedButton(
      //             onPressed: () {
      //               print('This button is disabled!');
      //             },
      //             child: Text('Disabled Button'),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
