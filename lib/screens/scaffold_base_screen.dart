import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/core/routes/app_router.dart';

@RoutePage()
class ScaffoldBaseScreen extends StatelessWidget {
  const ScaffoldBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        DashboardRoute(),
        UserListRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Users',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        );
      },
    );
  }
}

// return Scaffold(
//   appBar: AppBar(),
//   bottomNavigationBar: BottomNavigationBar(
//     items: const [
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         label: 'Dashboard',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         label: 'Users',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.settings),
//         label: 'Settings',
//       ),
//     ],
//   ),
//   body: const AutoRouter(),
// );

// return AutoTabsRouter.pageView(
//   routes: const [
//     DashboardRoute(),
//     UserListRoute(),
//     SettingsRoute(),
//   ],
//   builder: (context, child, _) {
//     final tabsRouter = AutoTabsRouter.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(context.topRoute.name),
//         leading: const AutoLeadingButton(),
//       ),
//       body: child,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: tabsRouter.activeIndex,
//         onTap: tabsRouter.setActiveIndex,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Dashboard',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Users',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//         ],
//       ),
//     );
//   },
// );
