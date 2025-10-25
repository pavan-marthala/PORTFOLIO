import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/gradients.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../../../../theme/dimens.dart';

class ProjectFeatures extends StatelessWidget {
  const ProjectFeatures({super.key, required this.features});
  final List<Features> features;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    final gradients = context.theme.appGradients;
    final isMobile = context.widthPx < 600;

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
            "✨ Key Features",
            style: typography.headlineMedium.copyWith(
              color: colors.textPrimary,
              fontSize: isMobile ? 22 : null,
              fontWeight: FontWeight.bold,
            ),
          ),
          MasonryGridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: isMobile ? 1 : 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            itemBuilder: (context, index) {
              var item = features[index];
              return _buildFeature(
                typography,
                colors,
                gradients,
                isMobile,
                title: item.title ?? "",
                value: item.label ?? "",
                uniCode: item.uniCode ?? "",
              );
            },
            itemCount: features.length,
          ),
        ],
      ),
    );
  }

  Widget _buildFeature(
    AppTypography typography,
    AppColors colors,
    AppGradients gradients,
    bool isMobile, {
    required String title,
    required String value,
    required String uniCode,
  }) {
    int codePoint = int.parse(uniCode, radix: 16);
    return Container(
      padding: EdgeInsets.all(Dimens.mediumPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: gradients.purplePink.withOpacity(0.2),
        border: Border.all(color: colors.primary.withValues(alpha: .4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            String.fromCharCode(codePoint),
            style: typography.headlineSmall.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 16 : null,
            ),
          ),
          SizedBox(height: Dimens.mediumPadding),
          Text(
            title,
            style: typography.headlineSmall.copyWith(
              fontWeight: FontWeight.w500,
              color: colors.textPrimary,
              fontSize: isMobile ? 16 : null,
            ),
          ),
          SizedBox(height: Dimens.smallPadding),
          Text(
            value,
            style: typography.bodyMedium.copyWith(
              color: colors.textSecondary,
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 14 : null,
            ),
          ),
        ],
      ),
    );
  }
}
