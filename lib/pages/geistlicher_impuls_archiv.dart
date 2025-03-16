import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as html;
import 'package:url_launcher/url_launcher.dart'; // Import this to open links in browser

class GeistlicherImpulsArchivPage extends StatefulWidget {
  @override
  _GeistlicherImpulsArchivPageState createState() => _GeistlicherImpulsArchivPageState();
}

class _GeistlicherImpulsArchivPageState extends State<GeistlicherImpulsArchivPage> {
  List<Map<String, String>> archivEntries = [];

  @override
  void initState() {
    super.initState();
    fetchArchiv();
  }

  Future<void> fetchArchiv() async {
    final url = Uri.parse("https://pr-si-fr.de/geistlicher-impuls-archiv/");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var document = html.parse(response.body);

      // Find all <li> elements inside the archive list
      var listItems = document.querySelectorAll(".display-posts-listing li");

      List<Map<String, String>> fetchedEntries = [];

      for (var item in listItems) {
        var linkElement = item.querySelector("a"); // Get the <a> tag inside <li>
        if (linkElement != null) {
          String title = linkElement.text.trim(); // Get the text inside <a>
          String link = linkElement.attributes['href'] ?? ""; // Get href attribute

          fetchedEntries.add({"title": title, "link": link});
        }
      }

      setState(() {
        archivEntries = fetchedEntries;
      });
    } else {
      setState(() {
        archivEntries = [{"title": "Fehler beim Abrufen der Daten", "link": ""}];
      });
    }
  }

  // Function to open the link in the browser
  void openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication); // Open in an external browser
    } else {
      debugPrint("Could not launch $url");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Geistlicher Impuls Archiv")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: archivEntries.length,
          itemBuilder: (context, index) {
            var entry = archivEntries[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(entry["title"] ?? "Kein Titel"),
                trailing: IconButton(
                  icon: Icon(Icons.open_in_new),
                  onPressed: entry["link"]!.isNotEmpty ? () => openLink(entry["link"]!) : null,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
