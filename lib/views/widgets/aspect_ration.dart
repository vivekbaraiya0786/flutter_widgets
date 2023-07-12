import 'package:flutter/material.dart';

class aspect_ratio extends StatefulWidget {
  const aspect_ratio({Key? key}) : super(key: key);

  @override
  State<aspect_ratio> createState() => _aspect_ratioState();
}

class _aspect_ratioState extends State<aspect_ratio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aspect Ratio"),
      ),
      body: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.grey,
        alignment: Alignment.topCenter,
        child: AspectRatio(
          aspectRatio: 1 / 3,
          child: Container(
            color: Colors.teal,
          ),
        ),
      ),
      // body: AspectRatio(
      //        aspectRatio: 1 / 2,
      //        child: Container(
      //          width: 100,
      //          height: 100,
      //          color: Colors.teal,
      //        ),
      //      ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: Align(
      //         child: AspectRatio(
      //           aspectRatio: 2 / 1,
      //           child: Container(
      //             width: 100,
      //             height: 100,
      //             color: Colors.teal,
      //           ),
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
