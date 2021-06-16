import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rickandmortyapptest/app/constants/theme.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/main_container.dart';

class LoadingCardLW extends StatelessWidget {
  const LoadingCardLW();

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            LinearProgressIndicator(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Cargando...",
              style: Theme.of(context).textTheme.headline6?.copyWith(color: AppTheme.black),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
