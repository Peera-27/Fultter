import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:w3/screen/components/bg_card.dart';
import 'package:w3/screen/components/bg_cardgender.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  var isMale = true;
  void toggleGender() {
    setState(() {
   isMale = !isMale;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Calculator'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: GestureDetector(child: BgCard(child: BgcardGender(ismale: true,isactive: isMale),callbackFn: toggleGender,))),
                Expanded(child: BgCard(child: BgcardGender(ismale: false,isactive: !isMale),callbackFn: toggleGender,))],
                      ),
          ),
          Row(children: [Expanded(child: BgCard())]),
          Expanded(
            child: Row(
              children: [
                Expanded(child: BgCard()),
                Expanded(child: BgCard()),
              ],
            ),
          ),
          Container(
            color: Color(0xffeb1555),
            margin: EdgeInsets.only(top: 10),
            height: 100,
          ),
        ],
      ),
    );
  }
}
