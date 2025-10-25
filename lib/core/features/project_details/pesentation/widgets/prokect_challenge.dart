import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

import '../../../../theme/dimens.dart';

class ProkectChallenge extends StatelessWidget {
  const ProkectChallenge({super.key, required this.challenge});
  final Challenge challenge;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final typography = context.theme.appTypography;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colors.surfaceDark,
        border: Border.all(color: colors.border),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.largePadding,
        vertical: Dimens.extraLargePadding,
      ),
      child: Column(
        spacing: Dimens.largePadding,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "🎯 The Challenge",
            style: typography.headlineMedium.copyWith(
              color: colors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (challenge.title != null)
            Text(
              challenge.title ?? "",
              style: typography.titleMedium.copyWith(color: colors.textPrimary),
            ),
          ...((challenge.challenges ?? []).map<Widget>((e) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("  •  ",
                style: typography.titleMedium.copyWith(
                      color: colors.textPrimary,
                    ),), 
                Expanded(
                  child: Text(
                    e,
                    style: typography.titleMedium.copyWith(
                      color: colors.textPrimary,
                    ),
                  ),
                ),
              ],
            );
          }).toList()),

          Text(
            challenge.footer ?? "",
            style: typography.titleMedium.copyWith(color: colors.textPrimary),
          ),
        ],
      ),
    );
  }
}
