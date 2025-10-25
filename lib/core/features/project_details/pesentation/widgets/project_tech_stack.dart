import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/gradients.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../../../../theme/dimens.dart';

class ProjectTechStack extends StatelessWidget {
  const ProjectTechStack({super.key, required this.techStack});
  final List<TechStack> techStack;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
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
            "🛠️ Technology Stack",
            style: typography.headlineMedium.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
               fontSize: isMobile ? 22 : null,
            ),
          ),
           MasonryGridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount:isMobile?2: 4,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            itemBuilder: (context, index) {
              var item = techStack[index];
              return _buildTech(
                typography,
                colors,
                gradients,
                isMobile,
                title: item.title ?? "",
                uniCode: item.uniCode ?? "",
              );
            },
            itemCount: techStack.length,
          ),
        ],
      ),
    );
  }
    Widget _buildTech(
    AppTypography typography,
    AppColors colors,
    AppGradients gradients,
    bool isMobile, {
    required String title,
    required String uniCode,
  }) {
    int codePoint = int.parse(uniCode, radix: 16);
    return Container(
      padding: EdgeInsets.all(Dimens.mediumPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: gradients.primaryVertical.withOpacity(0.2),
        border: Border.all(color: colors.primary.withValues(alpha: .4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(String.fromCharCode(codePoint),
          style: typography.headlineSmall.copyWith(
              fontWeight: FontWeight.bold,
               fontSize: isMobile ? 16 : null,
            ),),
          SizedBox(height: Dimens.mediumPadding),
          Text(
            title,
            style: typography.headlineSmall.copyWith(
              fontWeight: FontWeight.w500,
              color: colors.textPrimary,
              fontSize: isMobile ? 16 : null,
              
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
