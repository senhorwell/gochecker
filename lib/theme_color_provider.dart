import 'dart:ui';

import 'package:flutter/material.dart';
import 'theme/app_colors.dart';

// ========================================================================== //

ThemeData getDarkTheme(BuildContext context) {
  return ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkScaffoldBackground,
    disabledColor: const Color(0xFF7F8081),
    secondaryHeaderColor: AppColors.secondary,
    canvasColor: AppColors.darkScaffoldBackground,
    textTheme: Theme.of(context)
        .textTheme
        .apply(
          bodyColor: AppColors.darkTextColor,
          displayColor: AppColors.darkTextColor,
        )
        .copyWith(
          titleSmall: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFeatures: [
                FontFeature.liningFigures(),
              ]),
          displayLarge:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          displayMedium:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          displaySmall:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          headlineMedium:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          headlineSmall:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          titleLarge:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          titleMedium:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          bodyLarge:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          bodyMedium:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          bodySmall:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          labelLarge:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          labelSmall:
              const TextStyle(color: AppColors.darkTextColor, fontFeatures: [
            FontFeature.liningFigures(),
          ]),
        ),
    buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
    iconTheme: const IconThemeData(color: AppColors.darkIconColor),
    sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.primary,
        inactiveTrackColor: AppColors.primary.withOpacity(0.5),
        thumbColor: AppColors.primary,
        disabledActiveTickMarkColor: AppColors.darkDisabledColor,
        disabledInactiveTickMarkColor: AppColors.darkDisabledColor,
        disabledThumbColor: AppColors.darkDisabledColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.darkIconColor,
    ),
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.0),
        toolbarTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.0),
        backgroundColor: Color(0xFF101010),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        )),
    dividerColor: AppColors.darkDividerColor,
    cardColor: AppColors.darkCardColor,
    dialogBackgroundColor: AppColors.darkDialogColor,
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2.0)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 1.0)),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkInputColor, width: 1.0)),
      labelStyle: TextStyle(color: AppColors.darkTextColor),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
        ),
        gapPadding: 2.0,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionHandleColor: AppColors.primary),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.primary,
      tertiary: AppColors.darkSuccessColor,
      error: AppColors.darkErrorColor,
    ),
  );
}

// ========================================================================== //

ThemeData getLightTheme(BuildContext context) {
  return ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightScaffoldBackground,
    disabledColor: const Color(0xFF7F8081),
    secondaryHeaderColor: AppColors.secondary,
    canvasColor: Colors.white,
    textTheme: Theme.of(context)
        .textTheme
        .apply(
          bodyColor: AppColors.lightTextColor,
          displayColor: AppColors.lightTextColor,
        )
        .copyWith(
          titleSmall: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFeatures: [
                FontFeature.liningFigures(),
              ]),
          displayLarge: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          displayMedium: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          displaySmall: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          headlineMedium: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          headlineSmall: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          titleLarge: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          titleMedium: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          bodyLarge: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          bodyMedium: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          bodySmall: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          labelLarge: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
          labelSmall: const TextStyle(fontFeatures: [
            FontFeature.liningFigures(),
          ]),
        ),
    buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
    iconTheme: const IconThemeData(color: AppColors.lightIconColor),
    sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.primary,
        inactiveTrackColor: AppColors.primary.withOpacity(0.5),
        thumbColor: AppColors.primary,
        disabledActiveTickMarkColor: AppColors.lightDisabledColor,
        disabledInactiveTickMarkColor: AppColors.lightDisabledColor,
        disabledThumbColor: AppColors.lightDisabledColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.lightIconColor,
    ),
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.0),
        toolbarTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.0),
        backgroundColor: AppColors.primary,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.white,
        )),
    dividerColor: AppColors.lightDividerColor,
    cardColor: AppColors.lightCardColor,
    dialogBackgroundColor: AppColors.lightDialogColor,
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2.0)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 1.0)),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightInputColor, width: 1.0)),
      labelStyle: TextStyle(color: AppColors.lightTextColor),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
        ),
        gapPadding: 2.0,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionHandleColor: AppColors.secondary),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.primary,
      tertiary: AppColors.lightSuccessColor,
      error: AppColors.lightErrorColor,
    ),
  );
}

// ========================================================================== //