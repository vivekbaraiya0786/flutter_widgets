import 'dart:math';

import 'package:flutter/material.dart';

class animated_cross_fade extends StatefulWidget {
  const animated_cross_fade({Key? key}) : super(key: key);

  @override
  State<animated_cross_fade> createState() => _animated_cross_fadeState();
}

class _animated_cross_fadeState extends State<animated_cross_fade>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _bool = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated cross-fade'),
        actions: [
          // Creating a button to
          // switch between two widgets
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.black,
              ),
            ),
            onPressed: () {
              setState(
                () {
                  _bool = !_bool;
                },
              );
            },
            child: Text("Switch", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Center(
        child: AnimatedCrossFade(
            // First widget
            firstChild: Container(
              height: 230,
              width: 250,
              color: Colors.blue,
            ),
            // Second widget
            secondChild: Container(
              height: 250,
              width: 230,
              color: Colors.green,
            ),
            // Parameter to change between two
            // widgets on this basis of value of _bool
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            // Duration for crossFade animation.
            duration: Duration(seconds: 1)),
      ),
    );
  }
}
