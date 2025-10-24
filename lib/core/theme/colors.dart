import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  /// Primary colors
  final Color primary;
  final Color primaryShade1;
  final Color primaryShade2;
  final Color primaryShade3;
  final Color primaryShade4;
  final Color primaryShade5;
  final Color primaryTint1;
  final Color primaryTint2;
  final Color primaryTint3;
  final Color primaryTint4;
  final Color primaryTint5;

  /// Secondary colors
  final Color secondary;
  final Color secondaryShade1;
  final Color secondaryShade2;
  final Color secondaryShade3;
  final Color secondaryShade4;
  final Color secondaryShade5;
  final Color secondaryTint1;
  final Color secondaryTint2;
  final Color secondaryTint3;
  final Color secondaryTint4;
  final Color secondaryTint5;

  /// Neutral colors
  final Color white;
  final Color black;
  final Color background;
  final Color surfaceLight;
  final Color surfaceDark;
  
  /// Text colors
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  
  /// Border colors
  final Color border;
  final Color borderLight;
  
  /// Accent colors
  final Color accent1;
  final Color accent2;
  final Color accent3;
  
  /// Legacy colors (for backward compatibility)
  final Color gray;
  final Color gray2;
  final Color gray4;

  /// Graphic colors
  final Color brown;
  final Color brownLight;
  final Color brownExtraLight;

  /// Status colors
  final Color error;
  final Color errorLight;
  final Color errorExtraLight;
  final Color success;
  final Color successLight;
  final Color warning;
  final Color warningLight;

  const AppColors({
    /// Primary
    required this.primary,
    required this.primaryShade1,
    required this.primaryShade2,
    required this.primaryShade3,
    required this.primaryShade4,
    required this.primaryShade5,
    required this.primaryTint1,
    required this.primaryTint2,
    required this.primaryTint3,
    required this.primaryTint4,
    required this.primaryTint5,
    
    /// Secondary
    required this.secondary,
    required this.secondaryShade1,
    required this.secondaryShade2,
    required this.secondaryShade3,
    required this.secondaryShade4,
    required this.secondaryShade5,
    required this.secondaryTint1,
    required this.secondaryTint2,
    required this.secondaryTint3,
    required this.secondaryTint4,
    required this.secondaryTint5,
    
    /// Neutral
    required this.white,
    required this.black,
    required this.background,
    required this.surfaceLight,
    required this.surfaceDark,
    
    /// Text
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    
    /// Border
    required this.border,
    required this.borderLight,
    
    /// Accent
    required this.accent1,
    required this.accent2,
    required this.accent3,
    
    /// Legacy
    required this.gray,
    required this.gray2,
    required this.gray4,
    
    /// Graphic
    required this.brown,
    required this.brownLight,
    required this.brownExtraLight,
    
    /// Status
    required this.error,
    required this.errorLight,
    required this.errorExtraLight,
    required this.success,
    required this.successLight,
    required this.warning,
    required this.warningLight,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primary,
    Color? primaryShade1,
    Color? primaryShade2,
    Color? primaryShade3,
    Color? primaryShade4,
    Color? primaryShade5,
    Color? primaryTint1,
    Color? primaryTint2,
    Color? primaryTint3,
    Color? primaryTint4,
    Color? primaryTint5,
    Color? secondary,
    Color? secondaryShade1,
    Color? secondaryShade2,
    Color? secondaryShade3,
    Color? secondaryShade4,
    Color? secondaryShade5,
    Color? secondaryTint1,
    Color? secondaryTint2,
    Color? secondaryTint3,
    Color? secondaryTint4,
    Color? secondaryTint5,
    Color? white,
    Color? black,
    Color? background,
    Color? surfaceLight,
    Color? surfaceDark,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? border,
    Color? borderLight,
    Color? accent1,
    Color? accent2,
    Color? accent3,
    Color? gray,
    Color? gray2,
    Color? gray4,
    Color? brown,
    Color? brownLight,
    Color? brownExtraLight,
    Color? error,
    Color? errorLight,
    Color? errorExtraLight,
    Color? success,
    Color? successLight,
    Color? warning,
    Color? warningLight,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      primaryShade1: primaryShade1 ?? this.primaryShade1,
      primaryShade2: primaryShade2 ?? this.primaryShade2,
      primaryShade3: primaryShade3 ?? this.primaryShade3,
      primaryShade4: primaryShade4 ?? this.primaryShade4,
      primaryShade5: primaryShade5 ?? this.primaryShade5,
      primaryTint1: primaryTint1 ?? this.primaryTint1,
      primaryTint2: primaryTint2 ?? this.primaryTint2,
      primaryTint3: primaryTint3 ?? this.primaryTint3,
      primaryTint4: primaryTint4 ?? this.primaryTint4,
      primaryTint5: primaryTint5 ?? this.primaryTint5,
      secondary: secondary ?? this.secondary,
      secondaryShade1: secondaryShade1 ?? this.secondaryShade1,
      secondaryShade2: secondaryShade2 ?? this.secondaryShade2,
      secondaryShade3: secondaryShade3 ?? this.secondaryShade3,
      secondaryShade4: secondaryShade4 ?? this.secondaryShade4,
      secondaryShade5: secondaryShade5 ?? this.secondaryShade5,
      secondaryTint1: secondaryTint1 ?? this.secondaryTint1,
      secondaryTint2: secondaryTint2 ?? this.secondaryTint2,
      secondaryTint3: secondaryTint3 ?? this.secondaryTint3,
      secondaryTint4: secondaryTint4 ?? this.secondaryTint4,
      secondaryTint5: secondaryTint5 ?? this.secondaryTint5,
      white: white ?? this.white,
      black: black ?? this.black,
      background: background ?? this.background,
      surfaceLight: surfaceLight ?? this.surfaceLight,
      surfaceDark: surfaceDark ?? this.surfaceDark,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      border: border ?? this.border,
      borderLight: borderLight ?? this.borderLight,
      accent1: accent1 ?? this.accent1,
      accent2: accent2 ?? this.accent2,
      accent3: accent3 ?? this.accent3,
      gray: gray ?? this.gray,
      gray2: gray2 ?? this.gray2,
      gray4: gray4 ?? this.gray4,
      brown: brown ?? this.brown,
      brownLight: brownLight ?? this.brownLight,
      brownExtraLight: brownExtraLight ?? this.brownExtraLight,
      error: error ?? this.error,
      errorLight: errorLight ?? this.errorLight,
      errorExtraLight: errorExtraLight ?? this.errorExtraLight,
      success: success ?? this.success,
      successLight: successLight ?? this.successLight,
      warning: warning ?? this.warning,
      warningLight: warningLight ?? this.warningLight,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryShade1: Color.lerp(primaryShade1, other.primaryShade1, t)!,
      primaryShade2: Color.lerp(primaryShade2, other.primaryShade2, t)!,
      primaryShade3: Color.lerp(primaryShade3, other.primaryShade3, t)!,
      primaryShade4: Color.lerp(primaryShade4, other.primaryShade4, t)!,
      primaryShade5: Color.lerp(primaryShade5, other.primaryShade5, t)!,
      primaryTint1: Color.lerp(primaryTint1, other.primaryTint1, t)!,
      primaryTint2: Color.lerp(primaryTint2, other.primaryTint2, t)!,
      primaryTint3: Color.lerp(primaryTint3, other.primaryTint3, t)!,
      primaryTint4: Color.lerp(primaryTint4, other.primaryTint4, t)!,
      primaryTint5: Color.lerp(primaryTint5, other.primaryTint5, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryShade1: Color.lerp(secondaryShade1, other.secondaryShade1, t)!,
      secondaryShade2: Color.lerp(secondaryShade2, other.secondaryShade2, t)!,
      secondaryShade3: Color.lerp(secondaryShade3, other.secondaryShade3, t)!,
      secondaryShade4: Color.lerp(secondaryShade4, other.secondaryShade4, t)!,
      secondaryShade5: Color.lerp(secondaryShade5, other.secondaryShade5, t)!,
      secondaryTint1: Color.lerp(secondaryTint1, other.secondaryTint1, t)!,
      secondaryTint2: Color.lerp(secondaryTint2, other.secondaryTint2, t)!,
      secondaryTint3: Color.lerp(secondaryTint3, other.secondaryTint3, t)!,
      secondaryTint4: Color.lerp(secondaryTint4, other.secondaryTint4, t)!,
      secondaryTint5: Color.lerp(secondaryTint5, other.secondaryTint5, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      background: Color.lerp(background, other.background, t)!,
      surfaceLight: Color.lerp(surfaceLight, other.surfaceLight, t)!,
      surfaceDark: Color.lerp(surfaceDark, other.surfaceDark, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      border: Color.lerp(border, other.border, t)!,
      borderLight: Color.lerp(borderLight, other.borderLight, t)!,
      accent1: Color.lerp(accent1, other.accent1, t)!,
      accent2: Color.lerp(accent2, other.accent2, t)!,
      accent3: Color.lerp(accent3, other.accent3, t)!,
      gray: Color.lerp(gray, other.gray, t)!,
      gray2: Color.lerp(gray2, other.gray2, t)!,
      gray4: Color.lerp(gray4, other.gray4, t)!,
      brown: Color.lerp(brown, other.brown, t)!,
      brownLight: Color.lerp(brownLight, other.brownLight, t)!,
      brownExtraLight: Color.lerp(brownExtraLight, other.brownExtraLight, t)!,
      error: Color.lerp(error, other.error, t)!,
      errorLight: Color.lerp(errorLight, other.errorLight, t)!,
      errorExtraLight: Color.lerp(errorExtraLight, other.errorExtraLight, t)!,
      success: Color.lerp(success, other.success, t)!,
      successLight: Color.lerp(successLight, other.successLight, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      warningLight: Color.lerp(warningLight, other.warningLight, t)!,
    );
  }
}