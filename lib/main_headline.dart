import 'package:flutter/material.dart';

class MainHeadline extends StatelessWidget {
  final IconData icon;
  final String headLineText;

  const MainHeadline({
    super.key,
    required this.icon,
    required this.headLineText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        spacing: 8,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 24,
          ),
          Text(
            headLineText,
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
