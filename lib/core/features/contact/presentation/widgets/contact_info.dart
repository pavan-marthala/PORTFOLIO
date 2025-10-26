import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';
import 'package:portfolio_pavan/core/utils/asset_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vector_math/vector_math_64.dart';
import '../../../../theme/dimens.dart';
import '../../../../utils/hover_card.dart';
import '../../../../utils/hover_text_button.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;

    return Column(
      spacing: Dimens.largePadding,
      children: [
        buildInfo(
          colors,
          typography,
          title: 'Email Me',
          content:
              "Prefer email? Send me a direct message and I'll respond within 24 hours.",
          svgAsset: mail,
          semanticsLabel: 'Send Email',
          contact: 'mgpavank@gmail.com',
          onTap: () {
            launchUrl(
              Uri(
                scheme: 'mailto',
                path: 'mgpavank@gmail.com',
                query: encodeQueryParameters(<String, String>{
                  'subject': 'Example Subject & Symbols are allowed!',
                }),
              ),
            );
          },
        ),
        buildInfo(
          colors,
          typography,
          title: 'LinkedIn',
          content:
              "Connect with me professionally and view my complete work history.",
          svgAsset: linkedin,
          semanticsLabel: 'View LinkedIn Profile',
          contact: 'linkedin.com/in/pavan-marthala36',
          onTap: () {
            launchUrl(
              Uri.parse('https://www.linkedin.com/in/pavan-marthala36'),
            );
          },
        ),
        buildInfo(
          colors,
          typography,
          title: 'GitHub',
          content:
              "Check out my open-source contributions and personal projects.",
          svgAsset: github,
          semanticsLabel: 'View GitHub Profile',
          contact: 'github.com/pavan-marthala',
          onTap: () {
            launchUrl(Uri.parse('https://github.com/pavan-marthala'));
          },
        ),
        buildInfo(
          colors,
          typography,
          title: 'Schedule a Call',
          content:
              "Want to discuss a project or just have a chat? Schedule a call with me at your convenience.",
          svgAsset: phone,
          semanticsLabel: 'Schedule a Call',
          contact: '9550010542',
          onTap: () {
            launchUrl(Uri(scheme: 'tel', path: '+919550010542'));
          },
        ),
      ],
    );
  }

  Widget buildInfo(
    AppColors colors,
    AppTypography appTypography, {
    required String title,
    required String content,
    required String contact,
    required String svgAsset,
    required String semanticsLabel,
    required VoidCallback onTap,
  }) {
    return HoverCard(
      builder: (isHovered) => AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        transform: Matrix4.identity()
          ..scaleByVector3(
            Vector3(isHovered ? 1.02 : 1.0, isHovered ? 1.02 : 1.0, 1.0),
          ),
        curve: Curves.easeOut,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colors.surfaceDark.withValues(alpha: .8),
          border: Border.all(color: colors.border),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: colors.primary.withValues(alpha: 0.5),
                    blurRadius: 20,
                    offset: const Offset(0, 6),
                  ),
                ]
              : [],
        ),
        padding: const EdgeInsets.all(Dimens.extraLargePadding),
        child: Column(
          spacing: Dimens.mediumPadding,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(svgAsset, height: 46, width: 46),
            Text(
              title,
              style: appTypography.headlineSmall.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              content,
              style: appTypography.titleSmall.copyWith(
                color: colors.textSecondary,
              ),
            ),
            Text(
              contact,
              style: appTypography.titleMedium.copyWith(
                color: colors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            HoverTextButton(
              label: semanticsLabel,
              onTap: onTap,
              color: colors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map(
        (MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
      )
      .join('&');
}
