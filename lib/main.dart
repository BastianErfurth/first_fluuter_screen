import 'package:first_fluuter_screen/icon_text_button.dart';
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
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(21.3))),
          backgroundColor: const Color.fromRGBO(49, 165, 180, 1),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(49, 165, 180, 1),
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
        body: Column(
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
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                spacing: 8,
                children: [
                  Icon(
                    Icons.description_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                  Text(
                    "Struktur",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
