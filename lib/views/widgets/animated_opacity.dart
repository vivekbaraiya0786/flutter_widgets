import 'package:flutter/material.dart';

class animated_opacity extends StatefulWidget {
  const animated_opacity({Key? key}) : super(key: key);

  @override
  State<animated_opacity> createState() => _animated_opacityState();
}

class _animated_opacityState extends State<animated_opacity> {
  @override
  Widget build(BuildContext context) {
    double opacityLevel = 1.0;
    void _changeOpacity() {
      setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 2),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Fade Logo'),
              onPressed: _changeOpacity,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
