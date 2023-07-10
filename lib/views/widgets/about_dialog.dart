import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class About_Dialog extends StatefulWidget {
  const About_Dialog({Key? key}) : super(key: key);

  @override
  State<About_Dialog> createState() => _About_DialogState();
}

class _About_DialogState extends State<About_Dialog> {

  @override
  void initState() {
    super.initState();
    this.initMyLibrary();
  }

  void initMyLibrary() {
    LicenseRegistry.reset();
    LicenseRegistry.addLicense(() async* {
      yield const LicenseEntryWithLineBreaks(<String>['ACustomLibrary'], '''
  Copyright 2016 Woolha.com. All rights reserved.
  
     * Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
   
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS''');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About Dialog",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationName: 'Woolha.com App',
                    applicationVersion: '0.0.1',
                    applicationLegalese: '©2020 Woolha.com',
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'This is an about dialog in Flutter',
                        ),
                      ),
                    ],
                  ),
                );
                // showAboutDialog(
                //   context: context,
                //   applicationIcon: const FlutterLogo(),
                //   applicationName: 'Woolha.com App',
                //   applicationVersion: '0.0.1',
                //   applicationLegalese: '©2020 Woolha.com',
                //   children: [
                //     const Padding(
                //       padding: EdgeInsets.only(top: 15),
                //       child: Text(
                //         'This is an about dialog in Flutter',
                //       ),
                //     ),
                //   ],
                // );
              },
              child: const Text("About Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
