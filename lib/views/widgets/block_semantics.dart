import 'package:flutter/material.dart';

class block_semantics extends StatefulWidget {
  const block_semantics({Key? key}) : super(key: key);

  @override
  State<block_semantics> createState() => _block_semanticsState();
}

class _block_semanticsState extends State<block_semantics> {
  bool _showMessage = false;
  static const TextStyle textStyle = const TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Block Semantics"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 150,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 0,
                    child: OutlinedButton(
                      child: Text('Show Message'),
                      onPressed: () => setState(() {
                        _showMessage = true;
                      }),
                    ),
                  ),
                  BlockSemantics(
                    blocking: _showMessage,
                    child: Visibility(
                      visible: _showMessage,
                      child: _buildMessage(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage() {
    return Card(
      color: Colors.cyan[50],
      child: SizedBox(
        width: 200,
        height: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              // leading: Image.asset(
              //   "assets/logo.png",
              //   height: 22,
              // ),
              title: Text('BlockSemantics', style: textStyle),
              subtitle: Text('by vivek ', style: textStyle),
            ),
            ButtonTheme(
              child: ButtonBar(
                children: <Widget>[
                  TextButton(
                    child: const Text('OK', style: textStyle),
                    onPressed: () => setState(() {
                      _showMessage = false;
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
