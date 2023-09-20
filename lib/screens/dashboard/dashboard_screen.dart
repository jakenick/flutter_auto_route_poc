import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/core/routes/app_router.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.navigateTo(const UserListRoute()),
              child: const Text('Users'),
            ),
            ElevatedButton(
              onPressed: () => context.router.pushNamed('hello'),
              child: const Text('Something Screen'),
            ),
            ElevatedButton(
              onPressed: () => context.navigateTo(const SettingsRoute()),
              child: const Text('Settings Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

// Dashboard
// - List of Areas
// - - Users, Something?,  Settings
//  Allow button navigation and bottom navigation to each section
