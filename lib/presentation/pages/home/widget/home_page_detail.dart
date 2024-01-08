import 'package:flutter/material.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';

class HomeDetailPage extends StatelessWidget {
  final String title;
  final String img;
  final String writer;
  final String date;
  final String content;
  const HomeDetailPage(
      {super.key,
      required this.title,
      required this.img,
      required this.writer,
      required this.date,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
            height: 350,
          ),
          const SizedBox(width: 14),
          CustomText(
            text: title,
            minFontSize: 25,
            maxFontSize: 30,
            textPadding: EdgeInsets.all(14),
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
