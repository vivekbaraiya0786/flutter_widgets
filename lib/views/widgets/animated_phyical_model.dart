import 'package:flutter/material.dart';

class animated_phyical_model extends StatefulWidget {
  const animated_phyical_model({Key? key}) : super(key: key);

  @override
  State<animated_phyical_model> createState() => _animated_phyical_modelState();
}

class _animated_phyical_modelState extends State<animated_phyical_model> {
  bool _first = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated physical Model"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _first ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              borderRadius: _first
                  ? const BorderRadius.all(Radius.circular(0))
                  : const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Click Me!'),
              onPressed: () {
                setState(() {
                  _first = !_first;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
