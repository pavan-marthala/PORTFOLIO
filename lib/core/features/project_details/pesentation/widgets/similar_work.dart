import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/get_navigation.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_container.dart';

import '../../../../routes/app_routes.dart';
import '../../../contact/presentation/screens/contact_screen.dart';

class SimilarWork extends StatelessWidget {
  const SimilarWork({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    return GradientContainer(
      width: double.infinity,
      gradient: gradients.purplePink,
      borderRadius: BorderRadius.circular(12),
      padding: EdgeInsets.all(Dimens.extraLargePadding),
      child: Column(
        spacing: Dimens.smallPadding,
        children: [
          Text(
            "Interested in Similar \nWork?",
            style: typography.headlineSmall.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Let's discuss how I can help bring your vision to life with cutting-edge technology.",
            style: typography.bodyMedium.copyWith(color: colors.textPrimary),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Dimens.mediumPadding),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoutes().contact);
            },
            borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.extraLargePadding,
                vertical: Dimens.smallPadding + 4,
              ),
              decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Get in Touch",
                style: typography.titleMedium.copyWith(
                  color: colors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
