import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as html;
import 'geistlicher_impuls_archiv.dart';


class GeistlicherImpulsPage extends StatefulWidget {
  @override
  _GeistlicherImpulsPageState createState() => _GeistlicherImpulsPageState();
}

class _GeistlicherImpulsPageState extends State<GeistlicherImpulsPage> {
  String pastorImageUrl = "";
  String geistlicherImpulsText = "Lade Geistlicher Impuls...";
  String pastorSignature = "";

  @override
  void initState() {
    super.initState();
    fetchImpuls();
  }

  Future<void> fetchImpuls() async {
    final url = Uri.parse("https://pr-si-fr.de/geistlicher-impuls/");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var document = html.parse(response.body);

      // Extract pastor's image URL
      var imageElement = document.querySelector(".et_pb_image_0 img");
      if (imageElement != null) {
        pastorImageUrl = imageElement.attributes['src'] ?? "";
      }

      // Extract main text
      var textElement = document.querySelector(".et_pb_text_2");
      geistlicherImpulsText = textElement?.text.trim() ?? "Text nicht gefunden.";

      // Extract last instance of `.et_pb_text_3` (pastor's signature)
      var signatureElements = document.querySelectorAll(".et_pb_text_3");
      if (signatureElements.isNotEmpty) {
        pastorSignature = signatureElements.last.text.trim();
      }

      setState(() {});
    } else {
      setState(() {
        geistlicherImpulsText = "Fehler beim Abrufen der Webseite.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Geistlicher Impuls")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              pastorImageUrl.isNotEmpty
                  ? Image.network(pastorImageUrl, height: 150)
                  : CircularProgressIndicator(), // Show while loading
              SizedBox(height: 20),
              Text(
                geistlicherImpulsText,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              if (pastorSignature.isNotEmpty) ...[
                SizedBox(height: 20),
                Text(
                  pastorSignature,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
              ],
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GeistlicherImpulsArchivPage()),
                  );
                },
                child: Text("Archiv"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
