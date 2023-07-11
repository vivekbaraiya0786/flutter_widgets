import 'package:flutter/material.dart';

class animated_modal_barrier extends StatefulWidget {
  const animated_modal_barrier({Key? key}) : super(key: key);

  @override
  State<animated_modal_barrier> createState() => _animated_modal_barrierState();
}

class _animated_modal_barrierState extends State<animated_modal_barrier>
    with SingleTickerProviderStateMixin {
  bool _isLoading = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: const Color.fromARGB(200, 155, 120, 155),
      end: const Color.fromARGB(100, 127, 127, 127),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = _colorTween.animate(_animationController);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated modal barrier"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100.0,
              width: 250.0,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ElevatedButton(
                      child: const Text('Press'),
                      onPressed: () {
                        setState(() {
                          _isLoading = true;
                        });

                        _animationController.reset();
                        _animationController.forward();
                        // Scaffold.of(context).showSnackBar(
                        // SnackBar(content: Text('Button is press'),
                        // backgroundColor: Colors.black,),
                        // );
                        Future.delayed(const Duration(seconds: 3), () {
                          setState(() {
                            _isLoading = false;
                          });
                        });
                      }),
                  if (_isLoading) _animatedModalBarrier,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
