import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BgCard extends StatelessWidget {
    Widget? child;
    
      GestureTapCallback? callbackFn;
   BgCard({
    super.key,
    this.child,
    this.callbackFn,
  });

  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: callbackFn,
      child: Container(
        width: 160,
        height: 180,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xff1d1f33),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: child,
      ),
    );
  }
}
