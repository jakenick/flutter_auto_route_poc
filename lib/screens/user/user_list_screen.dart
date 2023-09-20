import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/core/routes/app_router.dart';
import 'package:flutter_auto_route/screens/user/mock_users.dart';

@RoutePage()
class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MockUser> users = generateMockUsers(4);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final user = users[index];

                  return ListTile(
                      title: Text(user.firstName),
                      subtitle: Text(user.lastName),
                      onTap: () => context.navigateTo(UserDetailsRoute(user: user)));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
