import 'package:flutter/material.dart';

class animated_List extends StatefulWidget {
  const animated_List({Key? key}) : super(key: key);

  @override
  State<animated_List> createState() => _animated_ListState();
}

class _animated_ListState extends State<animated_List> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<int> _items = [];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated List"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              listKey.currentState!.insertItem(
                0,
                duration: const Duration(milliseconds: 500),
              );
              setState(() {
                _items = []
                  ..add(counter++)
                  ..addAll(_items);
              });
            },
            tooltip: 'Add',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              listKey.currentState?.removeItem(
                0,
                    (_, animation) => slideIt(context, 0, animation),
                duration: const Duration(milliseconds: 500),
              );
              setState(() {
                _items.removeAt(0);
              });
            },
            tooltip: 'Remove',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: AnimatedList(
          key: listKey,
          initialItemCount: _items.length,
          itemBuilder: (context, index, animation) {
            return slideIt(context, index, animation);
          },
        ),
      ),
    );
  }

  Widget slideIt(BuildContext context, int index, Animation<double> animation) {
    int item = _items[index];
    TextStyle? textStyle = Theme.of(context).textTheme.titleLarge;
    return SizeTransition(
      sizeFactor: animation,
      child: SizedBox(
        height: 128.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $item', style: textStyle),
          ),
        ),
      ),
    );
  }
}
