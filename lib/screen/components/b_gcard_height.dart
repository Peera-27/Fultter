import 'package:flutter/material.dart';

class BGcardHeight extends StatelessWidget {
  ValueChanged<double>? onchanged;

   BGcardHeight({
    super.key,
    this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Height"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [ 
            Text("67", style: TextStyle(fontSize: 70)),
            Text("cm"),
          ],
        ),
        Expanded(child:   Slider(
          value: 100,
          max: 220,
          min: 80,
          onChanged: onchanged,
        )),
      ],
    );
  }
}
