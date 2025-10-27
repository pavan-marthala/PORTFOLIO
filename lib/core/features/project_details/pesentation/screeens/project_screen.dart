import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_app_bar.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_body.dart';

import '../../../../utils/gradient_background_painter.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: GradientBackgroundPainter(), child: Container()),
          Stack(
            alignment: Alignment.center,
            children: [
              ProjectBody(projectModel: Get.arguments),
              ProjectAppBar(),
            ],
          ),
        ],
      ),
    );
  }
}
