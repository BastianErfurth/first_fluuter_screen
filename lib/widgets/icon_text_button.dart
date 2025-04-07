import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String buttonText;

  const IconTextButton({
    super.key,
    required this.icon,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 244, 242, 242),
          elevation: 4),
      onPressed: () {},
      child: Row(
        children: [
          Icon(icon, color: const Color.fromRGBO(49, 165, 180, 1)),
          Text(
            buttonText,
            style: TextStyle(color: const Color.fromRGBO(49, 165, 180, 1)),
          ),
        ],
      ),
    );
  }
}
