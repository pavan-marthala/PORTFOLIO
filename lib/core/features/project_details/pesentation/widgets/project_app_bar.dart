import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_outline_button.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';
import '../../../../routes/app_routes.dart';
import '../../../../theme/dimens.dart';

class ProjectAppBar extends StatelessWidget {
  const ProjectAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    final isMobile = context.widthPx < 600;

    final topPadding = MediaQuery.of(context).padding.top;
    final appBarHeight = (75.0) + topPadding;

    return Align(
      alignment: Alignment.topCenter,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            height: appBarHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: colors.surfaceDark.withValues(alpha: 0.3),
              border: Border(
                bottom: BorderSide(color: colors.border.withValues(alpha: 0.5)),
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1222),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(40),
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: colors.surfaceLight.withValues(alpha: 0.2),
                              border: Border.all(color: colors.border),
                              borderRadius: isMobile
                                  ? null
                                  : BorderRadius.circular(40),
                              shape: isMobile
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: isMobile ? 0 : 16,
                            ),
                            height: 42,
                            width: isMobile ? 42 : null,
                            alignment: Alignment.center,
                            child: !isMobile
                                ? Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.arrow_back,
                                        color: colors.primary,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Back to Portfolio',
                                        style: typography.titleMedium.copyWith(
                                          color: colors.primary,
                                        ),
                                      ),
                                    ],
                                  )
                                : Icon(
                                    Icons.arrow_back,
                                    color: colors.primary,
                                    size: 20,
                                  ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes().contact);
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: Dimens.largePadding + 6,
                              vertical: Dimens.smallPadding + 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: colors.primary),
                            ),
                            child: Text(
                              "Contact",
                              style: typography.titleMedium.copyWith(
                                color: colors.textPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
