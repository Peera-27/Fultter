import 'package:flutter/material.dart';
import 'package:w3/screen/components/bg_card.dart';
import 'package:w3/screen/components/pink_button.dart';

class ResultScreen extends StatelessWidget {
  final double WeightInKg;
  final double heightInCm;
  const ResultScreen({super.key, required this.WeightInKg, required this.heightInCm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Calculator'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text("Result 😭", style: TextStyle(fontSize: 30))),
          Expanded(
            flex: 15,
            child: BgCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "Normal",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "5.0",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "You have a normal body weight. 😍❤️",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          pink_button(
            label: "Re-Calculate My Bmi",
            onPressed: () => {Navigator.pop(context)},
          ),
        ],
      ),
    );
  }
}
