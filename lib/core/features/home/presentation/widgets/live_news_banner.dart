import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

class LiveNewsBanner extends StatelessWidget {
  const LiveNewsBanner
({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradients.purplePink
      ),
    );
  }
}