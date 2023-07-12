import 'package:flutter/material.dart';

class bottom_navigationbar extends StatefulWidget {
  const bottom_navigationbar({Key? key}) : super(key: key);

  @override
  State<bottom_navigationbar> createState() => _bottom_navigationbarState();
}

class _bottom_navigationbarState extends State<bottom_navigationbar> {

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text("Bottom Navigation-bar"),
       centerTitle: true,
      ),
      body:  Center(
        child: Text(
          'Selected Page: $_currentIndex',
          style: const TextStyle(fontSize: 24.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 4.0,
      ),
    );
  }

}
