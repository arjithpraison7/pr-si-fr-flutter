import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OekumenePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ökumene im Pastoralen Raum")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/PRSF_Oekumene.jpg', width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(
              "Ökumene im Pastoralen Raum",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "In Deutschland ist eine große Zahl christlicher Kirchen zu Hause. Im Glauben an den dreieinigen Gott sind katholische, evangelische und orthodoxe Christen miteinander verbunden. Deshalb halten sie untereinander Kontakt, führen theologische Dialoge und arbeiten auf verschiedene Weise zusammen.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              "Auch in unserem pastoralen Raum Siegen-Freudenberg gibt es unter den verschiedenen Konfessionen vielfältige Kontakte und Begegnungen. Die Zusammenarbeit mit den verschiedenen Kirchen und Gemeinden, besonders auch mit den Seelsorge- und Pfarrteams ist gut. Durch persönliche Treffen und gemeinsame ökumenische Gottesdienste haben sich die verschiedenen Kirchen schätzen gelernt.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              "Die Innenstadtgemeinden in Siegen treffen sich z.B. regelmäßig im ‚ökumenischen Arbeitskreis‘. Vertreter des Dekanates sind Mitglieder der Arbeitsgemeinschaft Christlicher Kirchen (ACK) auf Ortsebene. Vertreter in diesem Kreis kommen aus unserem Pastoralen Raum. Es sind zurzeit Herr Erhard Kretschmer und Pfarrer i.R. Wolfgang Winkelmann. Beide sind auch Mitglieder der Ökumene-Kommission des Erzbistums Paderborn. Diese berät den Erzbischof in ökumenischen Fragen. Viele Ehrenamtliche engagieren sich in der Ökumene hier vor Ort.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            Text(
              "Ökumene ist für die Zukunft der Kirchen ein wichtiger Pfeiler. Gemeinsam sollten wir uns im Glauben stärken und neue Wege in der Ökumene vor Ort gehen. Um zu überwinden, was die Kirchen noch trennt, sollten wir Schritte zur Einheit wagen – auch in Zukunft.",
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              "Ansprechpartner für die Ökumene im Pastoralen Raum",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Pfarrer i.R. Geistl. Rat Wolfgang Winkelmann"),
            InkWell(
              onTap: () => _launchPhone("02713307713"),
              child: Text(
                "Tel. 0271 3307713",
                style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Ökumenische Begegnungen",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Mit den evangelischen Nachbargemeinden pflegen wir gute ökumenische Kontakte. Hier einige Beispiele:"),
            SizedBox(height: 10),
            _buildBulletPoint("Ökumenische Bibelwoche"),
            _buildBulletPoint("Ökumenischer Gottesdienst am Pfingstmontag"),
            _buildBulletPoint("Ökumenischer Gottesdienst am Buß- und Bettag"),
            _buildBulletPoint("Ökumenisches Kinderfest"),
            _buildBulletPoint("Ökumenischer Martinszug"),
            _buildBulletPoint("Ökumenische Dienstgespräche"),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Expanded(child: Text(text, textAlign: TextAlign.justify)),
        ],
      ),
    );
  }

  void _launchPhone(String phoneNumber) async {
    final Uri uri = Uri(scheme: "tel", path: phoneNumber);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }
}
