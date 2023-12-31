import 'package:flutter/material.dart';

class animated_default_textstyle extends StatefulWidget {
  const animated_default_textstyle({Key? key}) : super(key: key);

  @override
  State<animated_default_textstyle> createState() => _animated_default_textstyleState();
}

class _animated_default_textstyleState extends State<animated_default_textstyle> {

  bool _first = true;
  double _fontSize = 40;
  Color _color = Colors.cyan;
  double _height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter AnimatedDefaultTextStyle"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 210,
              child: AnimatedDefaultTextStyle(
                curve: Curves.bounceOut,
                duration: const Duration(milliseconds: 350),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: const Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("AnimatedText"),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                onPressed: () {
                  setState(() {
                    _fontSize = _first ? 60 : 40;
                    _color = _first ? Colors.blue : Colors.brown;
                    _first = !_first;
                    _height = _first ? 100 : 130;
                  });
                },
                child: const Text(
                  "Click Here!!",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
