import 'package:flutter/material.dart';

class animated_icon extends StatefulWidget {
  const animated_icon({Key? key}) : super(key: key);

  @override
  State<animated_icon> createState() => _animated_iconState();
}

class _animated_iconState extends State<animated_icon>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 450,
      ),
    );
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Icon"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              iconSize: 150,
              splashColor: Colors.greenAccent,
              icon: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _animationController,
              ),
              onPressed: () => _handleOnPressed(),
            ),
          ],
        ),
      ),
    );
  }
}
