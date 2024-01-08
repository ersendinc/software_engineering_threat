import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threat_awareness/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_app_bar.dart';
import 'package:threat_awareness/presentation/pages/sign_in/constants/texts.dart';
import 'package:threat_awareness/presentation/pages/sign_in/widget/sign_in_body.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        return state.isInProgress
            ? BlocListener<PhoneNumberSignInCubit, PhoneNumberSignInState>(
                listenWhen: (p, c) =>
                    p.failureMessageOption != c.failureMessageOption,
                listener: (context, state) {
                  state.failureMessageOption.fold(
                    () {},
                    (authFailure) {
                      BotToast.showText(
                        text: authFailure.when(
                          serverError: () => "Server Error",
                          tooManyRequests: () => "Too Many Requests",
                          deviceNotSupported: () => "Device Not Supported",
                          smsTimeout: () => "Sms Timeout",
                          sessionExpired: () => "Session Expired",
                          invalidVerificationCode: () =>
                              "Invalid Verification Code",
                        ),
                      );
                      context.read<PhoneNumberSignInCubit>().reset();
                      AutoRouter.of(context).popUntilRoot();
                    },
                  );
                },
                child: const Scaffold(
                  body: CircularProgressIndicator(
                    color: blackColor,
                  ),
                ),
              )
            : Scaffold(
                backgroundColor: whiteColor,
                appBar: CustomAppBar(
                  appBarTitleTextStyle: const TextStyle(
                    color: blackColor,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                  appBarLeading: Icons.vpn_key,
                  appBarIconColor: blackColor,
                  appBarBackgroundColor: whiteColor,
                  appBarTitle: signInText,
                  appBarAction: Icons.notifications,
                ),
                body: const SignInPageBody(),
              );
      },
    );
  }
}
