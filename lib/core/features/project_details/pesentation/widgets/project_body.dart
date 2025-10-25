import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/bread_crumb.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_content.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_container.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import 'project_content_mobile.dart';

class ProjectBody extends StatelessWidget {
  const ProjectBody({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    final imageHeight = context.widthPx > 600 ? 500.0 : 300.0;
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.largePadding,
              vertical: Dimens.largePadding + 80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GradientContainer(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  gradient: gradients.purplePink,
                  borderRadius: BorderRadius.circular(20),
                  child: Text(
                    projectModel.badge!.toUpperCase(),
                    style: context.theme.appTypography.labelMedium.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(height: Dimens.mediumPadding),
                Text(
                  projectModel.title ?? 'Not Specified',
                  style: typography.headlineLarge.copyWith(
                    color: colors.textPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 5,
                ),
                SizedBox(height: Dimens.mediumPadding),
                Text(
                  projectModel.excerpt ?? 'Not Specified',
                  style: typography.titleLarge.copyWith(
                    color: colors.textSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
                SizedBox(height: Dimens.largePadding),
                Divider(color: colors.border.withValues(alpha: .5)),
                SizedBox(height: Dimens.mediumPadding),
                BreadCrumb(projectModel: projectModel),
                SizedBox(height: Dimens.mediumPadding),
                Divider(color: colors.border.withValues(alpha: .5)),
                SizedBox(height: Dimens.largePadding),
                buildCoverImage(imageHeight, colors),
                SizedBox(height: Dimens.largePadding),
                context.widthPx >= 600
                    ? ProjectContent(projectModel: projectModel)
                    : ProjectContentMobile(projectModel: projectModel),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildCoverImage(double imageHeight, AppColors colors) {
    return Container(
      height: imageHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: colors.primary.withValues(alpha: 0.3),
            blurRadius: 50,
            offset: Offset(12, 12),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          projectModel.coverImage ?? 'https://placehold.co/$imageHeight',
          height: imageHeight,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Image.network(
              'https://placehold.co/$imageHeight',
              height: imageHeight,
              width: double.infinity,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
