import 'package:flutter/material.dart';

class SupTopic extends StatelessWidget {
  final String topicText;
  final IconData icon;

  const SupTopic({
    super.key,
    required this.topicText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: Card(
        color: const Color.fromRGBO(49, 165, 180, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              Row(
                spacing: 8,
                children: [
                  Text(
                    topicText,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Icon(
                icon,
                color: Colors.white,
                size: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
