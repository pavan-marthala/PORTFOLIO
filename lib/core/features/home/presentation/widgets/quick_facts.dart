import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/gradients.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';
import 'package:portfolio_pavan/core/utils/gradient_text.dart';

class QuickFacts extends StatelessWidget {
  const QuickFacts({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.largePadding,
        vertical: Dimens.mediumPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colors.surfaceDark,
        border: Border.all(color: colors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '⚡ Quick Facts',
            style: typography.headlineSmall.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: Dimens.mediumPadding),
          Container(
            height: 2,
            decoration: BoxDecoration(
              color: context.theme.appColors.surfaceLight,
              borderRadius: BorderRadius.circular(4),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  gradient: gradients.purplePink,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          SizedBox(height: Dimens.mediumPadding),
          _buildFact(
            typography,
            colors,
            gradients,
            title: 'TOTAL PROJECTS',
            value: '9+ Compleated',
          ),
          _buildFact(
            typography,
            colors,
            gradients,
            title: 'EXPERIENCE',
            value: '2+ Years',
          ),
          _buildFact(
            typography,
            colors,
            gradients,
            title: 'RESPOONSE TIME',
            value: '< 24 Hours',
          ),
          _buildFact(
            typography,
            colors,
            gradients,
            title: 'ACTIVE PROJECTS',
            value: '2 Ongoing',
            showDivider: false
          ),
        ],
      ),
    );
  }

  Column _buildFact(
    AppTypography typography,
    AppColors colors,
    AppGradients gradients, {
    required String title,
    required String value,
    bool showDivider = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Dimens.mediumPadding),
        Text(
          title,
          style: typography.bodyMedium.copyWith(
            color: colors.textSecondary,

            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: Dimens.smallPadding),
        GradientText(
          value,
          gradient: gradients.purplePink.withOpacity(0.8),
          style: typography.headlineSmall.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Dimens.mediumPadding),
        if (showDivider) Divider(color: colors.border.withValues(alpha: .4)),
      ],
    );
  }
}
