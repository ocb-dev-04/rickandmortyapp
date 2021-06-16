import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: child,
    );
  }
}
