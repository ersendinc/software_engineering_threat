// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i11;
import '../pages/bottomnav/bottom_nav_bar.dart' as _i1;
import '../pages/disaster/widget/disaster_detail.dart' as _i5;
import '../pages/disaster/widget/donate_page.dart' as _i7;
import '../pages/home/home_page.dart' as _i6;
import '../pages/home/widget/home_page_detail.dart' as _i4;
import '../pages/sign_in/sign_in_page.dart' as _i2;
import '../pages/splash/splash_page.dart' as _i8;
import '../pages/verification_page/sign_in_verification_page.dart' as _i3;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    BottomNavBar.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BottomNavBar(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    SignInVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<SignInVerificationRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignInVerificationPage(
          key: args.key,
          state: args.state,
        ),
      );
    },
    HomeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.HomeDetailPage(
          key: args.key,
          title: args.title,
          img: args.img,
          writer: args.writer,
          date: args.date,
          content: args.content,
        ),
      );
    },
    DisasterRouteDetail.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.DisasterPageDetail(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    DonateRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.DonatePage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SplashPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          BottomNavBar.name,
          path: '/bottom-nav-bar',
        ),
        _i9.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i9.RouteConfig(
          SignInVerificationRoute.name,
          path: '/sign-in-verification-page',
        ),
        _i9.RouteConfig(
          HomeDetailRoute.name,
          path: '/home-detail-page',
        ),
        _i9.RouteConfig(
          DisasterRouteDetail.name,
          path: '/disaster-page-detail',
        ),
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i9.RouteConfig(
          DonateRoute.name,
          path: '/donate-page',
        ),
        _i9.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.BottomNavBar]
class BottomNavBar extends _i9.PageRouteInfo<void> {
  const BottomNavBar()
      : super(
          BottomNavBar.name,
          path: '/bottom-nav-bar',
        );

  static const String name = 'BottomNavBar';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.SignInVerificationPage]
class SignInVerificationRoute
    extends _i9.PageRouteInfo<SignInVerificationRouteArgs> {
  SignInVerificationRoute({
    _i10.Key? key,
    required _i11.PhoneNumberSignInState state,
  }) : super(
          SignInVerificationRoute.name,
          path: '/sign-in-verification-page',
          args: SignInVerificationRouteArgs(
            key: key,
            state: state,
          ),
        );

  static const String name = 'SignInVerificationRoute';
}

class SignInVerificationRouteArgs {
  const SignInVerificationRouteArgs({
    this.key,
    required this.state,
  });

  final _i10.Key? key;

  final _i11.PhoneNumberSignInState state;

  @override
  String toString() {
    return 'SignInVerificationRouteArgs{key: $key, state: $state}';
  }
}

/// generated route for
/// [_i4.HomeDetailPage]
class HomeDetailRoute extends _i9.PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({
    _i10.Key? key,
    required String title,
    required String img,
    required String writer,
    required String date,
    required String content,
  }) : super(
          HomeDetailRoute.name,
          path: '/home-detail-page',
          args: HomeDetailRouteArgs(
            key: key,
            title: title,
            img: img,
            writer: writer,
            date: date,
            content: content,
          ),
        );

  static const String name = 'HomeDetailRoute';
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({
    this.key,
    required this.title,
    required this.img,
    required this.writer,
    required this.date,
    required this.content,
  });

  final _i10.Key? key;

  final String title;

  final String img;

  final String writer;

  final String date;

  final String content;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{key: $key, title: $title, img: $img, writer: $writer, date: $date, content: $content}';
  }
}

/// generated route for
/// [_i5.DisasterPageDetail]
class DisasterRouteDetail extends _i9.PageRouteInfo<void> {
  const DisasterRouteDetail()
      : super(
          DisasterRouteDetail.name,
          path: '/disaster-page-detail',
        );

  static const String name = 'DisasterRouteDetail';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.DonatePage]
class DonateRoute extends _i9.PageRouteInfo<void> {
  const DonateRoute()
      : super(
          DonateRoute.name,
          path: '/donate-page',
        );

  static const String name = 'DonateRoute';
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}
