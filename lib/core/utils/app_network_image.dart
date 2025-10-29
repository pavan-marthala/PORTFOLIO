import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';
import 'package:portfolio_pavan/core/utils/gradient_container.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';
import 'package:shimmer/shimmer.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    super.key,
    required this.imageUrl,
    required this.fit,
    this.width,
    this.height,
    this.alignment = Alignment.center,
  });
  final String imageUrl;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    final colors = context.theme.appColors;
    final gradient = context.theme.appGradients;
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      height: height,
      alignment: alignment,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: colors.primary.withValues(alpha: 0.1),
        highlightColor: colors.primary.withValues(alpha: 0.3),
        child: Container(
          width: width ?? context.widthPx,
          height: height ?? context.heightPx,
          color: colors.primary,
        ),
      ),
      errorWidget: (context, url, error) => GradientContainer(
        width: width ?? context.widthPx,
        height: height ?? context.heightPx,
        gradient: gradient.primaryReverse,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, color: Colors.white, size: 36),
            const SizedBox(height: 6),
            Text(
              'Unable to load image : ${error.toString()}',
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
