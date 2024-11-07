import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lost_and_found_flutter_app/features/auth/services/auth_service.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/login_screen.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/screens/signup_screen.dart';
import 'package:lost_and_found_flutter_app/features/chat/view/screens/chat_screen.dart';
import 'package:lost_and_found_flutter_app/features/common/root_home_page.dart';
import 'package:lost_and_found_flutter_app/features/home/view/screens/home_screen.dart';
import 'package:lost_and_found_flutter_app/features/profile/view/screens/profile_screen.dart';
import 'package:lost_and_found_flutter_app/features/report/view/screens/report_screen.dart';
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
      GoRoute(path:'/report-page', pageBuilder: (context, state) {
        return MaterialPage(
          name: RouteConstants.reportPage,
          child:const ReportScreen(),
        );
      }),
            GoRoute(path:'/chat-page', pageBuilder: (context, state) {
        return MaterialPage(
          name: RouteConstants.chatPage,
          child:const ChatScreen(),
        );
      }),
            GoRoute(path:'/profile-page', pageBuilder: (context, state) {
        return MaterialPage(
          name: RouteConstants.profilePage,
          child:const ProfileScreen(),
        );
      }),      
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
