import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_pavan/core/features/contact/presentation/screens/contact_screen.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/featured_project.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/live_news_banner.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/projects_widget.dart';
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
  bool isGoingDown = false;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!isGoingDown) setState(() => isGoingDown = true);
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (isGoingDown) setState(() => isGoingDown = false);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gradients = context.theme.appGradients;

    return Scaffold(
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
      floatingActionButton: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) =>
            ScaleTransition(scale: animation, child: child),
        child: isGoingDown
            ? GradientButton(
                key: const ValueKey('hire_button'),
                text: 'Hire Me',
                gradient: context.theme.appGradients.purplePink,
                icon: Icon(Icons.work, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactScreen()),
                  );
                },
              )
            : Container(
                key: const ValueKey('arrow_button'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: gradients.purplePink,
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactScreen(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(50),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Icon(Icons.work, color: Colors.white),
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
                spacing: Dimens.largePadding,children: [FeaturedProject(), ProjectsWidget()]),
            ),
            Expanded(
              child: Column(
                spacing: Dimens.largePadding,
                children: [QuickFacts(), ServicesOffered()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
