
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BgcardGender extends StatelessWidget {
  bool ismale;
bool isactive;
  double? iconsize;
  double? fontsize;

  BgcardGender({
    super.key,
    this.ismale = true,
    this.isactive = true,
    this.iconsize = 60,
    this.fontsize = 18,
  });

  @override
  Widget build(BuildContext context) {
    String labeltext = ismale ? "Male" : "Female";
IconData icon = ismale ? Icons.male : Icons.female;
Color iconcolor = isactive ? Color(0xffffffff) : Color(0xff656161);
Color fontColor = iconcolor;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: iconsize, color: iconcolor),
        Text(
          labeltext,
          style: TextStyle(fontSize: fontsize, color: iconcolor),
        ),
      ],
    );
  }
}
