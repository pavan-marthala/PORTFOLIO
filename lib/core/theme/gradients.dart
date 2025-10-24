import 'package:flutter/material.dart';

@immutable
class AppGradients extends ThemeExtension<AppGradients> {
  // Primary gradients
  final LinearGradient primary;
  final LinearGradient primaryReverse;
  final LinearGradient primaryVertical;
  
  // Secondary gradients
  final LinearGradient secondary;
  final LinearGradient secondaryReverse;
  
  // Multi-color gradients (Purple -> Pink -> Amber)
  final LinearGradient rainbow;
  final LinearGradient rainbowReverse;
  final LinearGradient rainbowVertical;
  
  // Accent gradients
  final LinearGradient purplePink;
  final LinearGradient pinkPurple;
  final LinearGradient purpleBlue;
  final LinearGradient pinkAmber;
  
  // Subtle gradients for backgrounds
  final LinearGradient backgroundDark;
  final LinearGradient backgroundLight;
  final LinearGradient surface;
  
  // Overlay gradients
  final LinearGradient overlay;
  final LinearGradient overlayBottom;
  final LinearGradient overlayTop;
  
  // Shimmer gradient for loading effects
  final LinearGradient shimmer;

  const AppGradients({
    required this.primary,
    required this.primaryReverse,
    required this.primaryVertical,
    required this.secondary,
    required this.secondaryReverse,
    required this.rainbow,
    required this.rainbowReverse,
    required this.rainbowVertical,
    required this.purplePink,
    required this.pinkPurple,
    required this.purpleBlue,
    required this.pinkAmber,
    required this.backgroundDark,
    required this.backgroundLight,
    required this.surface,
    required this.overlay,
    required this.overlayBottom,
    required this.overlayTop,
    required this.shimmer,
  });

  @override
  ThemeExtension<AppGradients> copyWith({
    LinearGradient? primary,
    LinearGradient? primaryReverse,
    LinearGradient? primaryVertical,
    LinearGradient? secondary,
    LinearGradient? secondaryReverse,
    LinearGradient? rainbow,
    LinearGradient? rainbowReverse,
    LinearGradient? rainbowVertical,
    LinearGradient? purplePink,
    LinearGradient? pinkPurple,
    LinearGradient? purpleBlue,
    LinearGradient? pinkAmber,
    LinearGradient? backgroundDark,
    LinearGradient? backgroundLight,
    LinearGradient? surface,
    LinearGradient? overlay,
    LinearGradient? overlayBottom,
    LinearGradient? overlayTop,
    LinearGradient? shimmer,
  }) {
    return AppGradients(
      primary: primary ?? this.primary,
      primaryReverse: primaryReverse ?? this.primaryReverse,
      primaryVertical: primaryVertical ?? this.primaryVertical,
      secondary: secondary ?? this.secondary,
      secondaryReverse: secondaryReverse ?? this.secondaryReverse,
      rainbow: rainbow ?? this.rainbow,
      rainbowReverse: rainbowReverse ?? this.rainbowReverse,
      rainbowVertical: rainbowVertical ?? this.rainbowVertical,
      purplePink: purplePink ?? this.purplePink,
      pinkPurple: pinkPurple ?? this.pinkPurple,
      purpleBlue: purpleBlue ?? this.purpleBlue,
      pinkAmber: pinkAmber ?? this.pinkAmber,
      backgroundDark: backgroundDark ?? this.backgroundDark,
      backgroundLight: backgroundLight ?? this.backgroundLight,
      surface: surface ?? this.surface,
      overlay: overlay ?? this.overlay,
      overlayBottom: overlayBottom ?? this.overlayBottom,
      overlayTop: overlayTop ?? this.overlayTop,
      shimmer: shimmer ?? this.shimmer,
    );
  }

