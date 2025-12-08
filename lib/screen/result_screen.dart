import 'package:flutter/material.dart';
import 'package:w3/screen/components/pink_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(   appBar: AppBar(
        title: Text('Bmi Calculator'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text("Result")),
          pink_button(label: "Re-Calculate My Bmi", onPressed: ()=>{
            Navigator.pop(context)
          }),
        ],
      ),
    );
  }
}