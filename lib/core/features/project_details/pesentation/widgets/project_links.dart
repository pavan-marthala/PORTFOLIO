import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../theme/dimens.dart';

class ProjectShareLinks extends StatelessWidget {
  const ProjectShareLinks({super.key, required this.links});
  final List<ProjectLinks> links;
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
            "🔗 Project Links",
            style: typography.headlineSmall.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...(links
              .map(
                (link) => InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(link.link!));
                  },
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimens.largePadding,
                      vertical: Dimens.mediumPadding,
                    ),
                    decoration: BoxDecoration(
                      color: colors.primary.withValues(alpha: .2),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: colors.primary.withValues(alpha: .5),
                      ),
                    ),
                    child: Row(
                      spacing: Dimens.mediumPadding,
                      children: [
                        Text(
                          String.fromCharCode(
                            int.parse(link.uniCode!, radix: 16),
                          ),
                          style: typography.bodyLarge,
                        ),

                        Text(
                          link.title ?? "Not Specified",
                          style: typography.titleMedium.copyWith(
                            color: colors.primaryShade1,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList()),
        ],
      ),
    );
  }
}