  @override
  ThemeExtension<AppGradients> lerp(
    covariant ThemeExtension<AppGradients>? other,
    double t,
  ) {
    if (other is! AppGradients) {
      return this;
    }

    return AppGradients(
      primary: LinearGradient.lerp(primary, other.primary, t)!,
      primaryReverse: LinearGradient.lerp(primaryReverse, other.primaryReverse, t)!,
      primaryVertical: LinearGradient.lerp(primaryVertical, other.primaryVertical, t)!,
      secondary: LinearGradient.lerp(secondary, other.secondary, t)!,
      secondaryReverse: LinearGradient.lerp(secondaryReverse, other.secondaryReverse, t)!,
      rainbow: LinearGradient.lerp(rainbow, other.rainbow, t)!,
      rainbowReverse: LinearGradient.lerp(rainbowReverse, other.rainbowReverse, t)!,
      rainbowVertical: LinearGradient.lerp(rainbowVertical, other.rainbowVertical, t)!,
      purplePink: LinearGradient.lerp(purplePink, other.purplePink, t)!,
      pinkPurple: LinearGradient.lerp(pinkPurple, other.pinkPurple, t)!,
      purpleBlue: LinearGradient.lerp(purpleBlue, other.purpleBlue, t)!,
      pinkAmber: LinearGradient.lerp(pinkAmber, other.pinkAmber, t)!,
      backgroundDark: LinearGradient.lerp(backgroundDark, other.backgroundDark, t)!,
      backgroundLight: LinearGradient.lerp(backgroundLight, other.backgroundLight, t)!,
      surface: LinearGradient.lerp(surface, other.surface, t)!,
      overlay: LinearGradient.lerp(overlay, other.overlay, t)!,
      overlayBottom: LinearGradient.lerp(overlayBottom, other.overlayBottom, t)!,
      overlayTop: LinearGradient.lerp(overlayTop, other.overlayTop, t)!,
      shimmer: LinearGradient.lerp(shimmer, other.shimmer, t)!,
    );
  }

  // Light theme gradients
  static AppGradients light = AppGradients(
    // Primary gradient (Purple)
    primary: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xFF8B5CF6), // Purple
        Color(0xFF7C3AED), // Deeper purple
      ],
    ),
    primaryReverse: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFF8B5CF6),
        Color(0xFF7C3AED),
      ],
    ),
    primaryVertical: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF8B5CF6),
        Color(0xFF7C3AED),
      ],
    ),

    // Secondary gradient (Pink)
    secondary: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xFFEC4899),
        Color(0xFFC026D3),
      ],
    ),
    secondaryReverse: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFFEC4899),
        Color(0xFFC026D3),
      ],
    ),

    // Rainbow gradient (Purple -> Pink -> Amber)
    rainbow: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xFFA78BFA), // Light purple
        Color(0xFFEC4899), // Pink
        Color(0xFFF59E0B), // Amber
      ],
      stops: [0.0, 0.5, 1.0],
    ),
    rainbowReverse: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color(0xFFA78BFA),
        Color(0xFFEC4899),
        Color(0xFFF59E0B),
      ],
      stops: [0.0, 0.5, 1.0],
    ),
    rainbowVertical: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFA78BFA),
        Color(0xFFEC4899),
        Color(0xFFF59E0B),
      ],
      stops: [0.0, 0.5, 1.0],
    ),

    // Accent combinations
    purplePink: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF8B5CF6), // Purple
        Color(0xFFEC4899), // Pink
      ],
    ),
    pinkPurple: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFEC4899), // Pink
        Color(0xFF8B5CF6), // Purple
      ],
    ),
    purpleBlue: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF7C3AED), // Purple
        Color(0xFF3B82F6), // Blue
      ],
    ),
    pinkAmber: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFEC4899), // Pink
        Color(0xFFF59E0B), // Amber
      ],
    ),

    // Background gradients
    backgroundDark: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF0F0F1E), // Deep dark
        Color(0xFF1A1A2E), // Lighter dark
      ],
    ),
    backgroundLight: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF1E1B4B), // Dark purple
        Color(0xFF000000), // Black
      ],
    ),
    surface: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF1E1E3F), // Dark surface
        Color(0xFF2A2A4F), // Lighter surface
      ],
    ),

    // Overlay gradients
    overlay: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF8B5CF6).withOpacity(0.05),
        Color(0xFFEC4899).withOpacity(0.05),
      ],
    ),
    overlayBottom: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.transparent,
        Color(0xFF000000).withOpacity(0.7),
      ],
    ),
    overlayTop: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        Colors.transparent,
        Color(0xFF000000).withOpacity(0.7),
      ],
    ),

    // Shimmer effect
    shimmer: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Colors.transparent,
        Colors.white.withOpacity(0.3),
        Colors.transparent,
      ],
      stops: [0.0, 0.5, 1.0],
    ),
  );

  // Dark theme (same as light for now)
  static AppGradients dark = light;
}

