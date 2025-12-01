import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BgCard extends StatelessWidget {
    Widget? child;
   BgCard({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: 160,
      height: 160,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xff1d1f33),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: child,
    );
  }
}
