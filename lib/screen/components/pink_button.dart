import 'package:flutter/material.dart';
import 'package:w3/screen/result_screen.dart';

class pink_button extends StatelessWidget {
  final String label;
  
  final VoidCallback onPressed;

   const pink_button({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffeb1555),
      margin: EdgeInsets.only(top: 10),
      height: 100,
      width: double.infinity,
      child: TextButton(onPressed: onPressed, child: Text(label,style: TextStyle(fontSize: 30),)),
    );
  }
}
