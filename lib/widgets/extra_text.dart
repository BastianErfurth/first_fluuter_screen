import 'package:flutter/material.dart';

class extraText extends StatelessWidget {
  final String text;
  const extraText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 32,
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 32,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
