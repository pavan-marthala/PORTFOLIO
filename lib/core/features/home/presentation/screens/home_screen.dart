import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/featured_project.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/home_app_bar_mobile.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/live_news_banner.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/quick_facts.dart';
import '../widgets/services_offered.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.widthPx >= 600 ? HomeAppBar() : HomeAppBarMobile(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            LiveNewsBanner(),
            SizedBox(height: Dimens.largePadding),
            context.widthPx >= 600 ? Body() : BodyMobile(),
            SizedBox(height: Dimens.extraLargePadding),
          ],
        ),
      ),
    );
  }
}

class BodyMobile extends StatelessWidget {
  const BodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = context.theme.appTypography;
    final colors = context.theme.appColors;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.largePadding),
      child: Column(
        spacing: Dimens.mediumPadding,
        children: [
          FeaturedProject(
            titleStyle: typography.bodyLarge.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
            descriptionStyle: typography.bodySmall.copyWith(
              color: colors.textSecondary,
            ),
            maxLines: 3,
            imageheight: 200,
          ),
          QuickFacts(),
          ServicesOffered(),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1200),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.largePadding),
        child: Row(
          spacing: Dimens.largePadding,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: Column(children: [FeaturedProject()])),
            Expanded(
              child: Column(
                spacing: Dimens.extraLargePadding,
                children: [QuickFacts(), ServicesOffered()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
