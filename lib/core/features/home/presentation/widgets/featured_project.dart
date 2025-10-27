import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_pavan/core/features/home/data/repository/projects_data.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/screeens/project_screen.dart';
import 'package:portfolio_pavan/core/routes/app_routes.dart';
import '../../../../utils/project_card.dart';

class FeaturedProject extends StatelessWidget {
  const FeaturedProject({
    super.key,
    this.titleStyle,
    this.descriptionStyle,
    this.maxLines = 4,
    this.imageheight = 300,
  });

  final int? maxLines;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  final double imageheight;
  @override
  Widget build(BuildContext context) {
    return ProjectCard(
      projectModel: featuredProject,
      imageheight: imageheight,
      maxLines: maxLines,
      onPressed: () {
        Get.toNamed(AppRoutes().project, arguments: featuredProject);
      },
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
    );
  }
}
