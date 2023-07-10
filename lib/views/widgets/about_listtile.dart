import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class About_ListTile extends StatefulWidget {
  const About_ListTile({Key? key}) : super(key: key);

  @override
  State<About_ListTile> createState() => _About_ListTileState();
}

class _About_ListTileState extends State<About_ListTile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About ListTile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
       children: const [
         AboutListTile(
           // applicationIcon: ,
           icon: Icon(Icons.info),
           applicationName: 'AllAboutFlutter',
           applicationVersion: '1.0.0',
           applicationLegalese: '© 2023 AllAboutFlutter.com',
           aboutBoxChildren: [
             Text('Best Flutter Tutorials.'),
           ],
         ),
       ],
      ),
    );
  }
}
