import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:threat_awareness/application/auth/auth_setup/auth_setup_cubit.dart';
import 'package:threat_awareness/presentation/routes/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          if (mounted) {
            final bool isUserLoggedIn =
                context.read<AuthSetupCubit>().state.isUserLoggedIn;

            if (isUserLoggedIn == true) {
              AutoRouter.of(context).navigate(const BottomNavBar());
            } else {
              AutoRouter.of(context).navigate(const SignInRoute());
            }
          }
        },
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthSetupCubit, AuthSetupState>(
      listenWhen: (p, c) =>
          p.isUserCheckedFromAuthService != c.isUserCheckedFromAuthService &&
          c.isUserCheckedFromAuthService,
      listener: (context, state) {
        final bool isUserLoggedIn = state.isUserLoggedIn;

        if (isUserLoggedIn == true) {
          AutoRouter.of(context).navigate(const BottomNavBar());
        } else {
          AutoRouter.of(context).navigate(const SignInRoute());
        }
      },
      child: Scaffold(
        backgroundColor: Colors.brown[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 200, child: Image.asset("asset/images/app_logo.png")),
              const SizedBox(height: 20),
              const CircularProgressIndicator(
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
