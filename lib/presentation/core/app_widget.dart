import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_ddd_and_bloc/application/auth/auth_bloc.dart';
import 'package:learn_ddd_and_bloc/injection.dart';
import 'package:learn_ddd_and_bloc/presentation/sign_in/sign_in_page.dart';
import 'package:auto_route/auto_route.dart';
import '../routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Learn DDD and BloC',
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      // child: MaterialApp(
      //   title: 'Learn DDD and BloC',
      //   debugShowCheckedModeBanner: false,
      //   theme: ThemeData.light().copyWith(
      //     primaryColor: Colors.green[800],
      //     accentColor: Colors.blueAccent,
      //     inputDecorationTheme: InputDecorationTheme(
      //       border: OutlineInputBorder(
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //     ),
      //   ),
      //   // home: SignInPage(),
      // ),
    );
  }
}
