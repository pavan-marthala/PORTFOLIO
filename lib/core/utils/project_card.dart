import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_container.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.imageheight,
    this.titleStyle,
    this.descriptionStyle,
    this.maxLines,
    this.onPressed,
    required this.projectModel,
  });
  final double imageheight;
  final ProjectModel projectModel;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final int? maxLines;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colors.surfaceDark,
          border: Border.all(color: colors.border),
        ),
        child: Column(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: imageheight,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(
                  projectModel.coverImage ??
                      'https://placehold.co/$imageheight',
                  height: imageheight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.network(
                      'https://placehold.co/$imageheight',
                      height: imageheight,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.largePadding,
                vertical: Dimens.mediumPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  GradientContainer(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    gradient: gradients.purplePink,
                    borderRadius: BorderRadius.circular(20),
                    child: Text(
                      projectModel.badge ?? 'Not Specified',
                      style: context.theme.appTypography.labelSmall.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  Text(
                    projectModel.title ?? 'Not Specified',
                    style:
                        titleStyle ??
                        typography.headlineMedium.copyWith(
                          color: colors.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    projectModel.excerpt ?? 'Not Specified',
                    style:
                        descriptionStyle ??
                        typography.titleMedium.copyWith(
                          color: colors.textSecondary,
                        ),
                    maxLines: maxLines ?? 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 8,
                          children: [
                            Icon(CupertinoIcons.calendar, color: colors.white),
                            Text(
                              DateFormat(
                                'MMM yyyy',
                              ).format(DateTime.parse(projectModel.date!)),
                              style: typography.titleMedium.copyWith(
                                color: colors.textSecondary,
                              ),
                              maxLines: maxLines ?? 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: gradients.purplePink,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: onPressed,
                            borderRadius: BorderRadius.circular(50),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Icon(
                                Icons.north_east,
                                color: colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
