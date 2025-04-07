import 'package:first_fluuter_screen/widgets/extra_text.dart';
import 'package:first_fluuter_screen/widgets/icon_text_button.dart';
import 'package:first_fluuter_screen/widgets/main_headline.dart';
import 'package:first_fluuter_screen/widgets/sup_topic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromRGBO(6, 87, 97, 1),
      appBar: AppBar(
        toolbarHeight: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(21.3))),
        backgroundColor: const Color.fromRGBO(49, 165, 180, 1),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 116, 196, 207),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 245, 241, 241),
        unselectedItemColor: const Color.fromARGB(255, 44, 114, 115),
        //fixedColor: Color.fromRGBO(49, 165, 180, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.euro),
            label: "Kosten",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_outlined),
            label: "Dokumente",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_month_rounded),
            label: "Kalender",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Einstellungen",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconTextButton(icon: Icons.close, buttonText: "Abbrechen"),
                  IconTextButton(icon: Icons.add, buttonText: "Hinzufügen"),
                ],
              ),
            ),
            MainHeadline(icon: Icons.description, headLineText: "Struktur"),
            SupTopic(topicText: "Kategorie", icon: Icons.arrow_drop_down),
            SupTopic(
                topicText: "Stichwort eingeben", icon: Icons.arrow_drop_down),
            SizedBox(height: 8),
            MainHeadline(
                icon: Icons.description, headLineText: "Vertragsparteien"),
            SupTopic(topicText: "Profil", icon: Icons.arrow_drop_down),
            SupTopic(topicText: "Vertragspartner", icon: Icons.arrow_drop_down),
            SupTopic(topicText: "Vertragnummer", icon: Icons.arrow_drop_down),
            SizedBox(height: 8),
            MainHeadline(icon: Icons.lock_clock, headLineText: "Laufzeiten"),
            SupTopic(topicText: "Vertragsstart", icon: Icons.arrow_drop_down),
            SupTopic(topicText: "Laufzeit", icon: Icons.arrow_drop_down),
            SupTopic(
                topicText: "Automaitische Verlängerung", icon: Icons.toggle_on),
            MainHeadline(icon: Icons.close, headLineText: "Kündigung"),
            SupTopic(topicText: "Kündigungsfrist", icon: Icons.arrow_drop_down),
            SupTopic(topicText: "Kündigungserinnerung", icon: Icons.toggle_on),
            SizedBox(height: 8),
            MainHeadline(icon: Icons.euro_rounded, headLineText: "Kosten"),
            SupTopic(topicText: "Kosten", icon: Icons.arrow_drop_down),
            SupTopic(
                topicText: "Intervall Abbuchung", icon: Icons.arrow_drop_down),
            SupTopic(
                topicText: "Zahlungsintervall", icon: Icons.arrow_drop_down),
            SizedBox(height: 8),
            MainHeadline(icon: Icons.add_outlined, headLineText: "Sonstiges"),
            SupTopic(
                topicText: "Zusatzinformationen", icon: Icons.add_outlined),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: const Color.fromRGBO(49, 165, 180, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Container(
                    child: Column(
                      children: [
                        extraText(text: "Zusatzinfo 1"),
                        extraText(text: "Zusatztext 2"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconTextButton(
                      icon: Icons.upload, buttonText: "Dokument hochladen"),
                  IconTextButton(icon: Icons.save, buttonText: "Speichern"),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
