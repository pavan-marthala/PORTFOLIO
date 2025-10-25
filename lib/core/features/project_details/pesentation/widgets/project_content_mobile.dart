import 'package:flutter/material.dart';

import '../../../../theme/dimens.dart';
import '../../../home/data/models/project_model.dart';
import 'project_features.dart';
import 'project_links.dart';
import 'project_overview.dart';
import 'project_stats.dart';
import 'project_tags.dart';
import 'project_tech_stack.dart';
import 'prokect_challenge.dart';
import 'similar_work.dart';

class ProjectContentMobile extends StatelessWidget {
  const ProjectContentMobile({super.key, required this.projectModel});

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: Dimens.mediumPadding,
      children: [
        ProjectOverview(overview: projectModel.overview ?? "Not Avalible"),
        ProkectChallenge(challenge: projectModel.challenge!),
        ProjectFeatures(features: projectModel.features ?? []),
        ProjectTechStack(techStack: projectModel.techStack ?? []),
        ProjectStats(stats: projectModel.stats ?? []),
        ProjectTags(tags: projectModel.tags ?? []),
        ProjectShareLinks(links: projectModel.projectLinks ?? []),
        SimilarWork(),
      ],
    );
  }
}
