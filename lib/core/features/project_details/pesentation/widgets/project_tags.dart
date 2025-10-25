import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

class ProjectTags extends StatelessWidget {
  const ProjectTags({super.key, required this.tags});
  final List<String> tags;
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
            "🏷️ Project Tags",
            style: typography.headlineSmall.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Wrap(
            spacing: Dimens.mediumPadding,
            runSpacing: Dimens.mediumPadding,
            children: tags
                .map(
                  (tag) => Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimens.largePadding,
                      vertical: Dimens.smallPadding+4,
                    ),
                    decoration: BoxDecoration(
                      color: colors.primary.withValues(alpha: .2),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: colors.primary.withValues(alpha: .5)),
                    ),
                    child: Text(
                      tag,
                      style: typography.bodyMedium.copyWith(
                        color: colors.primaryShade1,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
