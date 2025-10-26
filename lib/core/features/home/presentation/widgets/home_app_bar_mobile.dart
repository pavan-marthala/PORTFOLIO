import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_text.dart';

import '../../../../utils/check_platforms.dart';

class HomeAppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    final gradients = context.theme.appGradients;
    return AppBar(
      toolbarHeight: preferredSize.height,
      backgroundColor: colors.background,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.largePadding,
            vertical: PlatformChecker.isWeb()
                ? Dimens.largePadding
                : Dimens.padding,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [colors.surfaceLight, colors.background],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              GradientText(
                'Pavan Kalyan Reddy M',
                gradient: gradients.rainbow,
                style: typography.displayLarge.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Your Portfolio. Your Story. Breaking Daily.',
                style: typography.bodySmall.copyWith(
                  color: colors.textSecondary,
                  letterSpacing: 2,
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(PlatformChecker.isWeb() ? 100 : 80);
}
