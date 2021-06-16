import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/constants/theme.dart';

class CustomSnackbars {
  static void showSnackbar({
    required String title,
    required String message,
    required Snackbartype type,
  }) {
    final color = type == Snackbartype.Good
        ? AppTheme.green
        : type == Snackbartype.Warning
            ? AppTheme.orange
            : type == Snackbartype.Bad
                ? AppTheme.red
                : AppTheme.blue;

    Get.snackbar(
      title,
      message,
      titleText: Text(title, style: TextStyle(color: color)),
      messageText: Text(message, style: TextStyle(color: AppTheme.white)),
      duration: const Duration(seconds: 2),
      borderRadius: 0,
      leftBarIndicatorColor: color,
      backgroundColor: AppTheme.black.withOpacity(.7),
    );
  }
}

enum Snackbartype { Good, Bad, Info, Warning }
