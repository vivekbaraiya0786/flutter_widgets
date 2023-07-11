import 'package:flutter/material.dart';

class animated_padding extends StatefulWidget {
  const animated_padding({Key? key}) : super(key: key);

  @override
  State<animated_padding> createState() => _animated_paddingState();
}

class _animated_paddingState extends State<animated_padding> {
  @override
  Widget build(BuildContext context) {

    EdgeInsetsGeometry _padding = EdgeInsets.zero;
    void _changePadding() {
      setState(() {
        if (_padding.horizontal == 100) {
          _padding = EdgeInsets.only(top: 100, bottom: 100);
        } else {
          _padding = EdgeInsets.only(left: 100, right: 100);
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding"),
      ),
      body: Center(
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 300.0,
                width: 300.0,
                child: AnimatedPadding(
                  padding: _padding,
                  curve: Curves.ease,
                  duration: Duration(seconds: 1),
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _changePadding();
                },
                child: Text(
                  "Click Me!",
                ),
              )
            ],
          ),
      ),
    );
  }
}



