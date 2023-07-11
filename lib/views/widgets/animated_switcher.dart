import 'package:flutter/material.dart';

class animted_switcher extends StatefulWidget {
  const animted_switcher({Key? key}) : super(key: key);

  @override
  State<animted_switcher> createState() => _animted_switcherState();
}

class _animted_switcherState extends State<animted_switcher> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Size"),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Text(
              '$_count',
              key: ValueKey<int>(_count),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          ElevatedButton(
            child: const Text('Increment'),
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
          ),
        ],
      ),
    );
  }
}



