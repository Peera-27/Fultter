import 'package:flutter/material.dart';
import 'package:w3/screen/components/bg_card.dart';
import 'package:w3/screen/components/bg_cardgender.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bmi Calculator'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: BgCard(child: BgcardGender())),
                Expanded(child: BgCard(child: BgcardGender(ismale: false,isactive: false,),),),],
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
