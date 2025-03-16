import 'package:flutter/material.dart';
import 'geistlicher_impuls.dart';
import 'sakramente.dart';
import 'Oekumene.dart';
import 'tod_und_trauer.dart';
import 'konversion-wiederaufnahme.dart';

class GlaubePage extends StatefulWidget {
  @override
  _GlaubePageState createState() => _GlaubePageState();
}

class _GlaubePageState extends State<GlaubePage> {
  String _selectedOption = "Geistlicher Impuls"; // Default section

  // Mapping options to pages
  Widget _getSelectedPage(String option) {
    switch (option) {
      case "Geistlicher Impuls":
        return GeistlicherImpulsPage();
      case "Sakramente":
        return SakramentePage();
      case "Tod & Trauer":
        return TodUndTrauerPage();
      case "Ökumene":
        return OekumenePage();
      case "Konversion & Wiederaufnahme":
        return KonversionWiederaufnahmePage();
      default:
        return Center(
          child: Text(
            option,
            style: TextStyle(fontSize: 24),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Glaube"),
      ),
      drawer: Drawer(
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
      body: _getSelectedPage(_selectedOption),
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
