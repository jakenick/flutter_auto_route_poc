import 'package:flutter/material.dart';
import 'package:flutter_auto_route/core/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(
          // deepLinkBuilder: (deepLink) {
          //   if (deepLink.path.startsWith('/m/')) {
          //     return deepLink;
          //   } else {
          //     return const DeepLink([DashboardRoute()]);
          //     // return DeepLink.defaultPath;
          //   }
          // },
          ),
    );
  }
}
