import 'package:flutter/material.dart';
import 'dart:ui';

class black_drop extends StatefulWidget {


  const black_drop({Key? key}) : super(key: key);

  @override
  State<black_drop> createState() => _black_dropState();
}

class _black_dropState extends State<black_drop> {

  bool _blurEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Flutter BackdropFilter Widget Demo"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.network(
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
            fit: BoxFit.cover,
          ),
          // Backdrop Filter
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: _blurEnabled ? 5.0 : 0.0,
              sigmaY: _blurEnabled ? 5.0 : 0.0,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.0),
            ),
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BackdropFilter Example',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _blurEnabled = !_blurEnabled;
                    });
                  },
                  child: Text(_blurEnabled ? 'Disable Blur' : 'Enable Blur'),
                ),
              ],
            ),
          ),
        ],
      ),//center
    );
  }
}
