import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lost_and_found_flutter_app/features/auth/services/auth_service.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/login_screen.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/signup_screen.dart';
import 'package:lost_and_found_flutter_app/features/common/root_home_page.dart';
import 'package:lost_and_found_flutter_app/features/home/view/screens/home_screen.dart';
import 'package:lost_and_found_flutter_app/routes/route_constants.dart';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/root-home-page',
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
      ),
      GoRoute(
        path: '/root-home-page',
        name: RouteConstants.rootHomePage,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: RootHomePage(),
          );
        },
      ),
    ],
    redirect: (context, state) async {
      String? token = await AuthService().getToken();
      bool isAuthenticated = token != null;

      if (isAuthenticated && state.fullPath == '/signin') {
        return '/home-screen';
      }

      if (!isAuthenticated && state.fullPath == '/home-screen') {
        return '/signin';
      }
      return null;
    },
  );
}
