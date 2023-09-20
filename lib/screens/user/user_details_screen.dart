import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/core/routes/app_router.dart';
import 'package:flutter_auto_route/screens/user/mock_users.dart';

@RoutePage()
class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key, required this.user});

  final MockUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.pushRoute(UserSettingsRoute(userId: user.id.toString())),
              child: const Text('User Settings'),
            ),
            const Text('User Details'),
            Text('Id: ${user.id}'),
            Text('Name: ${user.firstName} ${user.lastName}'),
            Text('Phone: ${user.phoneNumber}'),
            Text('Email: ${user.email}'),
          ],
        ),
      ),
    );
  }
}
