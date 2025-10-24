import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/featured_project.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/home_app_bar_mobile.dart';
import 'package:portfolio_pavan/core/features/home/presentation/widgets/live_news_banner.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../widgets/home_app_bar.dart';

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
        child: Column(
          children: [
            SizedBox(height: Dimens.base,),
            LiveNewsBanner(),
            SizedBox(height: Dimens.extraLargePadding,),
            FeaturedProject(),
          ],
        ),
      ),
    );
  }
}
