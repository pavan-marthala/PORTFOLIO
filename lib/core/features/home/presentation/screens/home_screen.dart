import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/get_navigation.dart';
import 'package:portfolio_pavan/core/features/contact/presentation/screens/contact_screen.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/featured_project.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/live_news_banner.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/projects_widget.dart';
import 'package:portfolio_pavan/core/routes/app_routes.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_button.dart';
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
  bool isScrolling = false;
  Timer? _scrollStopTimer;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    /// Listen to scroll position changes directly
    _scrollController.addListener(() {
      /// Cancel any previous stop detection timer
      _scrollStopTimer?.cancel();

      /// User is scrolling now
      if (!isScrolling) {
        setState(() => isScrolling = true);
      }

      /// Start a timer to detect when scrolling stops
      _scrollStopTimer = Timer(const Duration(milliseconds: 300), () {
        if (isScrolling) {
          setState(() => isScrolling = false);
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollStopTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gradients = context.theme.appGradients;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: HomeAppBar(),
        body: SingleChildScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              LiveNewsBanner(),
              SizedBox(height: Dimens.largePadding),
              context.widthPx >= 600 ? Body() : BodyMobile(),
              SizedBox(height: Dimens.extraLargePadding),
            ],
          ),
        ),
        floatingActionButton: Container(
          key: const ValueKey('collapsed_button'),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: gradients.purplePink,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => Get.toNamed(AppRoutes().contact),
              borderRadius: BorderRadius.circular(50),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      const Icon(Icons.work, color: Colors.white),
                      if (!isScrolling)
                        Text(
                          "Hire Me",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
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
              fontWeight: FontWeight.bold,
            ),
            descriptionStyle: typography.bodySmall.copyWith(
              color: colors.textSecondary,
            ),
            maxLines: 3,
            imageheight: 200,
          ),
          ProjectsWidget(),
          QuickFacts(),
          ServicesOffered(),
          SizedBox(height: Dimens.extraLargePadding),
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
            Expanded(
              flex: 2,
              child: Column(
                spacing: Dimens.largePadding,
                children: [
                  FeaturedProject(),
                  ProjectsWidget(),
                  SizedBox(height: Dimens.extraLargePadding),
                ],
              ),
            ),
            Expanded(
              child: Column(
                spacing: Dimens.largePadding,
                children: [
                  QuickFacts(),
                  ServicesOffered(),
                  SizedBox(height: Dimens.extraLargePadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
