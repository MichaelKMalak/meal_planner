import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

enum ThemeType {
  light,
}

class AppTheme {
  late Color mainTextColor;
  Color? inverseTextColor;
  static ThemeType defaultTheme = ThemeType.light;
  ThemeType? type;
  Color? bg1;
  Color? surface1;
  Color? accent1;
  Color? accent2;
  Color? greyWeak;
  Color? grey;
  Color? greyMedium;
  Color? greyStrong;
  Color? focus;
  Color? black;

  /// Default constructor
  AppTheme() {
    mainTextColor = AppColors.black;
    inverseTextColor = inverseTextColor ?? AppColors.white;
  }

  /// Creates an AppTheme from a provided Type.
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme()
          ..type = t
          ..bg1 = AppColors.white
          ..surface1 = AppColors.white
          ..accent1 = AppColors.accentColor
          ..greyWeak = const Color(0xfff2f2f2)
          ..grey = const Color.fromRGBO(240, 240, 240, 0.86)
          ..greyMedium = const Color(0xff3F4957)
          ..greyStrong = const Color(0xff333333)
          ..focus = AppColors.primary
          ..accent2 = AppColors.accent2Color;
      default:
        return AppTheme.fromType(defaultTheme);
    }
  }

  ThemeData get themeData {
    final theme = ThemeData.from(
      textTheme: GoogleFonts.bitterTextTheme(
        ThemeData.light().textTheme,
      ),
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: accent1!,
          primaryVariant: accent1!.shift(.1),
          secondary: accent1!,
          secondaryVariant: accent1!.shift(.1),
          background: bg1!,
          surface: surface1!,
          onBackground: mainTextColor,
          onSurface: mainTextColor,
          onError: mainTextColor,
          onPrimary: inverseTextColor!,
          onSecondary: inverseTextColor!,
          error: focus!),
    );

    theme.copyWith(
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: surface1,
        selectionHandleColor: Colors.transparent,
        selectionColor: surface1,
      ),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: AppColors.black, size: 32),
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: theme.textTheme.headline4,
        brightness: Brightness.light,
      ),
      buttonColor: accent1,
      highlightColor: accent1!.shift(.1),
      toggleableActiveColor: accent1,
    );

    return theme;
  }
}
