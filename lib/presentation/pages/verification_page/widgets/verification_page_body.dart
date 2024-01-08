import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threat_awareness/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';
import 'package:threat_awareness/presentation/pages/verification_page/constants/texts.dart';
import 'package:threat_awareness/presentation/pages/verification_page/widgets/loading_bar.dart';
import 'package:threat_awareness/presentation/pages/verification_page/widgets/resend_code_button.dart';
import 'package:threat_awareness/presentation/pages/verification_page/widgets/verification_confirm_button.dart';
import 'package:threat_awareness/presentation/pages/verification_page/widgets/verification_pin_field.dart';
import 'package:threat_awareness/presentation/pages/verification_page/widgets/wave_animation.dart';

class VerificationPageBody extends StatelessWidget {
  const VerificationPageBody({Key? key, required this.phoneNumber})
      : super(key: key);

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        return Stack(
          children: [
            state.isInProgress
                ? const Center(child: LoadingPopup())
                : Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 20,
                                    top: 5,
                                  ),
                                  child: Icon(
                                    Icons.check_rounded,
                                    size: 35,
                                    color: blackColor,
                                  ),
                                ),
                                CustomText(
                                  text: confirmationText,
                                  minFontSize: 30,
                                  maxFontSize: 35,
                                  textPadding: EdgeInsets.only(),
                                  textStyle: TextStyle(
                                    color: blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                              top: 25,
                              right: 25,
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.vibration,
                                  size: 50,
                                  color: blackColor,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: confirmationInfoText,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: blackColor,
                                              fontWeight: FontWeight.w500,
                                              height: 1.75,
                                            ),
                                          ),
                                          TextSpan(
                                            text: phoneNumber,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              color: blackColor,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const VerificationPinField(),
                          const ResendCodeButton(),
                          VerificationConfirmButton(state: state)
                        ],
                      ),
                    ),
                  )
          ],
        );
      },
    );
  }
}
