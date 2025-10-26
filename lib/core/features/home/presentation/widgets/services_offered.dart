import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/colors.dart';
import 'package:portfolio_pavan/core/theme/dimens.dart';
import 'package:portfolio_pavan/core/theme/gradients.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/theme/typography.dart';
import 'package:portfolio_pavan/core/utils/hover_card.dart';
import 'package:vector_math/vector_math_64.dart';

class ServicesOffered extends StatelessWidget {
  const ServicesOffered({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    return HoverCard(
      builder: (isHovered) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.largePadding,
            vertical: Dimens.mediumPadding,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: colors.surfaceDark,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '💼 Services Offered',
                style: typography.headlineSmall.copyWith(
                  color: colors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Dimens.mediumPadding),
              Container(
                height: 2,
                decoration: BoxDecoration(
                  color: context.theme.appColors.surfaceLight,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: gradients.purplePink,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimens.mediumPadding),
              _buildFact(
                typography,
                colors,
                gradients,
                title: 'Full-Stack Development',
                value: 'End-to-end mobile and backend solutions',
                uniCode: '💻',
              ),
              _buildFact(
                typography,
                colors,
                gradients,
                title: 'Mobile App Development',
                value:
                    'Cross-platform apps built with Flutter for iOS and Android',
                uniCode: '📱',
              ),
              _buildFact(
                typography,
                colors,
                gradients,
                title: 'DevOps Engineeringn',
                value:
                    'CI/CD pipelines, automation, and infrastructure management',
                uniCode: '⚙️',
              ),

              _buildFact(
                typography,
                colors,
                gradients,
                title: 'Cloud Architecture',
                value:
                    'Scalable deployment, cloud architecture, and cost optimization',
                uniCode: '☁️',
              ),

              _buildFact(
                typography,
                colors,
                gradients,
                title: 'Database Solutions',
                value:
                    'Design, optimization, and maintenance of SQL & NoSQL databases',
                uniCode: '🗄️',
              ),

              _buildFact(
                typography,
                colors,
                gradients,
                title: 'API Development',
                value: 'Secure and scalable RESTful APIs',
                uniCode: '🔗',
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFact(
    AppTypography typography,
    AppColors colors,
    AppGradients gradients, {
    required String title,
    required String value,
    required String uniCode,
  }) {
    return HoverCard(
      builder: (isHovered) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          transform: Matrix4.identity()
            ..scaleByVector3(
              Vector3(isHovered ? 1.02 : 1.0, isHovered ? 1.02 : 1.0, 1.0),
            ),
          curve: Curves.easeOut,
          margin: EdgeInsets.only(top: Dimens.mediumPadding),
          padding: EdgeInsets.all(Dimens.mediumPadding),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: gradients.purplePink.withOpacity(0.2),
            border: Border.all(color: colors.primary.withValues(alpha: .4)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                uniCode,
                style: typography.headlineSmall.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colors.textPrimary,
                ),
              ),
              SizedBox(height: Dimens.mediumPadding),
              Text(
                title,
                style: typography.headlineSmall.copyWith(
                  fontWeight: FontWeight.w500,
                  color: colors.textPrimary,
                ),
              ),
              SizedBox(height: Dimens.smallPadding),
              Text(
                value,
                style: typography.bodyMedium.copyWith(
                  color: colors.textSecondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
