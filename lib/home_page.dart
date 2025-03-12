import 'package:flutter/material.dart';
import 'pages/glaube_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Updated pages with the new GlaubePage
  final List<Widget> _pages = [
    Center(child: Text('Aktuelles', style: TextStyle(fontSize: 24))),
    GlaubePage(), // Updated Glaube Page with Sidebar
    Center(child: Text('Pfarreien', style: TextStyle(fontSize: 24))),
    Center(child: Text('Begegnung', style: TextStyle(fontSize: 24))),
    Center(child: Text('Menschen', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Aktuelles'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Glaube'),
          BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'Pfarreien'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Begegnung'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Menschen'),
        ],
      ),
    );
  }
}
