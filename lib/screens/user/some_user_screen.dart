import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SomeUserScreen extends StatelessWidget {
  const SomeUserScreen({super.key, required this.someString});

  final String someString;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
