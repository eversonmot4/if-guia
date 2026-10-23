import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

abstract final class AppTheme {
  static const systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: AppColors.primary,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: AppColors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
    ).copyWith(
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      surface: AppColors.surface,
      onSurface: AppColors.black,
    );
    final baseTheme = ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
    );
    // Open Sans depende dos arquivos locais e do registro no pubspec.yaml.
    final textTheme = baseTheme.textTheme
        .copyWith(
          headlineSmall: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          titleMedium: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          labelLarge: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        )
        .apply(
          bodyColor: AppColors.textPrimary,
          displayColor: AppColors.textPrimary,
        );

    return baseTheme.copyWith(
      scaffoldBackgroundColor: AppColors.background,
      textTheme: textTheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        systemOverlayStyle: systemUiOverlayStyle,
        elevation: 0,
      ),
    );
  }
}