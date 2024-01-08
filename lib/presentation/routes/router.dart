import 'package:auto_route/auto_route.dart';
import 'package:threat_awareness/presentation/pages/bottomnav/bottom_nav_bar.dart';
import 'package:threat_awareness/presentation/pages/disaster/widget/disaster_detail.dart';
import 'package:threat_awareness/presentation/pages/disaster/widget/donate_page.dart';
import 'package:threat_awareness/presentation/pages/home/home_page.dart';
import 'package:threat_awareness/presentation/pages/home/widget/home_page_detail.dart';
import 'package:threat_awareness/presentation/pages/sign_in/sign_in_page.dart';
import 'package:threat_awareness/presentation/pages/splash/splash_page.dart';
import 'package:threat_awareness/presentation/pages/verification_page/sign_in_verification_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: BottomNavBar,
    ),
    AutoRoute(page: SignInPage),
    AutoRoute(page: SignInVerificationPage),
    AutoRoute(
      page: DonatePage,
    ),
    AutoRoute(
      page: HomeDetailPage,
    ),
    AutoRoute(
      page: DisasterPageDetail,
    ),
    AutoRoute(
      page: HomePage,
    ),
    AutoRoute(page: DonatePage),
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
