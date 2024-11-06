import 'package:flutter/material.dart';
import 'package:lost_and_found_flutter_app/routes/app_router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _myAppRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _myAppRouter.router.routeInformationParser,
      routerDelegate: _myAppRouter.router.routerDelegate,
      routeInformationProvider: _myAppRouter.router.routeInformationProvider,
    );
  }
}
