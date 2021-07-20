import 'package:auto_route/auto_route.dart';
import 'package:learn_ddd_and_bloc/application/auth/auth_bloc.dart';
import 'package:learn_ddd_and_bloc/presentation/sign_in/sign_in_page.dart';
import 'package:learn_ddd_and_bloc/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
  ],
)
class $AppRouter {
  // SignInPage? signInPage;
  // SplashPage? splashPage;
}
