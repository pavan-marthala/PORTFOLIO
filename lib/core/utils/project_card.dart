import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_container.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.imageheight,
    required this.label,
    required this.description,
    required this.title,
    this.titleStyle,
    this.descriptionStyle,
    this.maxLines,
    required this.date,
    this.onPressed,
  });
  final double imageheight;
  final String label;
  final String description;
  final String title;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final int? maxLines;
  final DateTime date;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    return Container(
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
              gradient: gradients.pinkPurple,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Icon(Icons.access_alarm),
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
                    label,
                    style: context.theme.appTypography.labelSmall.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                Text(
                  title,
                  style:
                      titleStyle ??
                      typography.headlineMedium.copyWith(
                        color: colors.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  description,
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
                            DateFormat('MMM yyyy').format(date),
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
                            child: Icon(Icons.north_east,color: colors.white,),
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
    );
  }
}
