import 'package:flutter/material.dart';
import 'package:rickandmortyapptest/app/constants/theme.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.headset_mic_outlined,
              size: 100,
              color: AppTheme.white,
            ),
            const SizedBox(height: 30),
            Text(
              'Bienvenido',
              style: Theme.of(context).textTheme.headline4?.copyWith(color: AppTheme.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
