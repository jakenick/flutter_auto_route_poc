import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_auto_route/screens/scaffold_base_screen.dart';
import 'package:flutter_auto_route/screens/settings/settings_screen.dart';
import 'package:flutter_auto_route/screens/settings/user_settings_screen.dart';
import 'package:flutter_auto_route/screens/user/mock_users.dart';
import 'package:flutter_auto_route/screens/user/some_user_screen.dart';
import 'package:flutter_auto_route/screens/user/user_details_screen.dart';
import 'package:flutter_auto_route/screens/user/user_list_screen.dart';
import 'package:flutter_auto_route/screens/whoops_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  // Parent routes list to be injected into the application for use
  List<AutoRoute> get routes => [
        bottomNav,
        ...userRoutes,
        ...settingRoutes,
        AutoRoute(path: '*', page: WhoopsRoute.page),
      ];

  // Setting/User Routes - Can add more here to unpack them into the parent routes and create separation either in file
  // or separate files
  List<AutoRoute> settingRoutes = [
    AutoRoute(
      path: RouteNames.userSettings,
      page: UserSettingsRoute.page,
    ),
  ];

  List<AutoRoute> userRoutes = [
    AutoRoute(
      path: RouteNames.userDetail,
      page: UserDetailsRoute.page,
    ),
  ];

  // Similar to above, but containing the bottom navigation routing structure
  AutoRoute bottomNav = AutoRoute(
    path: RouteNames.dashboard,
    page: ScaffoldBaseRoute.page,
    initial: true,
    children: [
      AutoRoute(
        path: '',
        page: DashboardRoute.page,
      ),
      AutoRoute(
        path: RouteNames.users,
        page: UserListRoute.page,
      ),
      AutoRoute(
        path: RouteNames.settings,
        page: SettingsRoute.page,
      ),
    ],
  );
}

// Setting a more controlled string for routes to use in building out the AutoRoutes
class RouteNames {
  static const String dashboard = '/dashboard';

  // Settings
  static const String settings = 'settings';
  static const String userSettings = '/:id';

  //Users
  static const String users = 'users';
  static const String userDetail = '/:user';
}

// TODO: Do Research on how deep linking would actually work
// https://docs.flutter.dev/ui/navigation/url-strategies#configuring-your-web-server - Configuration
// https://docs.flutter.dev/ui/navigation/deep-linking - Setup
