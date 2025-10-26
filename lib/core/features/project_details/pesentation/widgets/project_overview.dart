import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/hover_card.dart';

import '../../../../theme/dimens.dart';

class ProjectOverview extends StatelessWidget {
  const ProjectOverview({super.key, required this.overview});
  final String overview;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    return HoverCard(
      builder: (isHovered) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: colors.surfaceDark,
            border: Border.all(color: colors.border),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: colors.primary.withValues(alpha: 0.5),
                      blurRadius: 20,
                      offset: const Offset(0, 6),
                    ),
                  ]
                : [],
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
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              Text(
                overview,
                style: typography.titleMedium,
              ),
            ],
          ),
        );
      }
    );
  }
}
