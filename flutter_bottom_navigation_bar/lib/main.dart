import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _itemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
   static const List <Widget> _pages = <Widget>[
   Icon(
    Icons.call,
    size: 150,
  ),
  Icon(
    Icons.camera,
    size: 150,
  ),
  Icon(
    Icons.chat,
    size: 150,
  ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets"),
      ),
      body: Center(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Call',  
        ),

        const BottomNavigationBarItem(
            icon: Icon(Icons.camera), label: "Camera"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.chat), label: "Chat"),
      ],
      currentIndex: _selectedIndex,
      onTap: _itemSelected,
      ),
    );
  }
}
