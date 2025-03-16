import 'package:flutter/material.dart';

class SakramentePage extends StatefulWidget {
  @override
  _SakramentePageState createState() => _SakramentePageState();
}

class _SakramentePageState extends State<SakramentePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sakramente")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/PRSF_Sakramente.jpg', // Update with your actual image path
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sakramente",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Sakramente sind Zeichen des Glaubens. Sie wollen uns zeigen: Gott will bei uns sein — unser ganzes Leben lang. In den Sakramenten zeigt Gott uns seine Liebe.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Die katholische Kirche kennt sieben Sakramente: die Taufe, das Sakrament der Versöhnung, die Eucharistie, die Firmung, die Ehe, die Priesterweihe und die Krankensalbung.",
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),
                  _buildSacramentTile("Taufe", "In der Taufe werden wir aufgenommen in die Gemeinschaft der Christen.\n\nGott tritt in der Taufe mit uns in Beziehung. „Du bist mein geliebter Sohn.“ (Mk 1,11)\n\nDiese Zusage Gottes an seinen Sohn Jesus bei seiner Taufe im Jordan gilt auch uns, allen Söhnen und Töchtern, allen Kindern und Erwachsenen, die getauft werden.\n\nBei Taufwunsch wenden Sie sich bitte an das Pfarrbüro zwecks Terminabsprache. Dort erhalten Sie alle notwendigen Informationen zu den Anmeldeformalitäten und Bescheinigungen.\n\nZur Vorbereitung laden wir Eltern und Paten von Kleinkindern zu einem Gesprächsnachmittag ein. Außerdem besucht Sie der taufende Priester oder Diakon. Auch Jugendliche oder Erwachsene, die getauft werden möchten, wenden sich an das Pfarrbüro."),
                  _buildSacramentTile("Das Sakrament der Versöhnung", "Im Sakrament der Versöhnung schenkt uns Gott seine ganze Liebe. In der Beichte können wir bekennen, was wir falsch gemacht haben und der Priester spricht uns im Auftrag Gottes Versöhnung zu.\n\nGott schenkt uns immer wieder einen neuen Anfang.\n\nWir laden ein, das Sakrament der Beichte zu empfangen: samstags, 15.00 Uhr in St. Joseph, Weidenau und 16.00 Uhr in St. Peter-und-Paul, Siegen. Außerdem stehen die Priester jederzeit nach Absprache zum Beichtgespräch zur Verfügung."),
                  _buildSacramentTile("Eucharistie", "Eucharistie heißt Danksagung. In der Feier der Heiligen Messe, der Eucharistie, danken wir für das große Geschenk, das Jesus uns gemacht hat. Wir denken an seinen Tod und seine Auferstehung und halten gemeinsam das Mahl, wie Jesus es mit seinen Jüngern getan hat. „Tut dies zu meinem Gedächtnis!“ (1 Kor 11,24)\n\nEr gibt sich selbst in den Gaben von Brot und Wein. Sie sind Zeichen für Jesus selbst, sie werden zu Leib und Blut Christi. In der Mitfeier der Heiligen Messe sind wir eingeladen, dieses Geschenk anzunehmen.\n\nKinder im Grundschulalter bereiten sich in der Regel im 8. oder 9. Lebensjahr auf die feierliche Erstkommunion vor. Eltern wenden sich bitte an das Pfarrbüro, um ihr Kind für die Vorbereitung anzumelden."),
                  _buildSacramentTile("Firmung", "„Sei besiegelt durch die Gabe Gottes, den Heiligen Geist.“\n\nGott schenkt in der Firmung seinen Heiligen Geist. Er besiegelt den Weg mit Jesus, der in der Taufe seinen Anfang genommen hat. Besiegelt, bekräftigt, ermutigt, beschenkt mit den Gaben des Heiligen Geistes: Weisheit, Einsicht, Rat, Stärke, Erkenntnis, Frömmigkeit und Gottesfurcht.\n\nIn der Firmung sagt der Firmbewerber, die Firmbewerberin ganz bewusst: Ja, ich will den Weg mit Gott weiter gehen."),
                  _buildSacramentTile("Ehe", "Gott möchte mit uns Menschen auf dem Weg sein, mit uns unser Leben teilen. Wenn zwei Menschen sich füreinander entscheiden, dann schenkt ihnen Gott im Sakrament der Ehe seine Zusage: „Ich teile das Leben mit euch. Ich segne euch und euren Bund.“\n\nVor Gottes Angesicht schließen die Brautleute den Bund fürs Leben und versprechen sich die Treue in guten, wie in schlechten Tagen.\n\nWenn zwei Menschen das Sakrament der Ehe eingehen wollen, wenden sie sich an das Pfarrbüro, um den Trautermin zu reservieren. Anschließend bereitet das Brautpaar in zwei bis drei Treffen mit dem Priester oder Diakon den Traugottesdienst vor. Hier wird auch das sogenannte Ehevorbereitungsprotokoll ausgefüllt."),
                  _buildSacramentTile("Priesterweihe", "Das Weihesakrament der römisch-katholischen Kirche ist in drei Stufen gegliedert. Die erste Weihestufe ist die Diakonenweihe, es folgt die Priesterweihe und für Bischöfe die Bischofsweihe. Die Kandidaten werden in einem mehrjährigen Theologie- und Philosophiestudium, Ausbildungszeiten im Priesterseminar und in Gemeinden auf ihre Aufgabe vorbereitet."),
                  _buildSacramentTile("Krankensalbung", "„Ist einer unter euch krank, dann rufe er die Ältesten der Gemeinde zu sich; sie sollen Gebete über ihn sprechen und ihn im Namen des Herrn mit Öl salben. Das gläubige Gebet wird den Kranken retten und der Herr wird ihn aufrichten; und wenn er Sünden begangen hat, werden sie ihm vergeben.“ (Jak 5,14f)\n\nSchon der Jakobusbrief spricht von der besonderen Sorge um die Kranken, die Jesus selber immer ein Anliegen war. Seine besondere Sorge galt den kranken Menschen, die Evangelien erzählen von vielen Beispielen."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSacramentTile(String title, String content) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            content,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}