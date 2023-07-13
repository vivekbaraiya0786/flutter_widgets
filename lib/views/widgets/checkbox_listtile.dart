import 'package:flutter/material.dart';

class checkbox_ListTile_widget extends StatefulWidget {
  const checkbox_ListTile_widget({Key? key}) : super(key: key);

  @override
  State<checkbox_ListTile_widget> createState() => _checkbox_ListTile_widgetState();
}

class _checkbox_ListTile_widgetState extends State<checkbox_ListTile_widget> {

  List<bool> checkedItems = [false, false, false];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("checkbox_ListTile_widget"),
        centerTitle: true,
      ),
      body:  ListView(
        children: <Widget>[
          CheckboxListTile(
            title: Text('Item 1'),
            value: checkedItems[0],
            onChanged: (value) {
              setState(() {
                checkedItems[0] = value!;
                print('checkedItems 0 :${checkedItems[0]}');
              });
            },
          ),
          CheckboxListTile(
            title: Text('Item 2'),
            value: checkedItems[1],
            onChanged: (value) {
              setState(() {
                checkedItems[1] = value!;
                print('checkedItems 1 :${checkedItems[1]}');
              });
            },
          ),
          CheckboxListTile(
            title: Text('Item 3'),
            value: checkedItems[2],
            onChanged: (value) {
              setState(() {
                checkedItems[2] = value!;
                print('checkedItems 2 :${checkedItems[2]}');
              });
            },
          ),
        ],
      ),
    );
  }

}
