import 'package:flutter/material.dart';

class Chip_Widget extends StatefulWidget {
  const Chip_Widget({Key? key}) : super(key: key);

  @override
  State<Chip_Widget> createState() => _Chip_WidgetState();
}

class _Chip_WidgetState extends State<Chip_Widget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chip_Widget"),
        centerTitle: true,
      ),
      body:  Center(
        child: Chip(
          label: const Text(
            'Example Chip',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          elevation: 4,
          shadowColor: Colors.grey[50],
          padding: const EdgeInsets.all(8),
          avatar: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.blue,
            ),
          ),
          onDeleted: () {
            print('Chip deleted');
          },
        ),
      ),
    );
  }

}
