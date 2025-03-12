import 'package:flutter/material.dart';

class GlaubePage extends StatefulWidget {
  @override
  _GlaubePageState createState() => _GlaubePageState();
}

class _GlaubePageState extends State<GlaubePage> {
  String _selectedOption = "Geistlicher Impuls"; // Default section

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Glaube"),
      ),
      drawer: Drawer(  // Sidebar menu
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Glaube",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            _buildDrawerItem("Geistlicher Impuls"),
            _buildDrawerItem("Sakramente"),
            _buildDrawerItem("Tod & Trauer"),
            _buildDrawerItem("Ökumene"),
            _buildDrawerItem("Konversion & Wiederaufnahme"),
          ],
        ),
      ),
      body: Center(
        child: Text(
          _selectedOption,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(String title) {
    return ListTile(
      title: Text(title),
      onTap: () {
        setState(() {
          _selectedOption = title;
        });
        Navigator.pop(context); // Close drawer after selecting
      },
    );
  }
}
