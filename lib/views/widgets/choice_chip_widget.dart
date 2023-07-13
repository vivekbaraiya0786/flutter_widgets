import 'package:flutter/material.dart';

class choice_chip_widget extends StatefulWidget {
  const choice_chip_widget({Key? key}) : super(key: key);

  @override
  State<choice_chip_widget> createState() => _choice_chip_widgetState();
}

class _choice_chip_widgetState extends State<choice_chip_widget> {
  String selectedChoice = 'Choice 1';

  void selectChoice(String choice) {
    setState(() {
      selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("choice_chip_widget"),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceChip(
              label: const Text('Choice 1'),
              selected: selectedChoice == 'Choice 1',
              onSelected: (bool selected) {
                selectChoice('Choice 1');
              },
            ),
            const SizedBox(height: 10),
            ChoiceChip(
              label: const Text('Choice 2'),
              selected: selectedChoice == 'Choice 2',
              onSelected: (bool selected) {
                selectChoice('Choice 2');
              },
            ),
            const SizedBox(height: 10),
            ChoiceChip(
              label: const Text('Choice 3'),
              selected: selectedChoice == 'Choice 3',
              onSelected: (bool selected) {
                selectChoice('Choice 3');
              },
            ),
          ],
        ),
      ),
    );
  }

}
