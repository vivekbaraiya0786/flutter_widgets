import 'package:flutter/material.dart';

class animated_align extends StatefulWidget {
  const animated_align({Key? key}) : super(key: key);

  @override
  State<animated_align> createState() => _animated_alignState();
}

class _animated_alignState extends State<animated_align> {

  AlignmentGeometry _alignment = Alignment.topRight;
  AlignmentGeometry _geometry = Alignment.bottomLeft;

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
      _geometry = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/angry-bird.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: _alignment,
              curve: Curves.easeInOutBack,
              duration: Duration(seconds: 3),
              child: Image.asset(
                'assets/images/angry-1-removebg-preview.png',
                height: 125,
                width: 125,
              ),
            ),
            AnimatedAlign(
              alignment: _geometry,
              curve: Curves.easeInCirc,
              duration: Duration(seconds: 3),
              child: Image.asset(
                'assets/images/angry-2-removebg-preview.png',
                height: 100,
                width: 100,
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () => _changeAlignment(),
                child: Text('START'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
