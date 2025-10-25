import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';

import '../../../../theme/dimens.dart';
import '../../../home/data/models/project_model.dart';

class ProjectStats extends StatelessWidget {
  const ProjectStats({super.key, required this.stats});
  final List<Stats> stats;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colors.surfaceDark,
        border: Border.all(color: colors.border),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.largePadding,
        vertical: Dimens.extraLargePadding,
      ),
      child: Column(
        spacing: Dimens.largePadding,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "📊 Project Stats",
            style: typography.headlineSmall.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...stats.map(
            (stat) => _buildStats(
              typography,
              colors,
              title: stat.label ?? 'Not Specified',
              value: stat.value ?? 'Not Specified',
              showDivider: stat != stats.last,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStats(
    AppTypography typography,
    AppColors colors, {
    required String title,
    required String value,
    bool showDivider = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: typography.bodyMedium.copyWith(
                color: colors.textSecondary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value,
              style: typography.titleMedium.copyWith(
                color: colors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        if (showDivider) Divider(color: colors.border.withValues(alpha: .4)),
      ],
    );
  }
}
