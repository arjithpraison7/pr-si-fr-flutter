import 'package:flutter/material.dart';

class KonversionWiederaufnahmePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Konversion & Wiederaufnahme")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/PRSF_Konversion_Wiederaufnahme.jpg', width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(
              "Konversion & Wiederaufnahme",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildSection(
              "Konversion — Übertritt",
              "Sie sind getauft — damit gehören Sie zur Gemeinschaft der Christen. Es kann Gründe geben, aus denen heraus orthodoxe oder evangelische Christen darum bitten, in die Katholische Kirche aufgenommen zu werden: z.B. Familie und Freunde, die in der Katholischen Kirche beheimatet sind, Freude an der katholischen Liturgie und den Sakramenten, Unterschiede in der Bewertung ethischer und gesellschaftlicher Fragen.\n\nWenn Sie den Wunsch verspüren katholisch zu werden, nehmen Sie Kontakt mit dem zuständigen Pfarrer oder einem Seelsorger Ihrer Wahl auf. In einem Gespräch können Sie erzählen, wie es zu Ihrem Wunsch, katholisch zu werden, gekommen ist, und gemeinsam überlegen, wie Ihr Weg in die katholische Kirche aussehen kann.",
            ),
            _buildSection(
              "Wiedereintritt",
              "Sie wurden katholisch getauft, sind aber in einer Phase Ihres Lebens aus der Katholischen Kirche ausgetreten. Wir freuen uns, wenn Sie – aus welchen Motiven auch immer – einen neuen Bezug zum Glauben und zur Kirche gefunden haben und den Weg zurück in die kirchliche Gemeinschaft suchen. Nehmen Sie Kontakt auf mit dem zuständigen Pfarrer oder einem Seelsorger oder einer Seelsorgerin Ihrer Wahl und besprechen Sie gemeinsam Ihr Anliegen und alle Fragen zum Wiedereintritt.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            content,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
