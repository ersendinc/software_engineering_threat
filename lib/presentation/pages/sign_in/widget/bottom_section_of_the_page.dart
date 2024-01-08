import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threat_awareness/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';
import 'package:threat_awareness/presentation/pages/sign_in/constants/texts.dart';
import 'package:threat_awareness/presentation/pages/sign_in/widget/phone_number_sign_in_section.dart';
import 'package:threat_awareness/presentation/routes/router.gr.dart';

class BottomSectionOfThePage extends StatelessWidget {
  const BottomSectionOfThePage({Key? key, required this.size})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              top: size.height / 4,
            ),
            child: SizedBox(
              height: size.height / 1.75,
              width: size.width,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                color: Colors.green.withOpacity(0.3),
                elevation: 20,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30),
                      child: Row(
                        children: const [
                          CustomText(
                            text: personalInformationText,
                            minFontSize: 20,
                            maxFontSize: 25,
                            textPadding: EdgeInsets.only(),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    PhoneNumberSignInSection(
                      state: state,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomText(
                      textStyle: TextStyle(color: blackColor.withOpacity(0.8)),
                      text: smsInformationMessage,
                      minFontSize: 15,
                      maxFontSize: 20,
                      textPadding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 45,
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    InkWell(
                      onTap: () {
                        if (state.isPhoneNumberInputValidated) {
                          context
                              .read<PhoneNumberSignInCubit>()
                              .signInWithPhoneNumber();
                          AutoRouter.of(context).navigate(
                            SignInVerificationRoute(state: state),
                          );
                        }
                      },
                      child: Container(
                        width: 270,
                        height: 55,
                        decoration: BoxDecoration(
                          color: customBlueColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: customIndigoColor.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 30,
                              // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const CustomText(
                              text: "Verify Phone",
                              minFontSize: 24,
                              maxFontSize: 28,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                              textPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              size: 30,
                              color: whiteColor,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
