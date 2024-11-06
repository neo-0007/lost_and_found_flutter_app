import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/login_screen.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/signup_screen.dart';
import 'package:lost_and_found_flutter_app/routes/route_constants.dart';

class AppRouter {
  GoRouter router = GoRouter(
      initialLocation: '/signup',
      routes: [
        GoRoute(
          name: 'signup',
          path: '/signup',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SignupScreen(),
            );
          },
        ),
        GoRoute(
          name:'signin',
          path: '/signin',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: LoginScreen(),
            );
          },
        )
      ],
      redirect: (context, state) async {
        bool isAuthenticated = true;
        if (!isAuthenticated) {
          return RouteConstants.signin;
        }
        return null;
      });
}
