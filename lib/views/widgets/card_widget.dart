import 'package:flutter/material.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Card Title'),
                  subtitle: Text('Card Subtitle'),
                ),
                ButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('ACTION 1'),
                      onPressed: () {
                        // Add your action 1 logic here
                        print('Action 1 pressed');
                      },
                    ),
                    ElevatedButton(
                      child: const Text('ACTION 2'),
                      onPressed: () {
                        // Add your action 2 logic here
                        print('Action 2 pressed');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

}
