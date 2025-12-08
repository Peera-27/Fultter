import 'package:flutter/material.dart';
import 'package:w3/screen/components/b_gcard_height.dart';
import 'package:w3/screen/components/bg_card.dart';
import 'package:w3/screen/components/bg_cardgender.dart';
import 'package:w3/screen/components/bg_cardweightandheight.dart';
import 'package:w3/screen/components/pink_button.dart';
import 'package:w3/screen/result_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  var isMale = true;
  var inputheight = 65;
  var inputweight = 55;
  var inputage = 25;
  Null Function() toggleGender(bool formale) {
    return () {
      if (formale == isMale) return;
      setState(() {
        isMale = !isMale;
      });
    };
  }
  Null Function() UpdateWeight(int value) {
    return () {
      setState(() {
        inputweight += value;
      });
    };
  }
 
  Null Function() UpdateAge(int value) {
    return () {
      setState(() {
        inputage += value;
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
                Expanded(
                  child: GestureDetector(
                    child: BgCard(
                      callbackFn: toggleGender(true),
                      child: BgcardGender(ismale: true, isactive: isMale),
                    ),
                  ),
                ),
                Expanded(
                  child: BgCard(
                    callbackFn: toggleGender(false),
                    child: BgcardGender(ismale: false, isactive: !isMale),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: BgCard(
                  child: BGcardHeight(
                    value: inputheight,
                    onchanged: (value) => {
                      setState(() {
                        inputheight = value.toInt();
                      }),
                    },
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: BgCard(child: bgCardweightandheight(value: inputweight,onPlus: UpdateWeight(1),onMinus: UpdateWeight(-1),))),
                Expanded(child: BgCard(child: bgCardweightandheight(labetText: "Age", value: inputage,onPlus: UpdateAge(1),onMinus: UpdateAge(-1),),)),
              ],
            ),
          ),
          pink_button(label: "Calculate Bmi", onPressed: () => {
         Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResultScreen()))
          },),
        ],
      ),
    );
  }
}
