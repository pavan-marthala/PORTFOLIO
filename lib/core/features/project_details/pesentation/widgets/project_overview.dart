import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

import '../../../../theme/dimens.dart';

class ProjectOverview extends StatelessWidget {
  const ProjectOverview({super.key, required this.overview});
  final String overview;
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
            "📋 Project Overview",
            style: typography.headlineMedium.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            overview,
            style: typography.titleMedium.copyWith(color: colors.textPrimary),
          ),
        ],
      ),
    );
  }
}
