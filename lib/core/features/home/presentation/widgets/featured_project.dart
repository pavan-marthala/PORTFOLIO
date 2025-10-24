import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';

import '../../../../utils/project_card.dart';

class FeaturedProject extends StatefulWidget {
  const FeaturedProject({super.key});

  @override
  State<FeaturedProject> createState() => _FeaturedProjectState();
}

class _FeaturedProjectState extends State<FeaturedProject> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.largePadding),
      child: ProjectCard(
        imageheight: 200,
        label: "Featured Project",
        title: "Revolutionary E-Commerce Platform Transforms Online Shopping Experience",
        description: "A cutting-edge full-stack e-commerce solution featuring real-time inventory management, AI-powered recommendations, and seamless payment integration. Built with React, Node.js, and MongoDB, serving 100K+ users with 99.9% uptime and lightning-fast performance.",
        maxLines: 4,
        date: DateTime.now(),
        onPressed: (){},
      ),
    );
  }
}