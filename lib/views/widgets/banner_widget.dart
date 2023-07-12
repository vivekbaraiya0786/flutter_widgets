import 'package:flutter/material.dart';
import 'dart:ui';

class banner_widget extends StatefulWidget {
  const banner_widget({Key? key}) : super(key: key);

  @override
  State<banner_widget> createState() => _banner_widgetState();
}

class _banner_widgetState extends State<banner_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Banner"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Banner(
            message: 'New',
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
