// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    ScaffoldBaseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScaffoldBaseScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
    SomeUserRoute.name: (routeData) {
      final args = routeData.argsAs<SomeUserRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SomeUserScreen(
          key: args.key,
          someString: args.someString,
        ),
      );
    },
    UserDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserDetailsScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    UserListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserListScreen(),
      );
    },
    UserSettingsRoute.name: (routeData) {
      final args = routeData.argsAs<UserSettingsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UserSettingsScreen(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    WhoopsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WhoopsScreen(),
      );
    },
  };
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScaffoldBaseScreen]
class ScaffoldBaseRoute extends PageRouteInfo<void> {
  const ScaffoldBaseRoute({List<PageRouteInfo>? children})
      : super(
          ScaffoldBaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScaffoldBaseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SomeUserScreen]
class SomeUserRoute extends PageRouteInfo<SomeUserRouteArgs> {
  SomeUserRoute({
    Key? key,
    required String someString,
    List<PageRouteInfo>? children,
  }) : super(
          SomeUserRoute.name,
          args: SomeUserRouteArgs(
            key: key,
            someString: someString,
          ),
          initialChildren: children,
        );

  static const String name = 'SomeUserRoute';

  static const PageInfo<SomeUserRouteArgs> page =
      PageInfo<SomeUserRouteArgs>(name);
}

class SomeUserRouteArgs {
  const SomeUserRouteArgs({
    this.key,
    required this.someString,
  });

  final Key? key;

  final String someString;

  @override
  String toString() {
    return 'SomeUserRouteArgs{key: $key, someString: $someString}';
  }
}

/// generated route for
/// [UserDetailsScreen]
class UserDetailsRoute extends PageRouteInfo<UserDetailsRouteArgs> {
  UserDetailsRoute({
    Key? key,
    required MockUser user,
    List<PageRouteInfo>? children,
  }) : super(
          UserDetailsRoute.name,
          args: UserDetailsRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserDetailsRoute';

  static const PageInfo<UserDetailsRouteArgs> page =
      PageInfo<UserDetailsRouteArgs>(name);
}

class UserDetailsRouteArgs {
  const UserDetailsRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final MockUser user;

  @override
  String toString() {
    return 'UserDetailsRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [UserListScreen]
class UserListRoute extends PageRouteInfo<void> {
  const UserListRoute({List<PageRouteInfo>? children})
      : super(
          UserListRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserSettingsScreen]
class UserSettingsRoute extends PageRouteInfo<UserSettingsRouteArgs> {
  UserSettingsRoute({
    Key? key,
    required String userId,
    List<PageRouteInfo>? children,
  }) : super(
          UserSettingsRoute.name,
          args: UserSettingsRouteArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'UserSettingsRoute';

  static const PageInfo<UserSettingsRouteArgs> page =
      PageInfo<UserSettingsRouteArgs>(name);
}

class UserSettingsRouteArgs {
  const UserSettingsRouteArgs({
    this.key,
    required this.userId,
  });

  final Key? key;

  final String userId;

  @override
  String toString() {
    return 'UserSettingsRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [WhoopsScreen]
class WhoopsRoute extends PageRouteInfo<void> {
  const WhoopsRoute({List<PageRouteInfo>? children})
      : super(
          WhoopsRoute.name,
          initialChildren: children,
        );

  static const String name = 'WhoopsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
