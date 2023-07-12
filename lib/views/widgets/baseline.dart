import 'package:flutter/material.dart';

class baseline_widget extends StatefulWidget {
  const baseline_widget({Key? key}) : super(key: key);

  @override
  State<baseline_widget> createState() => _baseline_widgetState();
}

class _baseline_widgetState extends State<baseline_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Baseline"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 120.0,
          width: 120.0,
          child: Baseline(
            child: Container(
              color: Colors.red,
              height: 60.0,
              width: 60.0,
            ),
            baseline: 20.0,
            baselineType: TextBaseline.alphabetic,
          ),
        ),
      ),
      // body: const Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Baseline(
      //         baselineType: TextBaseline.alphabetic,
      //         baseline: 24.0,
      //         child: Text(
      //           'Hello',
      //           style: TextStyle(
      //             fontSize: 48.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //       SizedBox(height: 16.0),
      //       Baseline(
      //         baselineType: TextBaseline.alphabetic,
      //         baseline: 24.0,
      //         child: Text(
      //           'World',
      //           style: TextStyle(
      //             fontSize: 24.0,
      //             fontWeight: FontWeight.normal,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
