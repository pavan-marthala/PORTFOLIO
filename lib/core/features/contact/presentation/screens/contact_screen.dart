import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/contact/presentation/widgets/contact_content.dart';
import 'package:portfolio_pavan/core/features/contact/presentation/widgets/stats.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_container.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../../../../utils/gradient_background_painter.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    final isMobile = context.widthPx < 600;
    final isTab = context.widthPx >= 600 && context.widthPx < 1024;
    final isDesktop = context.widthPx >= 1024;
    final titleStyle = isMobile
        ? typography.headlineMedium
        : isTab
        ? typography.displayMedium
        : typography.displayLarge;
    final descriptionStyle = isMobile
        ? typography.bodyMedium
        : isTab
        ? typography.bodyLarge
        : typography.headlineSmall;
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: GradientBackgroundPainter(), child: Container()),
          Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: context.heightPx,
                maxWidth: 1200,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(Dimens.largePadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: Dimens.extraLargePadding + Dimens.mediumPadding,
                    ),
                    Center(
                      child: GradientContainer(
                        gradient: gradients.purplePink,
                        padding: EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        child: Text(
                          "📬 Get In Touch",
                          style: typography.labelLarge.copyWith(
                            color: colors.white,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: Dimens.extraLargePadding),
                    Text(
                      "Let's Create Something Amazing Together",
                      textAlign: TextAlign.center,
                      style: titleStyle.copyWith(
                        color: colors.textPrimary,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: Dimens.mediumPadding),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: isDesktop
                            ? context.widthPx * 0.6
                            : context.widthPx,
                      ),
                      child: Text(
                        "Have a project in mind? Looking for a developer to bring your vision to life? I'm always excited to discuss new opportunities and collaborate on innovative projects.",
                        textAlign: TextAlign.center,
                        style: descriptionStyle.copyWith(
                          color: colors.textSecondary,
                          height: 1.6,
                        ),
                      ),
                    ),
                    const SizedBox(height: Dimens.extraLargePadding),
                    Stats(),
                    const SizedBox(height: Dimens.extraLargePadding),
                    ContactContent(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
