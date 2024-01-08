import 'package:dartz/dartz_streaming.dart';
import 'package:flutter/material.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';

class LoadingPopup extends StatefulWidget {
  const LoadingPopup({Key? key}) : super(key: key);

  @override
  State<LoadingPopup> createState() => _LoadingPopupState();
}

class _LoadingPopupState extends State<LoadingPopup> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: SizedBox(
        height: 200,
        width: 100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CustomText(
                text: "Loading...",
                minFontSize: 18,
                maxFontSize: 30,
                textPadding: EdgeInsets.all(6),
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(color: blackColor),
            ],
          ),
        ),
      ),
    );
  }

  Image _imageRoute() {
    return Image.asset(
      "asset/images/app_logo.png",
      fit: BoxFit.cover,
    );
  }
}
