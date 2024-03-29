// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:threat_awareness/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/pages/sign_in/constants/texts.dart';

class PhoneNumberSignInSection extends StatefulWidget {
  const PhoneNumberSignInSection({Key? key, required this.state})
      : super(key: key);

  final PhoneNumberSignInState state;
  @override
  State<PhoneNumberSignInSection> createState() =>
      _PhoneNumberSignInSectionState(state);
}

class _PhoneNumberSignInSectionState extends State<PhoneNumberSignInSection> {
  final PhoneNumberSignInState state;
  final PhoneNumber initialPhone = PhoneNumber(isoCode: "TR");

  @override
  void didChangeDependencies() {
    context
        .read<PhoneNumberSignInCubit>()
        .phoneNumberChanged(phoneNumber: initialPhone.phoneNumber ?? "");
    super.didChangeDependencies();
  }

  _PhoneNumberSignInSectionState(this.state);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberSignInCubit, PhoneNumberSignInState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 50,
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: blackColor),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber phoneNumber) {
                  context.read<PhoneNumberSignInCubit>().phoneNumberChanged(
                        phoneNumber: phoneNumber.phoneNumber!,
                      );
                },
                onInputValidated: (bool isPhoneNumberInputValidated) {
                  context.read<PhoneNumberSignInCubit>().updateNextButtonStatus(
                      isPhoneNumberInputValidated: isPhoneNumberInputValidated);
                },
                inputDecoration: const InputDecoration(
                  hintText: phoneNumberText,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: customBlueColor,
                    ),
                  ),
                ),
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.DIALOG,
                ),
                autoValidateMode: AutovalidateMode.onUserInteraction,
                initialValue: initialPhone,
                formatInput: false,
                autoFocus: false,
                autoFocusSearch: false,
                inputBorder: const OutlineInputBorder(),
              ),
            ),
          ),
        );
      },
    );
  }
}
