import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/core/routes/app_router.dart';

@RoutePage()
class WhoopsScreen extends StatelessWidget {
  const WhoopsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('Looks like the page you are looking for could not be found'),
            ElevatedButton(
              // onPressed: () => context.router.back(),
              // onPressed: () => context.navigateTo(UserSettingsRoute(userId: '11')),
              // onPressed: () => context.router.popUntilRoot(),
              onPressed: () => context.navigateTo(const DashboardRoute()),
              child: const Text('Back to Dashboard'),
            )
          ],
        ),
      ),
    );
  }
}
