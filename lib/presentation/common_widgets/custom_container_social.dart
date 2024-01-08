import 'package:flutter/material.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';

class CustomContainerSocial extends StatelessWidget {
  final String title;
  final String img;
  final String date;
  final String content;
  const CustomContainerSocial(
      {super.key,
      required this.title,
      required this.img,
      required this.date,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
            width: 135,
            height: 100,
          ),
          const SizedBox(width: 14),
          SizedBox(
            height: 75,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CustomText(
                          text: content,
                          minFontSize: 14,
                          maxFontSize: 18,
                          textPadding: EdgeInsets.all(6)),
                    ),
                    const SizedBox(width: 40),
                    CustomText(
                        text: date,
                        minFontSize: 14,
                        maxFontSize: 18,
                        textPadding: EdgeInsets.all(6)),
                  ],
                ),
                const SizedBox(height: 3),
                Container(
                  width: 200,
                  child: CustomText(
                      text: title,
                      minFontSize: 14,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                      maxFontSize: 16,
                      textPadding: EdgeInsets.all(6)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
