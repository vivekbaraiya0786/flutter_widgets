import 'package:flutter/material.dart';

class animted_size extends StatefulWidget {
  const animted_size({Key? key}) : super(key: key);

  @override
  State<animted_size> createState() => _animted_sizeState();
}

class _animted_sizeState extends State<animted_size> {

  bool _first = true;
  double _width = 200;
  double _height = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Size"),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: Center(
              child: AnimatedSize(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: _width,
                  height: _height,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            child: const Text('CLICK ME!'),
            onPressed: () {
              setState(() {
                _width  = _first ?  220 : 200;
                _height = _first ?  160 : 200;

                _first = !_first;
              });
            },
          ),
        ],
      ),
    );
  }
}

