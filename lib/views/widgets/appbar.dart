import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class app_Bar extends StatefulWidget {
  const app_Bar({Key? key}) : super(key: key);

  @override
  State<app_Bar> createState() => _app_BarState();
}

class _app_BarState extends State<app_Bar> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
          },
          child: const Icon(
            Icons.menu,  // add custom icons also
          ),
        ),
        backgroundColor: Colors.blue, // Set the background color
        elevation: 4.0, // Set the brightness (light/dark)
        centerTitle: true, // Center the title horizontally
        automaticallyImplyLeading: true, // Automatically show the leading icon/button
        // Other properties can be added based on your requirements
        title: const Text("AppBar"),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                    Icons.more_vert
                ),
              )
          ),
        ],
        actionsIconTheme: const IconThemeData(
            size: 30.0,
            color: Colors.black,
            opacity: 10.0
        ),
        notificationPredicate: (ScrollNotification notification) {
          return notification.depth == 1;
        },
        scrolledUnderElevation: 4.0,
        shadowColor: Theme.of(context).shadowColor, systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}



