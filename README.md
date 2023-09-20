# flutter_auto_route_poc

This is a small proof of concept using a flutter plugin for their navigator 2.0 auto_route

## Getting Started

There should be no additional needs to run this example app. Simple run pub get if needed and run the application.

[Flutter Auto Route](https://pub.dev/packages/auto_route)

[Flutter Navigator 2.0](https://docs.flutter.dev/ui/navigation)

This is mainly to take advantage of the MaterialApp.router() constructor and not needing to build out our own plugin 
for deep links


Bottom Navigation - 
- You'll notice the bottom navigation should highlight and change the screen to the corresponding page either 
  Dashboard, Users, or Settings
- You can also select Users and Settings Screen from the dashboard buttons and the state of the bottom navigation is 
  updated

404/Whoops Screen - All of these are currently navigating you back to dashboard other return options are available
- In a few places I've implemented a 404 page listed below
- Dashboard -> Something Screen should 404 and return you to the dashboard
- Users > User Details -> User Settings -> More User Settings should 404 and return you to dashboard
- Settings -> Button -> More User Settings should 404 and return you to dashboard

Users -
- Users navigates you to a list of 4 mocked user tiles
- Each user tile will pass a MockUser to the user details page through the navigator
- User Settings will accept a user Id parameter to navigate further.
- And finally more user settings will 404 as stated above

Settings - 
- Settings navigates you to a simple button
- Button passes a hard coded user Id to take you to the user settings screen for user `11`
- More user settings will 404 as stated above