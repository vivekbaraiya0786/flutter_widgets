import 'package:flutter/material.dart';

class animated_builder extends StatefulWidget {
  const animated_builder({Key? key}) : super(key: key);

  @override
  State<animated_builder> createState() => _animated_builderState();
}

class _animated_builderState extends State<animated_builder> with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedBuilder Example'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}
