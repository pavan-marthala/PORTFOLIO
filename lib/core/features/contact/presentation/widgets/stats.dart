import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/gradients.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';
import 'package:portfolio_pavan/core/utils/gradient_text.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../../../../theme/dimens.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    final isMobile = context.widthPx < 600;
    final isTab = context.widthPx >= 600 && context.widthPx < 1024;
    final isDesktop = context.widthPx >= 1024;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: Dimens.extraLargePadding + 20,
      children: [
        buildStat(
          gradients,
          typography,
          colors,
          isMobile,
          isTab,
          isDesktop,
          stat: "<24h",
          label: "Response Time",
        ),
        buildStat(
          gradients,
          typography,
          colors,
          isMobile,
          isTab,
          isDesktop,
          stat: "98%",
          label: "Client Satisfaction",
        ),
        buildStat(
          gradients,
          typography,
          colors,
          isMobile,
          isTab,
          isDesktop,
          stat: "9+",
          label: "Projects Completed",
        ),
      ],
    );
  }

  Column buildStat(
    AppGradients gradients,
    AppTypography typography,
    AppColors colors,
    bool isMobile,
    bool isTab,
    bool isDesktop, {
    required String stat,
    required String label,
  }) {
    final statStyle = isDesktop
        ? typography.displayMedium
        : isTab
        ? typography.displaySmall
        : typography.titleLarge;
    final labelStyle = isDesktop
        ? typography.labelLarge
        : isTab
        ? typography.bodyLarge
        : typography.bodySmall;

    return Column(
      spacing: Dimens.smallPadding,
      children: [
        GradientText(
          stat,
          gradient: gradients.purplePink,
          style: statStyle.copyWith(fontWeight: FontWeight.w900),
        ),
        Text(
          label,
          style: labelStyle.copyWith(
            color: colors.textSecondary,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
