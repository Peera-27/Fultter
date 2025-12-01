import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BGcardHeight extends StatelessWidget {
  ValueChanged<double>? onchanged;

  final int value;

  BGcardHeight({super.key, this.onchanged, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text("Height"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              "$value",
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.w500),
            ),
            Text("cm"),
          ],
        ),
        Expanded(
          child: Slider(
            activeColor: Colors.deepPurple,
            value: value.toDouble(),
            max: 250,
            min: 50,
            onChanged: onchanged,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
