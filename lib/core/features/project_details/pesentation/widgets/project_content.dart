import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_features.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_overview.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_stats.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_tags.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_tech_stack.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/prokect_challenge.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/similar_work.dart';

import '../../../../theme/dimens.dart';
import 'project_links.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({super.key, required this.projectModel});
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: Dimens.largePadding,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            spacing: Dimens.extraLargePadding,
            children: [
              ProjectOverview(
                overview: projectModel.overview ?? "Not Avalible",
              ),
              ProkectChallenge(challenge: projectModel.challenge!),
              ProjectFeatures(features: projectModel.features ?? []),
              ProjectTechStack(techStack: projectModel.techStack ?? []),
              
            ],
          ),
        ),
        Expanded(
          child: Column(
            spacing: Dimens.extraLargePadding,
            children: [
              ProjectStats(stats: projectModel.stats ?? []),
              ProjectTags(tags: projectModel.tags ?? []),
              ProjectShareLinks(links: projectModel.projectLinks ?? []),
              SimilarWork()
            ],
          ),
        ),
      ],
    );
  }
}
