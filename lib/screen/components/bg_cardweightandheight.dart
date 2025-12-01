import 'package:flutter/material.dart';

class bgCardweightandheight extends StatelessWidget {
  String labetText;
int value;

  VoidCallback? onPlus;
  
  VoidCallback? onMinus;
  bgCardweightandheight({
    super.key,
    this.labetText = "Weight",
    this.value = 55,
    this.onPlus,
    this.onMinus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(labetText, style: TextStyle(fontSize: 20)),
        Text(
          "$value",
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onPlus,
              icon: Icon(Icons.add_circle, size: 35),
            ),
            IconButton(
              onPressed: onMinus,
              icon: Icon(Icons.remove_circle, size: 35),
            ),
          ],
        ),
      ],
    );
  }
}
