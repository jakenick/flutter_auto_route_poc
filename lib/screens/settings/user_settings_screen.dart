import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserSettingsScreen extends StatelessWidget {
  final String userId;

  const UserSettingsScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('UserSettings Page'),
            Text('This is your UserId $userId'),
            ElevatedButton(
              onPressed: () => context.router.pushNamed('some-broken-path'),
              child: const Text('More User Settings'),
            )
          ],
        ),
      ),
    );
  }
}
