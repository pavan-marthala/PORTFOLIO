import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/gradients.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';

class AppTheme {
  /// Light theme

  static final light = ThemeData(fontFamily: "Inter", useMaterial3: true)
      .copyWith(
        extensions: [_lightAppColors, AppTypography.light,AppGradients.light,],
        colorScheme: ColorScheme.fromSeed(
          seedColor: _lightAppColors.primary,
          brightness: Brightness.light,
          primary: _lightAppColors.primary,
          secondary: _lightAppColors.secondary,
          error: _lightAppColors.error,
          surface: _lightAppColors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: _lightAppColors.surfaceLight,
          titleTextStyle: AppTypography.light.titleLarge.copyWith(
            color: _lightAppColors.textPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: _lightAppColors.textPrimary),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: _lightAppColors.surfaceLight,
          elevation: 0,
          indicatorColor: _lightAppColors.primary.withValues(alpha: .1),
          labelTextStyle: WidgetStateProperty.resolveWith((
            Set<WidgetState> states,
          ) {
            final Color color = states.contains(WidgetState.selected)
                ? _lightAppColors.primary
                : _lightAppColors.textSecondary;
            return TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            );
          }),
        ),
        cardTheme: CardThemeData(
          color: _lightAppColors.surfaceLight,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: _lightAppColors.border, width: 1),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _lightAppColors.primary,
            foregroundColor: _lightAppColors.white,
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: AppTypography.light.button.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: _lightAppColors.primary,
            side: BorderSide(color: _lightAppColors.primary, width: 2),
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: AppTypography.light.button.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: _lightAppColors.primaryShade1,
          labelStyle: AppTypography.light.labelSmall.copyWith(
            color: _lightAppColors.primary,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.5,
          ),
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        scaffoldBackgroundColor: _lightAppColors.background,
      );

  static const _lightAppColors = AppColors(
    /// Primary - Purple gradient
    primary: Color(0xFF8B5CF6),

    /// Vibrant purple
    primaryShade1: Color(0xFFEDE9FE),

    /// Very light purple
    primaryShade2: Color(0xFFDDD6FE),

    /// Light purple
    primaryShade3: Color(0xFFC4B5FD),

    /// Medium light purple
    primaryShade4: Color(0xFFA78BFA),

    /// Medium purple
    primaryShade5: Color(0xFF9333EA),

    /// Rich purple
    primaryTint1: Color(0xFF7C3AED),

    /// Deep purple
    primaryTint2: Color(0xFF6D28D9),

    /// Darker purple
    primaryTint3: Color(0xFF5B21B6),

    /// Very dark purple
    primaryTint4: Color(0xFF4C1D95),

    /// Ultra dark purple
    primaryTint5: Color(0xFF3B0764),

    /// Deepest purple

    /// Secondary - Pink accent
    secondary: Color(0xFFEC4899),

    /// Hot pink
    secondaryShade1: Color(0xFFFCE7F3),

    /// Very light pink
    secondaryShade2: Color(0xFFFBCFE8),

    /// Light pink
    secondaryShade3: Color(0xFFF9A8D4),

    /// Medium light pink
    secondaryShade4: Color(0xFFF472B6),

    /// Medium pink
    secondaryShade5: Color(0xFFDB2777),

    /// Rich pink
    secondaryTint1: Color(0xFFC026D3),

    /// Deep pink
    secondaryTint2: Color(0xFFA21CAF),

    /// Darker pink
    secondaryTint3: Color(0xFF86198F),

    /// Very dark pink
    secondaryTint4: Color(0xFF701A75),

    /// Ultra dark pink
    secondaryTint5: Color(0xFF4A044E),

    /// Deepest pink

    /// Neutral - Dark theme inspired
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    background: Color(0xFF0A0A0F),

    /// Deep dark background
    surfaceLight: Color(0xFF1A1A2E),

    /// Elevated surface
    surfaceDark: Color(0xFF0F0F1E),

    /// Lower surface

    /// Text colors
    textPrimary: Color(0xFFF4F4F5),

    /// Almost white text
    textSecondary: Color(0xFF9CA3AF),

    /// Gray text
    textTertiary: Color(0xFF6B7280),

    /// Muted text

    /// Border and dividers
    border: Color(0xFF2D2D5F),

    /// Subtle border
    borderLight: Color(0xFF1E1E3F),

    /// Very subtle border

    /// Accent colors
    accent1: Color(0xFFF59E0B),

    /// Amber
    accent2: Color(0xFF3B82F6),

    /// Blue
    accent3: Color(0xFF10B981),

    /// Green

    /// Legacy grays (keeping for compatibility)
    gray: Color(0xFF27272A),
    gray2: Color(0xFF52525B),
    gray4: Color(0xFF71717A),

    /// Graphic
    brown: Color(0xFF82422B),
    brownLight: Color(0xFF944F32),
    brownExtraLight: Color(0xFFFFCC99),

    /// Status colors
    error: Color(0xFFEF4444),

    /// Red
    errorLight: Color(0xFFFCA5A5),

    /// Light red
    errorExtraLight: Color(0xFFFEE2E2),

    /// Very light red
    success: Color(0xFF10B981),

    /// Green
    successLight: Color(0xFF6EE7B7),

    /// Light green
    warning: Color(0xFFF59E0B),

    /// Amber
    warningLight: Color(0xFFFDE68A),

    /// Light amber
  );

  ///
  /// Dark theme
  ///
  static final dark = ThemeData(fontFamily: "Inter", useMaterial3: true)
      .copyWith(
        extensions: [_darkAppColors, AppTypography.dark,AppGradients.dark, ],
        colorScheme: ColorScheme.fromSeed(
          seedColor: _darkAppColors.primary,
          brightness: Brightness.dark,
          primary: _darkAppColors.primary,
          secondary: _darkAppColors.secondary,
          error: _darkAppColors.error,
          surface: _darkAppColors.surfaceLight,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: _darkAppColors.surfaceLight,
          titleTextStyle: AppTypography.dark.titleLarge.copyWith(
            color: _darkAppColors.textPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: _darkAppColors.textPrimary),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: _darkAppColors.surfaceLight,
          elevation: 0,
          indicatorColor: _darkAppColors.primary.withValues(alpha:0.2),
          labelTextStyle: WidgetStateProperty.resolveWith((
            Set<WidgetState> states,
          ) {
            final Color color = states.contains(WidgetState.selected)
                ? _darkAppColors.primary
                : _darkAppColors.textSecondary;
            return TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            );
          }),
        ),

        cardTheme: CardThemeData(
          color: _darkAppColors.surfaceLight,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: _darkAppColors.border, width: 1),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _darkAppColors.primary,
            foregroundColor: _darkAppColors.white,
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: AppTypography.dark.button.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: _darkAppColors.primary,
            side: BorderSide(color: _darkAppColors.primary, width: 2),
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: AppTypography.dark.button.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: _darkAppColors.primaryShade1.withValues(alpha:0.2),
          labelStyle: AppTypography.dark.labelSmall.copyWith(
            color: _darkAppColors.primary,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.5,
          ),
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        scaffoldBackgroundColor: _darkAppColors.background,
      );

  static const _darkAppColors = _lightAppColors;

  /// Using same colors for dark mode
}

extension ColorThemeExtension on ThemeData {
  //// Usage example: Theme.of(context).appColors;
  AppColors get appColors => extension<AppColors>()!;
}

extension FontThemeExtension on ThemeData {
  //// Usage example: Theme.of(context).appTypography;
  AppTypography get appTypography => extension<AppTypography>()!;
}

extension ThemeGetter on BuildContext {
  /// Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}
extension GradientThemeExtension on ThemeData {
  /// Usage example: Theme.of(context).appGradients;
  AppGradients get appGradients => extension<AppGradients>()!;
}
