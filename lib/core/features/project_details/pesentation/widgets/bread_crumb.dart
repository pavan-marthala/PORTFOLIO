import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

import '../../../home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';

class BreadCrumb extends StatelessWidget {
  const BreadCrumb({super.key, required this.projectModel});
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: Dimens.extraLargePadding,
        children: [
          _buildCrumb(
            typography,
            colors,
            title: 'CLIENT',
            value: projectModel.client ?? 'Not Specified',
          ),
          _buildCrumb(
            typography,
            colors,
            title: 'DURATION',
            value: projectModel.duration ?? 'Not Specified',
          ),
      
          _buildCrumb(
            typography,
            colors,
            title: 'COMPLETED',
            value: DateFormat(
              'MMM yyyy',
            ).format(DateTime.parse(projectModel.date!)),
          ),
          _buildCrumb(
            typography,
            colors,
            title: 'ROLE',
            value: projectModel.role ?? 'Not Specified',
          ),
          _buildCrumb(
            typography,
            colors,
            title: 'STATUS',
            value: projectModel.status ?? 'Not Specified',
          ),
          
          
        ],
      ),
    );
  }

  Widget _buildCrumb(
    AppTypography typography,
    AppColors colors, {
    required String title,
    required String value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: typography.labelMedium.copyWith(
            color: colors.textSecondary,
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: typography.bodyMedium.copyWith(
            color: colors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
