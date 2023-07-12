import 'package:flutter/material.dart';

class builder extends StatefulWidget {
  const builder({Key? key}) : super(key: key);

  @override
  State<builder> createState() => _builderState();
}

class _builderState extends State<builder> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Builder"),
        centerTitle: true,
      ),
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Button Pressed'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Show Snack-bar'),
            );
          },
        ),
      ),
    );
  }

}
