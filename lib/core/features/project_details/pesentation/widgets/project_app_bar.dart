import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_outline_button.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

class ProjectAppBar extends StatelessWidget {
  const ProjectAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    final isMobile = context.widthPx < 600;
    return Align(
      alignment: Alignment.topCenter,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 35, sigmaY: 35),
          child: Container(
            height: 74,
            width: double.infinity,
            decoration: BoxDecoration(
              color: colors.surfaceDark.withValues(alpha: .3),
              border: Border(
                bottom: BorderSide(color: colors.border.withValues(alpha: 0.5)),
              ),
            ),
            child: SafeArea(
              child: Align(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1024, maxHeight: 74),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: isMobile
                                ? null
                                : BorderRadius.circular(40),
                            color: colors.surfaceLight.withValues(alpha: 0.2),
                            border: Border.all(color: colors.border),
                            shape: isMobile
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          height: 42,
                          alignment: Alignment.center,
                          child: !isMobile
                              ? Row(
                                  spacing: 8,
                                  children: [
                                    Icon(
                                      Icons.arrow_back,
                                      color: colors.primary,
                                      size: 20,
                                    ),
                                    Text(
                                      'Back to Portfolio',
                                      style: typography.titleMedium.copyWith(
                                        color: colors.primary,
                                      ),
                                    ),
                                  ],
                                )
                              : Icon(Icons.arrow_back, color: colors.primary),
                        ),
                      ),
                      GradientOutlineButton(
                        text: 'Contact',
                        outlineGradient: gradients.primary,
                        backgroundColor: colors.surfaceLight,
                        onPressed: () {},
                        showShadow: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
