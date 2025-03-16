import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TodUndTrauerPage extends StatelessWidget {
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tod und Trauer")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add an image at the top
            ClipRRect(
              borderRadius: BorderRadius.circular(12), // Rounded corners
              child: Image.asset(
                'assets/images/PRSF_Caritative_Einrichtungen.jpg', // Change this to your image path
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover, // Ensures the image scales properly
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Tod und Trauer",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Beisetzung",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Nach dem Tod eines Menschen müssen Sie als Angehörige oder Angehöriger trotz Ihrer Trauer Entscheidungen treffen. "
              "Sobald Sie ein Bestattungsunternehmen beauftragt haben, wird der Bestatter Ihnen viele Aufgaben weitestgehend abnehmen. "
              "Dazu gehören anstehende Behördengänge, die Organisation der Beisetzung und die Information Ihrer Kirchengemeinde über Ihren Trauerfall.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              "Ein Priester, ein Diakon, eine Gemeindereferentin Ihrer zuständigen Pfarrei oder eine ehrenamtliche Person, die durch den Bischof mit dem Begräbnisdienst beauftragt wurde, "
              "wird ein Kondolenzgespräch mit Ihnen vereinbaren, um die Einzelheiten der Trauerfeier mit Ihnen zu besprechen. "
              "Erzählen Sie von der oder dem Verstorbenen, damit die Traueransprache persönliche und vertraute Elemente enthält. "
              "Auch Liederwünsche, musikalische Begleitung oder Ihre eigenen Texte können Sie besprechen.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              "Vor oder nach einer Erdbestattung oder Urnenbeisetzung auf einem der Friedhöfe, in einem Friedwald oder Bestattungswald oder einer Urnenbestattung im Kolumbarium "
              "wird in der Kirche ein Seelenamt (Requiem) gefeiert. Falls keine Messe gewünscht wird, findet eine Trauerfeier in einer Friedhofskapelle statt.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Trauer und Trauerarbeit",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Trauer ist eine ganz normale Reaktion. Angesichts des Verlustes und der Trauer um einen lieben Menschen fühlt sich unsere Gesellschaft aber oft hilflos. "
              "Bekannte und Freunde ziehen sich zurück, weil sie unsicher im Umgang mit Trauernden sind.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              "Der trauernde Mensch fühlt sich verlassen, allein und unverstanden und weiß seine Gefühle selbst nicht einzuordnen. "
              "Da ist der große Verlust, ein Schmerz, der alles überwältigt. Und doch geht das Leben weiter, auch wenn einem die Trauer immer wieder sehr nahe kommt.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              "Trauerarbeit ist ein individueller Weg. Wenn Sie in Ihrer Trauer Hilfe suchen, sind Sie herzlich eingeladen:",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              "- zu Gesprächen mit Seelsorgerinnen und Seelsorgern,\n"
              "- zu Gedenkgottesdiensten,\n"
              "- zu Trauergruppen.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Wenden Sie sich gerne an",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () => _launchURL("tel:027177006233"),
              child: Text("Tel.: 0271 77006233", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
            ),
            GestureDetector(
              onTap: () => _launchURL("mailto:Trauerpastoral.kolumbarium@pr-si-fr.de"),
              child: Text("Mail: Trauerpastoral.kolumbarium@pr-si-fr.de", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
            ),
            GestureDetector(
              onTap: () => _launchURL("https://www.kolumbariumskirche-siegen.de"),
              child: Text("www.kolumbariumskirche-siegen.de", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () => _launchURL("https://www.caritas-siegen.de/angebote/menschen-am-lebensende/#Trauerbegleitung"),
              child: Text("Caritasverband Siegen, Trauerbegleitung — Trauercafé", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () => _launchURL("tel:02712360267"),
              child: Text("Tel.: 0271 23602–67", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
            ),
            GestureDetector(
              onTap: () => _launchURL("tel:016099494056"),
              child: Text("Tel.: 0160 99494056", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
            ),
            GestureDetector(
              onTap: () => _launchURL("mailto:koordination-hospizarbeit@caritas-siegen.de"),
              child: Text("Mail: koordination-hospizarbeit@caritas-siegen.de", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
            ),
          ],
        ),
      ),
    );
  }
}
