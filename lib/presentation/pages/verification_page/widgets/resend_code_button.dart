import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threat_awareness/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';
import 'package:threat_awareness/presentation/pages/verification_page/constants/texts.dart';

class ResendCodeButton extends StatelessWidget {
  const ResendCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: InkWell(
        onTap: () {
          context.read<PhoneNumberSignInCubit>().signInWithPhoneNumber();
        },
        splashColor: transparentColor,
        highlightColor: transparentColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: const [
              CustomText(
                text: resendCodeText,
                minFontSize: 15,
                maxFontSize: 20,
                textStyle: TextStyle(
                  color: blackColor,
                ),
                textPadding: EdgeInsets.only(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: blackColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
