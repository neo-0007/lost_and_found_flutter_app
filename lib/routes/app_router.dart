import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/login_screen.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/signup_screen.dart';
import 'package:lost_and_found_flutter_app/features/home/view/screens/home_screen.dart';
import 'package:lost_and_found_flutter_app/routes/route_constants.dart';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/signin',
    routes: [
      GoRoute(
        name: RouteConstants.signup,
        path: '/signup',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SignupScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.signin,
        path: '/signin',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginScreen(),
          );
        },
      ),
      GoRoute(
        name: RouteConstants.homePage,
        path: '/home-screen',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: HomeScreen(),
          );
        },
      )
    ],
    redirect: (context, state) async {
      bool isAuthenticated = false;

      if (state.fullPath != '/signup' && isAuthenticated) {
        return '/signin';
      }
      return null; // No redirection needed
    },
  );
}
