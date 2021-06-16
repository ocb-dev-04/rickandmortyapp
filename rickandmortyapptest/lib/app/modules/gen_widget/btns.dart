import 'package:flutter/material.dart';
import 'package:rickandmortyapptest/app/constants/theme.dart';

class BtnLw extends StatelessWidget {
  const BtnLw({
    required this.onPress,
    required this.text,
  });

  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(AppTheme.white),
        backgroundColor: MaterialStateProperty.all<Color>(AppTheme.blue),
      ),
      onPressed: () => onPress(),
      child: Text(text),
    );
  }
}
