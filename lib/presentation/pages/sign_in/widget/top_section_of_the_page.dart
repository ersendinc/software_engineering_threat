import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';

List<Widget> topSectionOfThePage({required Size size}) {
  return [
    Container(
      width: size.width,
      height: size.height / 2,
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
          height: 200, child: Image.asset("asset/images/app_logo.png")),
    ),
  ];
}
