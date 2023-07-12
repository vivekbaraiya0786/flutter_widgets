import 'package:flutter/material.dart';

class Country {

  const Country({
    required this.name,
    required this.size,
  });

  final String name;
  final int size;

  @override
  String toString() {
    return '$name ($size)';
  }
}

class Auto_complete extends StatefulWidget {


  const Auto_complete({Key? key}) : super(key: key);

  @override
  State<Auto_complete> createState() => _Auto_completeState();
}

class _Auto_completeState extends State<Auto_complete> {



   List<Country> countryOptions = <Country>[
    const Country(name: 'Africa', size: 30370000),
    const Country(name: 'Asia', size: 44579000),
    const Country(name: 'Australia', size: 8600000),
    const Country(name: 'Bulgaria', size: 110879),
    const Country(name: 'Canada', size: 9984670),
    const Country(name: 'Denmark', size: 42916),
    const Country(name: 'Europe', size: 10180000),
    const Country(name: 'India', size: 3287263),
    const Country(name: 'North America', size: 24709000),
    const Country(name: 'South America', size: 17840000),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auto Complete"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Autocomplete<Country>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            return countryOptions
                .where((Country county) => county.name.toLowerCase()
                .startsWith(textEditingValue.text.toLowerCase())
            )
                .toList();
          },
          displayStringForOption: (Country option) => option.name,
          fieldViewBuilder: (
              BuildContext context,
              TextEditingController fieldTextEditingController,
              FocusNode fieldFocusNode,
              VoidCallback onFieldSubmitted
              ) {
            return TextField(
              controller: fieldTextEditingController,
              focusNode: fieldFocusNode,
              style: const TextStyle(fontWeight: FontWeight.bold),
            );
          },
          onSelected: (Country selection) {
            print('Selected: ${selection.name}');
          },
          optionsViewBuilder: (
              BuildContext context,
              AutocompleteOnSelected<Country> onSelected,
              Iterable<Country> options
              ) {
            return Align(
              alignment: Alignment.topLeft,
              child: Material(
                child: Container(
                  width: 300,
                  color: Colors.cyan,
                  child: ListView.builder(
                    padding: EdgeInsets.all(10.0),
                    itemCount: options.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Country option = options.elementAt(index);

                      return GestureDetector(
                        onTap: () {
                          onSelected(option);
                        },
                        child: ListTile(
                          title: Text(option.name, style: const TextStyle(color: Colors.white)),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
