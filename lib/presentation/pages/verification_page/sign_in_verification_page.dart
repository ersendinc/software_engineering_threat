import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threat_awareness/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_app_bar.dart';
import 'package:threat_awareness/presentation/pages/verification_page/constants/texts.dart';
import 'package:threat_awareness/presentation/pages/verification_page/widgets/verification_page_body.dart';
import 'package:threat_awareness/presentation/routes/router.gr.dart';

class SignInVerificationPage extends StatelessWidget {
  const SignInVerificationPage({
    Key? key,
    required this.state,
  }) : super(key: key);

  final PhoneNumberSignInState state;

  @override
  Widget build(BuildContext context) {
    final phoneNumber = state.phoneNumber;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.green.shade300,
        appBar: CustomAppBar(
          leadingOnPressed: () {
            context.read<PhoneNumberSignInCubit>().reset();
            AutoRouter.of(context).popUntilRoot();
            AutoRouter.of(context).navigate(const SignInRoute());
          },
          appBarBackgroundColor: whiteColor,
          appBarTitle: verificationText,
          appBarAction: Icons.lock,
          appBarLeading: Icons.arrow_back_ios,
          appBarTitleTextStyle: const TextStyle(
            color: blackColor,
            fontWeight: FontWeight.w500,
          ),
          appBarIconColor: blackColor,
        ),
        body: VerificationPageBody(
          phoneNumber: phoneNumber,
        ),
      ),
    );
  }
}
