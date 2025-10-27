import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:portfolio_pavan/core/features/home/data/repository/projects_data.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../../../../routes/app_routes.dart';
import '../../../../utils/project_card.dart';
import '../../../project_details/pesentation/screeens/project_screen.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.widthPx < 600;
    final typography = context.theme.appTypography;
    final colors = context.theme.appColors;
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: isMobile ? 1 : 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      itemBuilder: (context, index) {
        var item = projects[index];
        return ProjectCard(
          projectModel: item,
          imageheight: isMobile ? 200 : 250,
          maxLines: isMobile ? 3 : 4,
          onPressed: () {
            Get.toNamed(AppRoutes().project, arguments: item);
          },
          titleStyle: isMobile
              ? typography.bodyLarge.copyWith(
                  color: colors.textPrimary,
                  fontWeight: FontWeight.bold,
                )
              : null,
          descriptionStyle: isMobile
              ? typography.bodySmall.copyWith(color: colors.textSecondary)
              : null,
        );
      },
      itemCount: projects.length,
    );
  }
}
