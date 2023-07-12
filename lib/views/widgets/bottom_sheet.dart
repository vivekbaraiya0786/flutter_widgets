import 'package:flutter/material.dart';

class bottom_sheet extends StatefulWidget {
  const bottom_sheet({Key? key}) : super(key: key);

  @override
  State<bottom_sheet> createState() => _bottom_sheetState();
}

class _bottom_sheetState extends State<bottom_sheet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200.0,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bottom Sheet Content',
                        style: TextStyle(fontSize: 24.0),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text('Open Bottom Sheet'),
        ),
      ),
    );
  }

}
