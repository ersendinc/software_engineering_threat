import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:threat_awareness/application/auth/auth_setup/auth_setup_cubit.dart';
import 'package:threat_awareness/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:threat_awareness/application/connectivity/connectivity_cubit.dart';
import 'package:threat_awareness/injection.dart';
import 'dart:io';

import 'package:threat_awareness/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = getIt<AppRouter>();
    final botToastBuilder = BotToastInit();
    final BotToastNavigatorObserver botToastNavigatorObserver =
        BotToastNavigatorObserver();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) => getIt<AuthSetupCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<PhoneNumberSignInCubit>(),
          ),
          BlocProvider(
            lazy: false,
            create: (context) => getIt<ConnectivityCubit>(),
          ),
        ],
        child: Listener(
          onPointerUp: (_) {
            if (Platform.isIOS) {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus &&
                  currentFocus.focusedChild != null) {
                FocusManager.instance.primaryFocus!.unfocus();
              }
            }
          },
          child: BlocListener<ConnectivityCubit, ConnectivityState>(
            listener: (context, state) {
              if (!state.isUserConnectedToTheInternet) {
                BotToast.showText(
                  text: "Connection Failed!",
                  duration: const Duration(days: 365),
                );
              } else if (state.isUserConnectedToTheInternet) {
                BotToast.cleanAll();
              }
            },
            child: ScreenUtilInit(
              minTextAdapt: true,
              splitScreenMode: true,
              designSize: const Size(428, 926),
              builder: (context, child) {
                return MaterialApp.router(
                  title: 'Phone Number Sign-In',
                  debugShowCheckedModeBanner: false,
                  routeInformationParser: appRouter.defaultRouteParser(),
                  routerDelegate: appRouter.delegate(
                    navigatorObservers: () => [
                      botToastNavigatorObserver,
                    ],
                  ),
                  builder: (context, child) {
                    return botToastBuilder(context, child);
                  },
                );
              },
            ),
          ),
        ));
  }
}
