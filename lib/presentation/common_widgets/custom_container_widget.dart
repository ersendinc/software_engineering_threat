import 'package:flutter/material.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';

class CustomContainerWidget extends StatelessWidget {
  final String title;
  final String img;
  final String writer;
  final String date;
  final String content;
  final VoidCallback onTap;
  const CustomContainerWidget(
      {super.key,
      required this.title,
      required this.img,
      required this.writer,
      required this.date,
      required this.content,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 180,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CustomText(
                          text: content,
                          minFontSize: 14,
                          maxFontSize: 18,
                          textPadding: EdgeInsets.all(6)),
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          size: 30,
                          color: Colors.white,
                        ))
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          CustomText(
              text: title,
              minFontSize: 22,
              textStyle: TextStyle(fontWeight: FontWeight.bold),
              maxFontSize: 30,
              textPadding: EdgeInsets.all(6)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    CustomText(
                        text: writer,
                        minFontSize: 14,
                        maxFontSize: 18,
                        textPadding: EdgeInsets.all(6)),
                  ],
                ),
                CustomText(
                    text: date,
                    minFontSize: 12,
                    maxFontSize: 18,
                    textPadding: EdgeInsets.all(6)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
