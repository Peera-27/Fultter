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
 Null Function()  toggleGender(bool formale) {
  return (){
    if(formale == isMale) return;
      setState(() {
   isMale = !isMale;
      
    });
  };
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
                Expanded(child: GestureDetector(child: BgCard(callbackFn: toggleGender(true),child: BgcardGender(ismale: true,isactive: isMale),))),
                Expanded(child: BgCard(callbackFn: toggleGender(false),child: BgcardGender(ismale: false,isactive: !isMale),))],
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
